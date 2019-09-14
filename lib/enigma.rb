class Enigma

  # def initialize
  #   @key = rand(99999).to_s.rjust(5, "0")
  #   @date =
  # end
  #
  def encrypt(message, key, date = Time.now.strftime("%d%m%y"))
    x = Encrypt.new(message, key, date)
        # encrypted_message
        #   shift(@key, @date)
        #   with this shift entasjdfglkje;lsfgk
      {
        encrypt: x.encrypted_message,
        key: key,
        date: date
      }


          hello => poruy
  end

end
