require File.dirname(__FILE__) + '/test_helper.rb'

class TestRdialog < Test::Unit::TestCase

  def setup
  end
  
  def test_truth
    assert true
  end
end

#Just to keep stuff untouched
class TestRdialogPlus < Test::Unit::TestCase
  
  def setup
    @dial = RDialog.new
  end
  
  def test_labels
    
    assert_nothing_raised( NoMethodError ) do
      @dial.cancellabel = "Cancel label"
    end
    
    assert_nothing_raised( NoMethodError ) do
      @dial.oklabel = "Ok label"
    end
    
  end
  
end

#Just to keep stuff untouched
class TestRdialogGauge < Test::Unit::TestCase
  
  def setup
    @dial = RDialog.new
  end
  
  def test_gauge_only_takes_integers
    
    assert_equal(@dial.gauge("Test", 100), true)
    assert_equal(@dial.gauge("Test", "50"), true)
    assert_equal(@dial.gauge("Test", {}), false)
    
  end
  
end
