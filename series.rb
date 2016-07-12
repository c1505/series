class Series
  def initialize(series)
    @series = series
  end
  
  def slices(length)
    raise ArgumentError if length > @series.length
    arr = @series.split("").map do |f|
      f.to_i
    end
    
    start = 0
    slice_end = length - 1
    new_arr = []
    
    while slice_end < arr.length do 
      new_arr << arr[start..slice_end]
      start += 1
      slice_end += 1
    end
    
    new_arr
  end
end 
