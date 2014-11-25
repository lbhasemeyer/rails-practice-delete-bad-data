namespace :assignments do
  desc "delete orphan data"
  task orphans: :environment do
    People.where.not(person_id: People.all).delete_all
    Locations.where.not(location_id: Location.all).delete_all
  end
end
