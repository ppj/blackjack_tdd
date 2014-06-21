
class Card

  def initialize(s, v)
    valid_s = ["\u2660", "\u2665", "\u2663", "\u2666"]
    valid_v = ["A", Array(2..10).map {|v| "#{v}"}, "J", "Q", "K"].flatten

    raise ArgumentError unless valid_s.include?(s)
    raise ArgumentError unless valid_v.include?(v)

    @value = v
    @suite = s

  end

  def value
    if @value == "A"
      11
    elsif @value.to_i == 0
      10
    else
      @value.to_i
    end
  end

  def to_s
    "#{@suite} #{@value}"
  end
end
