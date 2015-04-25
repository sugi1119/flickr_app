require 'rails_helper'

RSpec.describe Photo, type: :model do
  subject{@model}

  describe "model" do
    before{
      @model = stub_model(Photo)
      stub_model(Photo).as_new_record
      stub_model(Photo, :to_param => 37)
      stub_model(Photo) {|photo| photo.id = "12345"}
    }

    it "class says it's name Photo" do
      expect(@model.class).to eq(Photo)
    end

    it{should respond_to(:id)}
  end

end

