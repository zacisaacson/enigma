module Encryptable


def number_breakdown(number)
  a_key = number[0..1]
  b_key = number[1..2]
  c_key = number[2..3]
  d_key = number[3..4]

  [a_key, b_key, c_key, d_key]
end

def date_breakdown(date)
  squared = (date.to_i * date.to_i).to_s
  a_offset = squared[-4]
  b_offset = squared[-3]
  c_offset = squared[-2]
  d_offset = squared[-1]

  [a_offset, b_offset, c_offset, d_offset]
end

def shift(number, date)
  number_key = number_breakdown(number)
  date_offset = date_breakdown(date)
  a_shift = number_key[0].to_i + date_offset[0].to_i
  b_shift = number_key[1].to_i + date_offset[1].to_i
  c_shift = number_key[2].to_i + date_offset[2].to_i
  d_shift = number_key[3].to_i + date_offset[3].to_i

  [a_shift, b_shift, c_shift, d_shift]

end

end
