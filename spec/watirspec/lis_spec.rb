# encoding: utf-8
require File.dirname(__FILE__) + '/spec_helper'

describe "Lis" do

  before :each do
    browser.goto(WatirSpec.files + "/non_control_elements.html")
  end

  describe "#length" do
    it "returns the number of lis" do
      browser.lis.length.should == 18
    end
  end

  describe "#[]" do
    it "returns the li at the given index" do
      browser.lis[4].id.should == "non_link_1"
    end
  end

  describe "#each" do
    it "iterates through lis correctly" do
      browser.lis.each_with_index do |l, index|
        l.name.should == browser.li(:index, index).name
        l.id.should == browser.li(:index, index).id
        l.value.should == browser.li(:index, index).value
      end
    end
  end

end
