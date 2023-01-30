module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array)
        array_of_ratings = _array.select do |el|
                             !el['rating_kinopoisk'].nil? && !el['country'].nil? && el['rating_kinopoisk'].to_f.positive? && el['country'].split(',').size >= 2
                           end.map { |el| el['rating_kinopoisk'].to_f }
        array_of_ratings.reduce(:+) / array_of_ratings.size
      end

      def chars_count(_films, _threshold)
        hash_chars = Hash.new(0)
        _films.select { |el| el['rating_kinopoisk'].to_f >= _threshold }.map { |el| el['name'] }.join.chars.each { |el| hash_chars[el] += 1 }
        hash_chars['и']
      end
    end
  end
end
