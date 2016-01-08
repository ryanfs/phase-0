# Start with a large group of people
# Sort them into accountability groups of 4 or 5 people each
# Make sure everyone is in at least a group of 3.

# Array of all people
# access four people at a time
# array.each_slice(4).to_a
# that method slices the array into chunks of four, and returns them as an array of new arrays
# check to make sure none of the groups are less than 3
# if they are, split them apart, and distribute them to three different groups

people = ['John Seo',
'Aaron Hu',
'Adam Pinsky',
'Akeem Street',
'Alex Forger',
'Andrew Kim',
'Baron Kwan',
'Brian Bier',
'Byron Gage',
'Carl Conroy',
'Charlie Bliss',
'Christopher Bunkers',
'Cody Kendall',
'Coline Forde',
'David Valencia',
'Emily Bosakowski',
'Everett Golden',
'Hagai Zwick',
'Heather C',
'Ian Wudarski',
'Ieronim Oltean',
'Jake Hamilton',
'James Boyd',
'Jasmeet Chatrath',
'Jenna El-Amin',
'Jerrie Evans',
'Joe Case',
'Jonathan Case',
'Jonathan Schwartz',
'Jonathan Silvestri',
'Kathryn Garbacz',
'Ian Kinner',
'Kyle Cierzan',
'Kyle Zelman',
'Linda Oanh Ho',
'Yiorgos Makridakis',
'Matt Harris',
'Matthew Baquerizo',
'Menuka Samaranayake',
'Michael Pintar',
'Mollie Stein',
'Lydia Nash',
'Aaron Opsahl',
'Peter Leong',
'Peter Stratoudakis',
'Prince Sadie',
'Ryan F. Salerno',
'Sanderfer Chau',
'Sarah Finken',
'EMMET SUSSLIN',
'Sydney Rossman-Reich',
'Eric Tenza',
'Thomas Yancey',
'Tim Kelly',
'Timothy Beck',
'Tyler Doerschuk',
'straggler 1',
'straggler 2'
]

people = people.shuffle

def group(array)
  groups = array.each_slice(4).to_a
  return groups
end

def distribute_stragglers(groups)
  groups.each do |group|
    if group.length < 3
      i = 0
      while i <= group.length
        groups[i].push(group[i])
        i += 1
      end
    end
  end
  groups.pop
  return groups
end



## Complexity
#added the .shuffle method to the people array

#Store past outputs
# skipping this one - not sure how to do that

# If someone leaves the cohort, my script will hold up, even without refactoring!

# How do I decide that I'm done? Right now it meets the criteria, so I'm done.


## Reflection

#What was the most interesting and most difficult part of this challenge?
## Thinking it through and discovering the .each_slice method was a game changer
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
## Yeah I'm getting better at that and breaking the problem into smaller, googleable parts
#Was your approach for automating this task a good solution? What could have made it even better?
## I think my initial go at it was the best solution I could come up with
#What data structure did you decide to store the accountability groups in and why?
## I stored them as arrays inside of an array because it was the easiest to split up
#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
## I did! I learned the .shuffle method


groups = (group(people))

p distribute_stragglers(groups)