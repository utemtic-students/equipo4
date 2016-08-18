require 'initialize/initialize_morrallas'

namespace :morrallas do
  desc "Initialize morrallas"
  task initialize_morrallas: :environment do
    puts "Initialize morralla"
    Initialize::Initialize_morrallas.morrallas
    puts "\n Morrallas initialize complete\n"
  end
end
