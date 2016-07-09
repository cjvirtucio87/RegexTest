require 'regex_test'

describe RegexTest do
  let(:tester) { RegexTest.new }

  describe "#regex_select" do
    it "finds regex matches using the select method" do
      expect(tester.regex_select).to be_an_instance_of(Array)
    end
  end

  describe "#regex_scan" do
    it "finds regex matches using the scan method" do
      expect(tester.regex_scan).to be_an_instance_of(Array)
    end
  end

  describe "#equality_benchmark" do
    it "finds matches using the equality operator" do
      expect(tester.equality).to be_an_instance_of(Array)
    end
  end

end
