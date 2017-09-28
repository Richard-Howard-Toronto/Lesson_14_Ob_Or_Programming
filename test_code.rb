
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
    random_sample_array = 0
    counter = 0
    while counter < 10
      random_sample = array1.sample
      random_sample_array << random_sample
      counter += 1
    end
  end

  def random_sample_array
    @samplearray
    return 
  end

#------------------------

  var(5)

  printarray(array1)

  samplearray(array1)

p random_sample_array
