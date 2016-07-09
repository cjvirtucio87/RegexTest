require 'benchmark'

class RegexTest

  TEST_STRING = "Lorem ipsum dolor sit findme amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure findme dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                proident, sunt in culpa qui officia deserunt mollit findme anim id est laborum."

  def regex_select
    words = TEST_STRING.split(' ')
    words.select { |word| /findme/.match(word) }
  end

  def regex_scan
    TEST_STRING.scan /findme/
  end

  def equality
    words = TEST_STRING.split(' ')
    words.select { |word| word == 'findme' }
  end

  def compare_select
    Benchmark.bmbm do |x|
      x.report("#regex_select") do
        10000.times do 
          regex_select
        end
      end
      x.report("#regex_scan") do 
        10000.times do
          regex_scan
        end
      end
      x.report("#equality") do 
        10000.times do
          equality
        end
      end
    end
  end

end

tester = RegexTest.new
tester.compare_select