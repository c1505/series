class Series
  def initialize(str)
    @str = str
  end
  
  def slices(num)
    arr = @str.split("").map do |f|
      f.to_i
    end
    if num > arr.length
      raise ArgumentError
    end
    start = 0
    new_num = num - 1
    new_arr = []
    while new_num < arr.length do 
      new_arr << arr[start..new_num]
      start += 1
      new_num += 1
    end
    new_arr
  end
end 
