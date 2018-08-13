namespace :seed_data do
  desc "create seed data in cards table"
  task :cards => :environment do
  	Card.destroy_all
  	(1..100).each do |i|
  		Card.create(name: "card#{i}",category:"category#{i}",industry:"industy#{i}")
  	end 
  end

end
