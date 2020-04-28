def bubble_sort(array)
  # lets initialize the array to be sorted
  sorted = true
  while sorted
    sorted = false
    (0...array.length - 1).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = true
      end
    end
  end
  array
end
p bubble_sort([4, 3, 78, 2, 0, -2])

def bubble_sort_by(array)
  sorted = true
  while sorted
    sorted = false
    (0...array.length - 1).each do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = true
      end
    end
  end
  array
end
p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
