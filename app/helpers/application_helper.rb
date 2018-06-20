module ApplicationHelper
    def round_up(number)
      divisor = 10**Math.log10(number).floor
      i = number / divisor
      remainder = number % divisor
      if remainder == 0
        i * divisor
      else
        (i + 1) * divisor
      end
    end
end
