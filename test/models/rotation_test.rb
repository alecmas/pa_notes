require "test_helper"

describe Rotation do
  describe "validity" do
    let(:rotation) { Rotation.new }

    before do
      rotation.valid?
    end

    it "requires a user" do
      rotation.errors[:user].must_include "can't be blank"
    end

    it "requires a description" do
      rotation.errors[:description].must_include "can't be blank"
    end

    it "requires a name" do
      rotation.errors[:name].must_include "can't be blank"
    end

  end
end
