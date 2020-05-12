# frozen_string_literal: true

def code_colors(number)
  {
    '1' => "\e[41m  1 \e[0m" ' ', # red
    '2' => "\e[42m  2  \e[0m" ' ', # green
    '3' => "\e[43m  3  \e[0m" ' ', # brown
    '4' => "\e[44m  4  \e[0m" ' ', # blue
    '5' => "\e[45m  5  \e[0m" ' ', # magenta
    '6' => "\e[46m  6  \e[0m" ' ' # cyan
  }[number]
  end

def clue_colors(number)
  {
    '?' => "\e[41m  ?  \e[0m" ' ', # red
    '!' => "\e[42m  !  \e[0m" ' ', # green
  }[number]
  end
