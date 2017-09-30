
require 'pry'

#a book example, sort of I hope

class Bookshelf #give it an attribute books

    def initialize
      @books = []
    end

    def add(book)
      @books << book
      return book
    end

    def price?
      x = 0
      @books.each do |book|
        x += book.price
        end
      return x
    end

end


class Book

  def initialize (title, value)
    @title  = title
    @price  = value
  end

# CREATE 2 READERS

    def title
      @title
    end

    def price
      @price
    end

  #WRITERS

  def title=(title)
    @title = title
    puts "you changed the book title to #{@title}"
  end

  def price=(val)  #val passed from outside class
    @price = val
    puts "the new book price is #{@price}"
  end

end

class Coles_Notes < Book

  #writer
  def summary_w(synopsis,year_published)
    @synopsis = synopsis
    @year_published = year_published
  end

  #reads
  def summary_r
    @synopsis
    @year_published
  end

  def print_all
    puts "print all: #{title},#{price},#{synopsis},#{year_published}"
  end

end




Astronomy_books = Bookshelf.new
History_books = Bookshelf.new

neptune = Book.new('Neptune',143)
venus = Book.new('Venus',222)
mercury = Book.new('Mercury',333)
saturn = Book.new('Saturn',444)
mars = Book.new('Mars',111)

Astronomy_books.add(venus)
Astronomy_books.add(neptune)
Astronomy_books.add(mercury)
Astronomy_books.add(saturn)
Astronomy_books.add(mars)


giantstar = Bookshelf.new()


History_books.add('History of WW2')
p "---"
p History_books.inspect
p "---"

#readers

p mars.title
p venus.title
p mars.price
p venus.price

#writers mars
mars.price = 999
mars.price = 2000

p mars.price

p Astronomy_books.price?
