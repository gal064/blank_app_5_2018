namespace :db_import do
  desc "TODO"
  task bookmarks_import: :environment do
    path = File.join(Rails.root, 'db_backup', 'bookmarks.json')
    bookmarks = JSON.parse(File.read(path))
    bookmarks.each do |record|
      Bookmark.create!(record)
    end
  end

  desc "TODO"
  task clubs_import: :environment do
    path = File.join(Rails.root, 'db_backup', 'clubs.json')
    clubs = JSON.parse(File.read(path))
    clubs.each do |record|
      Club.create!(record)
    end
  end

  desc "TODO"
  task companies_import: :environment do
    path = File.join(Rails.root, 'db_backup', 'companies.json')
    companies = JSON.parse(File.read(path))
    companies.each do |record|
      Company.create!(record)
    end
  end

  desc "TODO"
  task icases_import: :environment do
    path = File.join(Rails.root, 'db_backup', 'icases.json')
    icases = JSON.parse(File.read(path))
    icases.each do |record|
      Icase.create!(record)
    end
  end

  desc "TODO"
  task icomments_import: :environment do
    path = File.join(Rails.root, 'db_backup', 'icomments.json')
    icomments = JSON.parse(File.read(path))
    icomments.each do |record|
      Icomment.create!(record)
    end
  end
  
  desc "TODO"
  task users_import: :environment do
    path = File.join(Rails.root, 'db_backup', 'users.json')
    users = JSON.parse(File.read(path))
    users.each do |record|
      User.create!(record)
    end
  end

end
