require 'spec_helper'

module Codebreaker
  describe Marker do
    describe "#exeact_match_count" do
      context "with no matches" do
        it "returns 0" do
          marker = Marker.new('1234', '5678')
          marker.exact_match_count.should == 0
        end
      end

      context "with 1 exact match" do
        it "returns 1" do
          marker = Marker.new('1234','7288')
          marker.exact_match_count.should == 1
        end
      end

      context "with 1 number match" do
        it "returns 0" do
          marker = Marker.new('1234','8883')
          marker.exact_match_count.should == 0
        end
      end
      context "with 2 exact match and 1 number match" do
        it "returns 2" do
          marker = Marker.new('1234','4238')
          marker.exact_match_count.should == 2
        end
      end


    end

    describe "#number_match_count" do
      context "with no match" do
        it "returns 0" do
          marker = Marker.new('1234', '8888')
          marker.number_match_count.should == 0
        end
      end
      context "with 1 number match" do
        it "returns 1" do
          marker = Marker.new('1234', '7377')
          marker.number_match_count.should == 1
        end
      end
      context "with 1 exact match" do
        it "returns 0" do
          marker = Marker.new('1234', '8838')
          marker.number_match_count.should == 0
        end
      end
      context "with 1 exact match and 1 number match" do
        it "returns 1" do
          marker = Marker.new('1234', '8281')
          marker.number_match_count.should == 1
        end
      end
    end

  end

end