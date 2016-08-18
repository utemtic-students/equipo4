require 'initialize/initialize_users'

namespace :users do
  desc "Initialize users"
  task initialize_users: :environment do
    puts "Initialize users"
    Initialize::Initialize_users.users
    puts "\n Users initialize complete!\n"
  end
end
