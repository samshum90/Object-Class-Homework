require('minitest/autorun')
require('minitest/reporters')
require_relative('../homework_camera_class')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCamera < MiniTest::Test

  def setup()
    lenses = ["SEL24F14GM", "SEL1018", "SEL85F18", "SEL70300G"]
    @camera = Camera.new("A6500", "E-mount", lenses, 1000)
  end

  def test_camera_name()
    assert_equal("A6500", @camera.camera_name())
  end

  def test_mount()
    assert_equal("E-mount", @camera.mount())
  end

  def test_lenses()
    assert_equal(4, @camera.lenses().count)
  end

  def test_price()
    assert_equal(1000, @camera.price())
  end

  def test_camera_name()
    @camera.camera_name = '7AMkIII'
    assert_equal("7AMkIII", @camera.camera_name())
  end

  def test_set_mount()
    @camera.mount = 'FE-mount'
    assert_equal("FE-mount", @camera.mount())
  end

  def test_set_price()
    @camera.price = 2000
    assert_equal(2000, @camera.price())
  end

  def test_add_new_lenses()
    new_lenses = "SEL1635G"
    @camera.add_new_lenses(new_lenses)
    assert_equal(5, @camera.lenses().count())
  end


end
