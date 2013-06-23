
class Practice

  def self.is_palindrome?(n)
    unless n.nil?
      num, sum = n, 0
      while(n != 0) do
        sum = (sum * 10) + (n % 10)
        n /= 10
      end
      sum.eql?(num)
    end
  end

  def self.generate_fib_series(n)
    unless n.nil?
      f, f1 = 0, 1
      a = [f, f1]
      (2...n).each do
        f2 =f + f1
        a << f2
        f, f1 = f1, f2
      end
      a
    end
  end

  def self.fact(n)
    unless n.nil?
      (2..n).inject(1){ |v, i| v * i}
    end
  end

  def self.find_even(*arr)
    unless arr.empty?
      arr.select { |a| (a % 2).zero? }
    end
  end

  def self.prime_within_limits(l, u)
    unless l.nil? || u.nil?
      (l..u).select { |num| (2..(num / 2)).none? { |d| num % d == 0 }}
    end
  end

  def self.cnt(str)
    count = 0
    str.each_char do |c|
      count += 1 if  yield(c)
    end
    count
  end

  def self.vowel_count(str)
    unless str.empty?
      Practice.cnt(str) { |v| ['a','e','i','o', 'u'].include?(v) }
    end
  end

end


