# encoding: utf-8
require File.dirname(__FILE__) + '/spec_helper'

describe "Ems" do

  before :each do
    browser.goto(WatirSpec.files + "/non_control_elements.html")
  end

  describe "#length" do
    it "returns the number of ems" do
      browser.ems.length.should == 1
    end
  end

  describe "#[]" do
    it "returns the em at the given index" do
      browser.ems[0].id.should == "important-id"
    end
  end

  describe "#each" do
    it "iterates through ems correctly" do
      browser.ems.each_with_index do |e, index|
        e.text.should == browser.em(:index, index).text
        e.id.should == browser.em(:index, index).id
        e.class_name.should == browser.em(:index, index).class_name
      end
    end
  end

end
