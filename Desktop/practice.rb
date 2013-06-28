
module Test
  def self.add(a, b)
    a + b
  end

  def self.sub(a, b)
    a - b
  end

  def self.mul(a, b)
    a * b
  end

  def self.div(a, b)
    a / b
  end
end

require 'csv'
require 'nokogiri'   
require 'open-uri'

class Practice
  include Test
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

  def self.cal(a, b)
    [Test.add(a, b), Test.sub(a, b), Test.mul(a, b), Test.div(a, b)]
  end

  def self.is_substring(str1,str2)
    unless str1.empty? && str2.empty?
      str1.include? str2
    end
  end

  def self.gcd(a, b)
    a, b = b, a if a < b
    begin
      (a % b == 0)? b : gcd(b, a % b)
    rescue
      "Divide by Zero!!"
    end
  end


  def self.sorting(*arr)
    unless arr.empty?
      arr.each_index do |i|
        arr.each_index do |j|
          arr[i], arr[j] = arr[j], arr[i] if arr[i] < arr[j]
        end
      end
    end
    arr
  end

  def self.csvprog
    CSV.foreach("./contacts.csv", headers: true) do |data|
      puts "Name:-#{data['First Name']} #{data['Middle Name']} #{data['Last Name']}-> Email:- #{data['E-mail Address']}"
    end
  end

  def self.fileread
    File.open("./a.rb") do |file|
      file.each_line {|line| puts " #{line}" }
    end
  end

  def self.nokogiriprog
    url = "http://www.ruby-lang.org"
    page = Nokogiri::HTML(open(url+"/en"))
    images = page.css("img")
    puts images    
  end

  def self.adder(x,y)
    mylambda = lambda {|param1, param2| return param1+param2}
    mylambda.call(x, y)
  end

end
