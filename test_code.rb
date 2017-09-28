
  def var(i)
    a = i*i*i
    puts "#{a}"
  end

  array1 = (1..10).to_a
  def printarray(array1)
    array1.each do |num|
      puts "num is #{num}"
    end
  end

  def samplearray(array1)
    random_sample = array1.sample
    puts "random sample is #{random_sample}"
  end

#------------------------

  var(5)

  printarray(array1)

  samplearray(array1)
