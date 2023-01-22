#largest no. program
# def largest_num (arr)
#     count = 0
#     large = arr[0]
#     while count < arr.size
#         if large < arr[count]
#             large = arr[count]
#         end
#     count += 1
#     end
#     large
# end
# puts largest_num([1,2,3,4])
  

#smallest no.program =>
# def smallest_num(arr)
#     count = 0
#     small = arr[0]
#     while count < arr.size
#         if small > arr[count]
#             small = arr[count]
#         end
#         count += 1
#     end
#     small
# end
# puts smallest_num([1,2,3,4])


# second smallest num program
# def second_smallest_num(arr)
#     min = arr[1]
#     second = 0
#     for i in 0..arr.length-1
#         if arr[i] < min
#             second = min
#             min = arr[i]
#         elsif arr[i] < second
#             second = arr[i]
#         end
#     end
#     return second
# end
# puts second_smallest_num([1,2,3,4])


#  second_largest_num program
# def second_largest_num(arr)
#     min = arr[1]
#     second = 0
#     for i in 0..arr.length - 1
#         if arr[i] > min
#             second = min
#             min = arr[i]
#         end
#     end
#     return second
# end
# puts second_largest_num([1,2,3,4])

# --------------------------------------------------------------------------------

# first example 
# Ruby program of mixins

# module consist 2 methods
module G
	def g1
        puts "Gg1"
    end
    def g2
        puts "Gg2"
    end
end

# module consist 2 methods
module GFG
    def gfg1
        puts "gfg1"
    end
    def gfg2
        puts "gfg2"
    end
end

# Creating a class
class GeeksforGeeks
    include G
    include GFG
    def s1
        puts "GeeksforGeeks"
    end
end

# Creating object
gfg = GeeksforGeeks.new

# Calling methods
gfg.g1
gfg.g2
gfg.gfg1
gfg.gfg2
gfg.s1

# -------------------------------------------------------------------

# Modules consist a method
module Child_1
    def a1
    puts 'This is Child one.'
    end
end
module Child_2
    def a2
    puts 'This is Child two.'
    end
end
module Child_3
    def a3
    puts 'This is Child three.'
    end
end
    
    # Creating class
    class Parent
        include Child_1
        include Child_2
        include Child_3
        def display
            puts 'Three modules have included.'
        end
    end
    
    # Creating object
    object = Parent.new
    
    # Calling methods
    object.display
    object.a1
    object.a2
    object.a3
# ---------------------------------------------------------------------------
# check string pallindrom or not
def check_string_pallindrom(str)
    i = ''
    j = str.length
    while j > 0
        j -= 1
        i += str[j]
    end
    if str == i 
        puts "pallindrom"
    else 
        puts "not pallindrom"
    end
end
puts check_string_pallindrom('peepa')
#---------------------------------------------------------------------

# Namespace program
# Ruby program to illustrate namespace

# The main namespace
module Geek
	class GeeksforGeeks
		attr_reader :gfg
		def initialize(value)
			@gfg = value
		end
	end
	
	# Hierarchical namespace
	module Geek_1
	
	# Reuse of the class names
	class GeeksforGeeks
		@@var = "This is the module Geek_1 " +
				"and class GeeksforGeeks"
		def printVar()
			puts @@var
		end
	end
	end
	
	# Hierarchical namespace
	module Geek_2
	
	# Reuse of the class names
	class GeeksforGeeks
		attr_reader :var
		def initialize(var)
		@var = var
		end
	end
	end
end

obj_gfg = Geek::GeeksforGeeks.new("This is the module Geek " +
								"and class GeeksforGeeks")
obj_gfg1 = Geek::Geek_1::GeeksforGeeks.new()
obj_gfg2 = Geek::Geek_2::GeeksforGeeks.new("This is the module Geek_2 " +
										"and class GeeksforGeeks")
puts obj_gfg.gfg
puts obj_gfg1.printVar()
puts obj_gfg2.var





