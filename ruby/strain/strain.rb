class Array

  def keep(&stuff)
    select(&stuff)
  end

  def discard(&stuff)
    reject(&stuff)
  end

end