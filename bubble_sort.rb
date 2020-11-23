def bubble_sort(arr)
  pending_items = arr.length - 1

  until pending_items.zero?
    items_moved = false
    0.upto(pending_items - 1) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        items_moved = true
      end
    end
    pending_items = items_moved ? pending_items - 1 : 0
  end
  arr
end

def bubble_sort_by(arr)
  pending_items = arr.length - 1

  until pending_items.zero?
    items_moved = false
    0.upto(pending_items - 1) do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        items_moved = true
      end
    end
    pending_items = items_moved ? pending_items - 1 : 0
  end
  arr
end

arr = [10, 9, 7, 8]
p bubble_sort(arr)

arr = [1, 2, 3, 4, 5, 6, 7, 8]
p bubble_sort(arr)

p bubble_sort([4, 3, 78, 2, 0, 2])

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
