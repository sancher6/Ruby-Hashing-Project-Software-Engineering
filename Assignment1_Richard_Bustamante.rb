require 'pp'
require './Set.rb'
require './Subscriber.rb'

class Main
    files = Array.new
    x = true; 
    #case statement for the possible selections
    while x == true
        puts "Please Select from the below options by entering a Number: "
    
        #below are all the menu options 
        puts "1. Input a Set "
        puts "2. Add an Element to the Set "
        puts "3. Find the Union of two Sets "
        puts "4. Find the Intersection of two Sets "
        puts "5. Find the Cartesian Product of two Sets "
        puts "6. Display a set on the Screen "
        puts "7. Check if a Set is Empty "
        puts "8. Check if a Set is Full "
        puts "9. Quit"
        #gets your selection and chomps any whitespace on the end
        selection = gets.chomp
        case selection
            #Input a Set 
            when "1"
                puts "You have selected to Input a Set "
                puts "Please enter a filename from which to input to the Set "
                filename = gets.chomp
                set = Set.new(filename)
                files.push(set)
                #calls to the read_file method in the Set class
                files[files.length - 1].read_file
                puts "Enter 'continue' if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Add Element to Set 
            when "2"
                if(files.length == 0)
                    puts "You haven't input any Sets yet!!"
                    puts "Please input a Set with option #1 in the Menu"
                else
                    puts "You have selected Add an Element to the Set "
                    if(files.length == 1)
                        puts "Please Enter the Account Number "
                        acc = gets.chomp
                        puts "Please Enter the Full Name of the Subscriber "
                        name = gets.chomp
                        files[0].add_element(name,acc)
                    else
                        puts "Please Specify the filename that you would like to add an element to"
                        filename = gets.chomp 
                        #looks for filename within the array of filenames
                        for i in 0..files.length-1
                            if(files[i].filenames == filename)
                                break
                            end
                        end
                        puts "Please Enter the Account Number "
                        acc = gets.chomp
                        puts "Please Enter the Full Name of the Subscriber "
                        name = gets.chomp
                        #calls to the add_element method in the Set Class
                        files[i].add_element(acc,name)
                    end
                end
                puts "Enter continue if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Find the Union 
            when "3"
                if(files.length == 0)
                    puts "You haven't input any Sets yet!!"
                    puts "Please input a Set with option #1 in the Menu"
                else
                    puts "You have selected to find the Union of two Sets"
                    if(files.length == 1)
                            puts "Please enter a second filename from which to input to the Set"
                            filename = gets.chomp
                            set = Set.new(filename)
                            files.push(set)
                            files[files.length - 1].read_file
                            #calls to the union method in the Set class
                            files[0].union(files[files.length - 1])
                    else
                        puts "Please enter the name of the first file for your comparison :"
                        filename = gets.chomp
                        puts "Please enter the name of the second file for your comparison :"
                        filename2 = gets.chomp
                        #looks for filename within the array of filenames
                        for i in 0..files.length-1
                            if(files[i].filenames == filename)
                                index1 = i
                            elsif(files[i].filenames == filename2)
                                index2 = i 
                            end
                        end
                        #calls to the union method in the Set class
                        files[index1].union(files[index2])
                    end
                end
                puts "Enter continue if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Find the Intersection
            when "4" 
                if(files.length == 0)
                    puts "You haven't input any Sets yet!!"
                    puts "Please input a Set with option #1 in the Menu"
                else
                    puts "You have selected to find the Intersection of two Sets"
                    if(files.length == 1)
                        puts "Please enter a second filename from which to input to the Set"
                        filename = gets.chomp
                        set = Set.new(filename)
                        files.push(set)
                        files[files.length - 1].read_file
                        #calls to the intersection method in the Set Class
                        files[0].intersection(files[files.length - 1])
                    else
                        puts "Please enter the name of the first file for your comparison :"
                        filename = gets.chomp
                        puts "Please enter the name of the second file for your comparison :"
                        filename2 = gets.chomp
                        #looks for filename within the array of filenames
                        for i in 0..files.length-1
                            if(files[i].filenames == filename)
                                index1 = i
                            elsif(files[i].filenames == filename2)
                                index2 = i 
                            end
                        end
                        #calls to the intersection method in the Set Class
                        files[index1].intersection(files[index2])
                    end
                end
                puts "Enter continue if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Find Cartesian Product
            when "5"
                if(files.length == 0)
                    puts "You haven't input any Sets yet!!"
                    puts "Please input a Set with option #1 in the Menu"
                else
                    puts "You have selected to find the Cartesian product of two Sets"
                    if(files.length == 1)
                        puts "Please enter a second filename from which to input to the Set"
                        filename = gets.chomp
                        set = Set.new(filename)
                        files.push(set)
                        files[files.length - 1].read_file
                        #calls to the cart method in the Set class 
                        files[0].cart(files[files.length - 1])
                    else
                        puts "Please enter the name of the first file for your comparison :"
                        filename = gets.chomp
                        puts "Please enter the name of the second file for your comparison :"
                        filename2 = gets.chomp
                        #looks for filename within the array of filenames
                        for i in 0..files.length-1
                            if(files[i].filenames == filename)
                                index1 = i
                            elsif(files[i].filenames == filename2)
                                index2 = i 
                            end
                        end
                        #calls to the cart method in the Set class
                        files[index1].cart(files[index2])
                    end
                end
                puts "Enter continue if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Display Set
            when "6"
                if(files.length == 0)
                    puts "You haven't input any Sets yet!!"
                    puts "Please input a Set with option #1 in the Menu"
                else
                    puts "You have selected to Display a Set on Screen"
                    if(files.length == 1)
                        pp files[0].hashname
                    else
                        puts"Please enter the file name of the Set you would like to Display"
                        filename = gets.chomp 
                        #looks for filename within the array of filenames
                        for i in 0..files.length-1
                            if(files[i].filenames == filename)
                                pp files[i].hashname
                                break
                            end
                        end
                    end
                end
                puts "Enter continue if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Check if Set is Empty
            when "7"
                if(files.length == 0)
                    puts "You haven't input any Sets yet!!"
                    puts "Please input a Set with option #1 in the Menu"
                else
                    puts "You have selected to Check if a Set is empty"
                    if(files.length == 1)
                        #calls the check_empty method in the Set class
                        files[0].check_empty
                    else
                        puts "Please enter the filename of the set that you would like to check :"
                        filename = gets.chomp 
                        #looks for filename within the array of filenames
                        for i in 0..files.length-1
                            if(files[i].filenames == filename)
                                index1 = i
                                #calls the check_empty method in the Set class
                                files[index1].check_empty
                            end
                        end
                    end
                end
                puts "Enter continue if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Check if Set is Full
            when "8"
                if(files.length == 0)
                    puts "You haven't input any Sets yet!!"
                    puts "Please input a Set with option #1 in the Menu"
                else
                    puts "You have selected to Check if a Set is full"
                    if(files.length == 1)
                        #calls to the check_full method in the Set Class
                        files[0].check_full
                    else
                        puts "Please enter the filename of the set that you would like to check :"
                        filename = gets.chomp 
                        #looks for filename within the array of filenames
                        for i in 0..files.length-1
                            if(files[i].filenames == filename)
                                index1 = i
                                #calls to the check_full method in the Set class
                                files[index1].check_full
                            end
                        end
                    end
                end
                puts "Enter continue if you would like to continue"
                choice = gets.chomp
                if choice == "continue"
                    x = true
                else
                    x = false
                end
            #Quits the Program
            when "9"
                puts "Goodbye"
                x = false
            end
    end
end