=begin
Richard Bustamante
CSC 415
Assignment1
Subscriber class
=end
require './Set.rb'

class Subscriber
    #initializes all Subscriber objects with parameters of the account number and name
    def initialize(acct, name)
        @acct = acct    
        @name = name
    end
end