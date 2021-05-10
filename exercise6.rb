def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  Button.new(label_text, position.new(x, y), foreground_color, is_dark_mode).draw
end

class Position
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end
end

class Button
  attr_reader :label, :position, :foreground_color, :is_dark_mode

  def initialize(label, position, foreground_color, is_dark_mode)
    @label = label
    @position = position
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end

  def draw
    paint(@label, @position.x, @position.y, foreground_color, text_color)
  end

  def foreground_color
    if @is_dark_mode
      @foreground_color - 10
    else
      @foreground_color + 10
    end
  end

  def text_color
    if @is_dark_mode
      '#111111'
    else
      '#E0E0E0'
    end
  end

end
