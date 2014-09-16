desc "Delete task items that are older than 7 days"
task delete_items: :environment do 
  Item.where("created_at <= ?", time.now - 7.days).destroy_all
end
