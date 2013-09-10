require_relative '../spec_helper'

describe PeopleAndTitles::Parser do
  describe ".result" do
    it "returns a parse result type" do
      PeopleAndTitles::Parser.parse("random string").should be_instance_of(PeopleAndTitles::Parser::Result)
    end
  end
end
