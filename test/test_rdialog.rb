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
  
  def test_cancel_label
    @dial.cancellabel = "Cancel label"
  end
  
  def test_ok_label
    @dial.oklabel = "Ok label"
  end
  
end
