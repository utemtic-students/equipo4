User.delete_all
User.create name: "Admin", email: "admin@utem.edu.mx", password: "default123", password_confirmation: "default123", role: "admin"