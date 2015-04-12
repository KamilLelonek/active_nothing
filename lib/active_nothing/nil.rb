class NilClass
  def if_true
    self
  end

  def if_false
    yield
    self
  end
end
