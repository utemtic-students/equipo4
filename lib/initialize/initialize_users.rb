module Initialize
  class Initialize_users
    def self.users
      create_user_master
      create_user_admin
      create_user_child_one
      create_user_child_two
    end

    def self.create_user_master
      user_data_1 = {
        email: "a20130436@utem.edu.mx",
        encrypted_password: "a20130436",
        name: "David M.",
        permission_level: 0,
        career: "TICs",
        grade: 9,
        imgProfile: "",
        status: true,
        rol: 0,
        sex: "M"
      }

      User.where(user_data_1).first_or_create
      print '.'
    end

    def self.create_user_admin
      user_data_2 = {
        email: "a201302926@utem.edu.mx",
        encrypted_password: "a20130292",
        name: "Christian R.",
        permission_level: 1,
        career: "TICs",
        grade: 9,
        imgProfile: "",
        status: true,
        rol: 1,
        sex: "M"
      }

      User.where(user_data_2).first_or_create
      print '.'
    end

    def self.create_user_child_one
      user_data_3 = {
        email: "a20130271@utem.edu.mx",
        encrypted_password: "a20130271",
        name: "Cristian J.",
        permission_level: 2,
        career: "TICs",
        grade: 9,
        imgProfile: "",
        status: true,
        rol: 2,
        sex: "M"
      }

      User.where(user_data_3).first_or_create
      print '.'
    end

    def self.create_user_child_two
      user_data_4 = {
        email: "a20130000@utem.edu.mx",
        encrypted_password: "a20130000",
        name: "FourDACH",
        permission_level: 2,
        career: "OSI",
        grade: 4,
        imgProfile: "",
        status: true,
        rol: 2,
        sex: "F"
      }

      User.where(user_data_4).first_or_create
      print '.'
    end
  end
end
