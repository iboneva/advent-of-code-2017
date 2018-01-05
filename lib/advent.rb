require "pry"

module Advent
  # day 1
  def self.sum_sequence(input)
    output = 0
    previous = input.digits.first
    input.digits.reverse.each do |d|
      if d == previous
        output += previous
      end
      previous = d
    end
    output
  end

  #day 1
  def self.sum_even(input)
    half_size = input.digits.size/2
    halves = input.digits.reverse.each_slice(half_size).to_a
    output = 0
    halves[0].each_with_index do |d, i|
      if d == halves[1][i]
        output += (d*2)
      end
    end
    output
  end

  # day 2
  def self.check_sum(input)
    output = 0
    input.each do |i|
      output += (i.max - i.min)
    end
    output
  end

  def self.evenly_divisible(input)
    output = 0
    input.each do |digits|
      digits.each do |i|
        digits.each do |j|
          if i!=j
            output += i/j if i%j == 0
          end
        end
      end
    end
    output
  end

  # day 3
  def self.spiral_memory(input)
#    (p1,p2) (q1,q2) is |p1 - q1| + |p2 - q2|
    #    bottom right corner is the next odd digit, squared
    #
    if input == 1
      return 0
    end

    start = [0, 0]

    closest_odd_sq = Math.sqrt(input).floor
    closest_odd_sq -= 1 unless closest_odd_sq%2 == 1

    one_coordinate = (closest_odd_sq-1)/2+1
    one_coordinate

    input%closest_odd_sq

    even_sq = closest_odd_sq + 1

    step_one = input-(closest_odd_sq*closest_odd_sq)
    step_two = step_one%even_sq
    second_coordinate = step_two - even_sq/2

    (start[0] - one_coordinate).abs + (start[1] - second_coordinate).abs
  end

  def self.adjacent_squares(input)
    start = [0, 0]

    hash = {
      [0,0] => 1
    }

    while hash.size != input
      current = hash.keys.last
      hash.each do |key, value|
        total = 0
        if (key[0] - current[0]) <= 1 || (key[0] - current[0]) <= 1
          total += value
        end
      end
    end
  end

  # day 4
  def self.passphrase(input)
    input.select do |i|
      !i.split(" ").uniq!
    end.count
  end

  def self.passphrase_anagram(input)
    input.select do |line|
      alphabetical_words = line.split(" ").map do |word|
        word.chars.sort.join
      end
      !alphabetical_words.uniq!
    end.count
  end

  # day 5
  def self.maze(input)
    i = input.map(&:to_i)
    position = 0
    steps = 0

    while position >= 0 && position < i.size
      new_position = position + i[position]
      i[position] += 1
      position = new_position
      steps += 1
    end
    steps
  end

  def self.maze_next_part(input)
    i = input.map(&:to_i)
    position = 0
    steps = 0

    while position >= 0 && position < i.size
      new_position = position + i[position]
      puts "old: #{i[position]}"
      if position < 3
        i[position] += 1
      else
        i[position] -= 1
      end
      puts "new: #{i[position]}"
      position = new_position
      steps += 1
    end
    steps
  end
end
