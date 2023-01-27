module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array.max
        array.map { |el| el >= 0 ? max : el }
      end

      def search(_array, _query)
        return _array.find_index(_query) if _array.include?(_query)

        -1
      end
    end
  end
end
