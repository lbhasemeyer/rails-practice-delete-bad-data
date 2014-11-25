namespace :assignments do
  desc "delete orphan data"
  task orphans: :environment do
    Assignment.where.not(person_id: Person.all).delete_all
    Assignment.where.not(location_id: Location.all).delete_all
  end
end
