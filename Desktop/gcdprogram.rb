class Program
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
end
