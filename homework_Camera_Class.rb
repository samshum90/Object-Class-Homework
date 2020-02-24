class Camera

attr_accessor :camera_name, :mount, :lenses, :price

  def initialize(camera_name, mount, lenses, price)
    @camera_name = camera_name
    @mount = mount
    @lenses = lenses
    @price = price
  end

  def add_new_lenses(new_lenses)
    @lenses << (new_lenses)
  end

end
