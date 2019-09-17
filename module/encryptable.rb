module Encryptable


  def number_breakdown(key)
    a_key = key[0..1]
    b_key = key[1..2]
    c_key = key[2..3]
    d_key = key[3..4]

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

  def number_shift(key, date)
    shift = []
    number_key = number_breakdown(key)
    date_offset = date_breakdown(date)
    shift << (number_key[0].to_i + date_offset[0].to_i)
    shift << (number_key[1].to_i + date_offset[1].to_i)
    shift << (number_key[2].to_i + date_offset[2].to_i)
    shift << (number_key[3].to_i + date_offset[3].to_i)

    shift
  end

  def message_breakdown(message)
    message = message.downcase.split('')
  end

end
