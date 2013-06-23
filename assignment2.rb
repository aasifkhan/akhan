module Mod1
    def add(a,b)
      a+b
    end
    def sub(a,b)
      a-b
    end
    def mul(a,b)
      a*b
    end
    def div(a,b)
      a/b
    end
end

class Program
  include Mod1

  def self.is_substring(str1,str2)
    unless str1.empty? && str2.empty?
      str1.include? str2
    end
  end

  def self.sorting(*arr)
    unless arr.empty?
      arr.each_index do |i|
        arr.each_index do |j|
          if arr[i] < arr[j]
            arr[i], arr[j] = arr[j], arr[i]
          end
        end
      end
    end
    arr
  end

  def self.gcdmethod(num1,num2)
    begin
      while num1 > 0
      num1, num2 = num2, num1 % num2
      
      end
      rescue Exception => e
      puts "Divide by zero!!"
    end
    num1
  end

  def self.test(a,b)
    obj=Program.new
    res=[]
    res << obj.add(a,b)
    res << obj.sub(a,b)
    res << obj.mul(a,b)
    res << obj.div(a,b)
    res
  end

end
