class Object
  def if_true
    yield
    self
  end

  def if_false
    self
  end
end
