require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      user = User.create(email: "finthehuman@candykingdom.ooo", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Fin", last_name: 'the Human')
      @post = Post.create(date: Date.today, rationale: "Adventure Time", user_id: user.id)
    end

    it "can be created" do
      expect(@post).to be_valid
    end

    it "cannot be created without date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
