module Initialize
  class Initialize_morrallas
    def self.morrallas
      user = User.all
      user.each do |data|
        create_morralla(data)
      end
    end

    def self.create_morralla(data)
      mount_data = {
        user_id: data['id'],
        mount: 0.0
      }
      morralla = Morralla.create_with(mount_data).find_or_initialize_by(user: data)
      print morralla.save(validate: false) ? '.' : 'X'
    end
  end
end
