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
        password: "a20130436",
        password_confirmation: "a20130436",
        name: "David M.",
        career: "TICs",
        grade: 9,
        imgProfile: "",
        status: true,
        rol: 0,
        sex: "M"
      }

      User.create(user_data_1)
      print '.'
    end

    def self.create_user_admin
      user_data_2 = {
        email: "a201302926@utem.edu.mx",
        password: "a20130292",
        password_confirmation: "a20130292",
        name: "Christian R.",
        career: "TICs",
        grade: 9,
        imgProfile: "",
        status: true,
        rol: 1,
        sex: "M"
      }

      User.create(user_data_2)
      print '.'
    end

    def self.create_user_child_one
      user_data_3 = {
        email: "a20130271@utem.edu.mx",
        password: "a20130271",
        password_confirmation: "a20130271",
        name: "Cristian J.",
        career: "TICs",
        grade: 9,
        imgProfile: "",
        status: true,
        rol: 2,
        sex: "M"
      }

      User.create(user_data_3)
      print '.'
    end

    def self.create_user_child_two
      user_data_4 = {
        email: "a20130000@utem.edu.mx",
        password: "a20130000",
        password_confirmation: "a20130000",
        name: "FourDACH",
        career: "OSI",
        grade: 4,
        imgProfile: "",
        status: true,
        rol: 2,
        sex: "F"
      }

      User.create(user_data_4)
      print '.'
    end
  end
end
