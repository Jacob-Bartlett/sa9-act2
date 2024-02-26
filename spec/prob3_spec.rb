require_relative "../lib/prob3"
RSpec.describe StringWrapper do
    describe "#reverse" do
        it "reverses the string" do
            wrap = StringWrapper.new("string")
            expect(wrap.reverse).to eq("gnirts")
        end
    end
    describe "#upcase" do
        it "converts the string to uppercase" do
            wrap = StringWrapper.new("string")
            expect(wrap.upcase).to eq("STRING")
        end
    end
    describe "#downcase" do
        it "converts the string to lowercase" do
            wrap = StringWrapper.new("String")
            expect(wrap.downcase).to eq("string")
        end
    end
end