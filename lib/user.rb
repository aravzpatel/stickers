class User
  attr_reader :name, :sticker
  @@users = ""

  def initialize(name)
    @name = name.capitalize
    @sticker = nil
  end

  def give_sticker
    @sticker = true
  end

  def self.create(user)
    @@user = User.new(user)
  end

  def self.instance
    @@user
  end
  
end