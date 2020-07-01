describe User do
  describe "#initalize" do
    let(:user) { User.new("name") }

    it "should require 1 argument" do
      expect(user.name).to eql("Name")
    end

    it "should create a sticker collection" do
      expect(user.sticker).to eql nil
    end
  end
end