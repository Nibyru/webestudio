desc "This task is called by the Heroku scheduler add-on"
task visit_apps: :environment do
  puts "Visit app..."
end