#Input: String and a Delimiter
#Output: Hash of names in keys and Group assignment in value
#Steps:
# => Use the appropriate delimiter to split the list of names into the keys of a hash
# => Set default values to whatever next to each name
# => Count the array to see how many people there are (N)
# => Decide how many groups there will be
# => The above will require trying combinations of groups of 5, 4, and 3
# => If the number of people can be split evenly into groups of 5 or 4, do so
# => If not, try all combinations of groups of 5 and 4
# => If that still doesn't work, introduce groups of 3 into the loop
# => Add up the resultant groups of 5, 4, and 3 people
# => Load an array a team number assignment for each person (if there are 4 teams of 5 and 3 teams of 4, there should be 32 elements in the array.  Team numbers 1-7.  1-4 will occur 5 times each, 5-7 occur 4 times each)
# => pop a random index from the assignment array (rand(1..array.count)) and simultaneously load it into each value next to people's names in the hash
# => the team array should be empty, and the assign hash is complete
# => print team names

# def groups(list_of_names, delimiter)
# 	assign = {}
# 	names_array = list_of_names.split(delimiter)
# 	names_array.each {|name| assign[name] = 0}
# 	n = assign.count
# 	grps_of_5 = n / 5
# 	grps_of_4 = 0
# 	grps_of_3 = 0
# 	group_count = grps_of_5 + grps_of_4 + grps_of_3
# 	r = n%5
# 	if r = 0
# 		group_count = group_count
# 	elsif (grps_of_5 * 5 + r) > 15
# 		grps_of_5 = grps_of_5 - (4 - r)
# 		grps_of_4 = (n - (grps_of_5 * 5))/4
# 	else 
# 		p "You don't need a method to do this for you"
# end

groups_hash = {}
names_hash = {}

def groups(list_of_names, delimiter, groups_hash, names_hash)
	assigned = {}
	names_array = list_of_names.split(delimiter)
	names_array = names_array.shuffle!
	group_num = 1
	while ((names_array.count >= 10) || (names_array.count % 5 == 0)) #makes as many groups of 5 until the remaining number of people is getting too small
		assigned["Group #{group_num}"] = names_array.slice(0..4)
		names_array = names_array.drop(5)
		group_num += 1
	end
	if names_array.count > 0 #only needed if the original groups of 5 didn't drain the list
		if names_array.count % 4 == 0 #checks for 8 people that can be split into 2 groups of 4
			while names_array.count > 0
				assigned["Group #{group_num}"] = names_array.slice(0..3)
				names_array = names_array.drop(4)
				group_num += 1
			end
		elsif names_array.count % 3 == 0 #checks for 6 people that can be split into 2 groups of 3 and then adjusted to 4 people using earlier groups
			counter = 1 #used in line 62 to level off these smaller groups so long as the larger population had earlier, larger groups
			while names_array.count > 0
				assigned["Group #{group_num}"] = names_array.slice(0..2)
				names_array = names_array.drop(3)
				assigned["Group #{group_num}"] << assigned["Group #{counter}"].delete_at(4) #moves 1 person from Groups 1 and 2 to these group
				group_num += 1
				counter += 1
			end
		elsif names_array.count / 4 == 2 #checks for 9 people
				assigned["Group #{group_num}"] = names_array.slice(0..3)
				names_array = names_array.drop(4)
				group_num += 1
				assigned["Group #{group_num}"] = names_array #places final 5 people into the last group
		else names_array.count / 4 == 1 #checks for 7
				assigned["Group #{group_num}"] = names_array.slice(0..2)
				names_array = names_array.drop(3)
				assigned["Group #{group_num}"] << assigned["Group 1"].delete_at(4) #moves 1 person from Group 1 to this group
				group_num += 1
				assigned["Group #{group_num}"] = names_array #places final 4 people into the last group
		end
	end
	assigned.each {|key, value| groups_hash[key] = value.compact}
	assigned.each {|key, value| value.compact.each {|value| names_hash[value] = key}}
	# p assigned.each {|grp, names| p grp + ': ' + names.join(', ')}
end

#groups('a_b_c_d_e_f_g_h_i_j_k_l_m_n_o_p_q_r_s_t_u_v_w_x_y_z_aa_bb_cc_dd_ee_ff_gg_hh_ii_jj_kk_ll_mm_nn_oo_pp_qq_rr_ss_tt_uu_vv_ww_xx_yy_zz', '_', groups_hash, names_hash)
groups('1_2_3_4_5_6', '_', groups_hash, names_hash)
puts groups_hash.each {|grp, names| p grp + ': ' + names.join(', ')}
puts names_hash.each {|name, grp| p "#{name} is in #{grp}"}


=begin

REFLECTIONS
1. What was the most interesting and most difficult part of this challenge?
A: The most difficult part was trying to maximize the number of groups of 5 and 4.  I REALLY wanted
to create a linear function num_of_people = 5x + 4y + 3z and have Ruby calculate the max values of 
x and y for any num_of_people.  But I had no idea how to do this even with some searching.
So you get the ugly mess of if thens above, that prioritizes 5s, then 4s, and then bumps 3s to 4s where
possible.  Notice though that if you only feed it 6, it still outputs clean groups of 3.  If you only
put a list of 3 people, then you will get one group of 3.

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?
A: Yes, but I also feel like my math brain wanting to examine all possible pathways is kicking in once I'm 
starting the code.  I end up trying alot of possibilities beyond my pseudocode.

3. Was your approach for automating this task a good solution? What could have made it even better?
A: My solution does the job thoroughly and maximizes the desired group size.  But it's so dense.
Using a linear function to determine the perfect number of groups would be the slickest solution to this
problem.  You wouldn't need any if/else loops whatsoever, just a shuffle and then a couple itirations over the
initial hash to load the output hashes.

4. What data structure did you decide to store the accountability groups in and why?
A: I went with hashes because order wasn't important after you shuffle the list of names.
I did use arrays within the groups hash to hold the list of names.  
I also loaded two separate hashes to accomodate whichever method someone may want to use: printing
by group, or printing by name.


5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
A: A ton.  I spent way too long on this problem because I'm OCD.  And it was painful because I know there
are WAY cleaner solutions to this problem out there.  I loved using .shuffle and .compact though.  Those
were such quick wins within my larger method.

=end
















