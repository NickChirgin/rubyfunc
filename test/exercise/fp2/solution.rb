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
        out = MyArray.new()
          self.my_each { |e| out << yield(e) }
        out
      end

      # Написать свою функцию my_compact
      def my_compact; end

      # Написать свою функцию my_reduce
      def my_reduce; end
    end
  end
end
