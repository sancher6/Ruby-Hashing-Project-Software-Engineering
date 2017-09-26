=begin
Richard Bustamante
CSC 415
Assignment1
Set Class
=end
require 'pp'
require './Subscriber.rb'

class Set
    set3 = Hash.new
    check = false; 
    #makes these attributes public and can be accessed from main
    attr_accessor :hashname, :filenames, :elements
    def initialize(filenames)
        @filenames = filenames
        @hashname = Hash.new
        @elements = Array.new
    end
    
    #reads file
    def read_file
        #opens the file and stores into lines
        if(File.exist?(@filenames) == false)
            puts "Sorry that file does not exist"
        else
            file = File.open(@filenames,'r')
                file.each_line do |element|
                    element = element.chomp.split(' ',2)
                    #makes subscriber objects out of each line read
                    Subscriber.new(element[1],element[0])
                    @elements.push("#{element[1]} , #{element[0]}")
                    @hashname[element[1]] = element[0]
                end
            puts "File has been added to a Set"
        end
    end

    #adds element to end of a set
    def add_element(name, acc)
        @hashname[name] = acc
        puts "Element successfully added"
    end
    #gets the union of two sets
    def union(set2)
        puts "The Union of the two sets is :"
        pp @hashname.merge(set2.hashname)
    end
    #gets the intersection of two sets
    def intersection(set2)
        puts "The intersection of the two sets is :"
        set3 = @hashname.keep_if {|k, v| set2.hashname.key? k}
        pp set3
    end
    #gets the cartesian product of two sets
    def cart(set2)
        set4 = Hash.new
        for i in 0..@elements.length
            for j in 0..set2.elements.length
                set4[@elements[i]] = [set2.elements]
            end
        end
        pp set4
    end
    #checks if the set is empty 
    def check_empty
        check = @hashname.empty?
        if (check == true)
            puts "This Set is empty"
        else
            puts "This Set is not Empty"
        end
    end
    #checks if the set is full
    def check_full
        check = @hashname.empty?
        if(check == true)
            puts "This Set is not full"
        else
            puts "This Set is full"
        end
    end
end