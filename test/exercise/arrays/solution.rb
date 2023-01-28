module Exercise
  module Arrays
    class << self
      def binary_search(arr, item, start_index, end_index)
        median = (start_index + end_index) / 2
          if(arr[median] == item)
            return median
          else
            if(item> arr[median])
              binary_search(arr, item, median+1, end_index)
            else
              binary_search(arr, item, start_index, median-1)
            end	
          end
      end

      def replace(array)
        max = array[0]
        for number in array do
          max = number if number > max
        end
        array.map { |el| el >= 0 ? max : el }
      end

      def search(_array, _query)
        if _array.include?(_query)
          return 0 if _array.size == 1
          return binary_search(_array, _query, 0, _array.size - 1)
        end

        -1
      end
    end
  end
end
