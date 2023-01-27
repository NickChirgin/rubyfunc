module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for n in self do
          yield n
        end
      end

      # Написать свою функцию my_map
      def my_map(&func)
        result = MyArray.new()
          self.my_each { |e| result << yield(e) }
        result
      end

      # Написать свою функцию my_compact
      def my_compact
        result = MyArray.new()
          self.my_each { |e| result << e if !e.nil? }
        result
      end

      # Написать свою функцию my_reduce
      def my_reduce(start = 0)
        result = start
        result = 1 if yield(result, self[0]) == 0
        for n in self do

          current_result = yield(result, n)
          result = current_result
        end
        result
      end
    end
  end
end
