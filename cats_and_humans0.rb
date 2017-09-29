#cat.rb
require 'pry'

class Cat

  @@objects_of_cats = []

    def initialize(name)
      @name = name
      @fed = false
      @rested = true
      @entertained = false
      @adopted = false
    end

  def self.create(name)
      new_cat = Cat.new(name)
      @@objects_of_cats << new_cat
      return new_cat
  end

    def all_cats
      @@objects_of_cats
    end


  def self.show_cats
    puts "#{@@objects_of_cats}"
  end

  def name_of_cat
    return "cats name is #{@name}"
  end

#It is possible to play with a cat in order to entertain it. But if you play with a cat, it becomes tired.

  def play_with_cat  #this is a writer as it writes to @instance variables
    @rested = false
    @entertained = true
    puts "the cat is now tired"
  end

#It is possible to pet a cat. When you pet a cat, it will either purr if it's happy, otherwise it will hiss.

  def pet_the_cat
    if state_of_cat == true  # note YOU ARE CALLING A METHOD
      "cat purrs as happy is equal to  #{@happy}"
    else
      "cat hisses, as happy is equal to #{@happy}"
    end
  end

#Once a cat is adopted, it is given a furrever home and can never be un-adopted

  def adopt
    @adopted = true
    puts "the state of @adopted is: #{@adopted}"
  end


  def eat # to make the cat 'fed'
    @fed = true
  end

  def sleeping # to make cat = 'rested'
    @rested = true
  end


  #A cat is happy, if and only if it is fed, rested, entertained, and adopted.

  def state_of_cat
    if @fed == true && @rested == false &&
    @entertained == true && @adopted == true
      @happy = true
      puts "cat is happy, i.e. it is #{@happy}"
      return
    else
      puts "cat is not happy, i.e. state of happy is false"
      @happy = false
    end
  end
end

#---------------- end of c

#Write a Human class
#A human is initialized with its name.

class Human

  @@cats_adopted_by_human = []

  def initialized
    @human_name = Sue
  end

#A human decides to adopt all three cats.

  def self.adopt_a_cat
    array_of_cats = all_cats #how to call method
    array_of_cats.each do | cat |
      @@cats_adopted_by_human << cat
      puts "the cats adopted by #{@human_name} are #{@@cats_adopted_by_human}"
    end
  end

end



#----- end of classes ----- #


cat1 = Cat.create("fluffy")


p cat1
