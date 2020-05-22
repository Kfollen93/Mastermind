# frozen_string_literal: true
def clue_colors(number)
    {
        '?' => "\e[41m  ?  \e[0m" ' ', # red
        '!' => "\e[42m  !  \e[0m" ' ', # green
  }[number]
  end