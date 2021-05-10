def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  Button.new(label_text, x, y, foreground_color, is_dark_mode).draw
end

class Button
  attr_reader :label, :x, :y, :foreground_color, :is_dark_mode

  def initialize(label, x, y, foreground_color, is_dark_mode)
    @label = label
    @x = x
    @y = y
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end

  def draw
    paint(@label, @x, @y, foreground_color, text_color)
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
