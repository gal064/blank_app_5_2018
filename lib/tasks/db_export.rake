namespace :db_export do
  desc "TODO"
  task bookmarks_export: :environment do
    # get a file ready, the 'data' directory has already been added in Rails.root
    filepath = File.join(Rails.root, 'db_backup', 'bookmarks.json')
    puts "- exporting bookmarks into #{filepath}"

    # the key here is to use 'as_json', otherwise you get an ActiveRecord_Relation object, which extends
    # array, and works like in an array, but not for exporting
    bookmarks = Bookmark.all.as_json

    # The pretty is nice so I can diff exports easily, if that's not important, JSON(users) will do
    File.open(filepath, 'w') do |f|
      f.write(JSON.pretty_generate(bookmarks))
    end
  end

  desc "TODO"
  task clubs_export: :environment do
    
    # get a file ready, the 'data' directory has already been added in Rails.root
    filepath = File.join(Rails.root, 'db_backup', 'clubs.json')
    puts "- exporting clubs into #{filepath}"

    # the key here is to use 'as_json', otherwise you get an ActiveRecord_Relation object, which extends
    # array, and works like in an array, but not for exporting
    clubs = Club.all.as_json

    # The pretty is nice so I can diff exports easily, if that's not important, JSON(users) will do
    File.open(filepath, 'w') do |f|
      f.write(JSON.pretty_generate(clubs))
    end
    
  end

  desc "TODO"
  task companies_export: :environment do
    # get a file ready, the 'data' directory has already been added in Rails.root
    filepath = File.join(Rails.root, 'db_backup', 'companies.json')
    puts "- exporting clubs into #{filepath}"

    # the key here is to use 'as_json', otherwise you get an ActiveRecord_Relation object, which extends
    # array, and works like in an array, but not for exporting
    companies = Company.all.as_json

    # The pretty is nice so I can diff exports easily, if that's not important, JSON(users) will do
    File.open(filepath, 'w') do |f|
      f.write(JSON.pretty_generate(companies))
    end
  end

  desc "TODO"
  task icases_export: :environment do
    # get a file ready, the 'data' directory has already been added in Rails.root
    filepath = File.join(Rails.root, 'db_backup', 'icases.json')
    puts "- exporting icases into #{filepath}"

    # the key here is to use 'as_json', otherwise you get an ActiveRecord_Relation object, which extends
    # array, and works like in an array, but not for exporting
    icases = Icase.all.as_json

    # The pretty is nice so I can diff exports easily, if that's not important, JSON(users) will do
    File.open(filepath, 'w') do |f|
      f.write(JSON.pretty_generate(icases))
    end
  end

  desc "TODO"
  task icomments_export: :environment do
    
    # get a file ready, the 'data' directory has already been added in Rails.root
    filepath = File.join(Rails.root, 'db_backup', 'icomments.json')
    puts "- exporting icomments into #{filepath}"

    # the key here is to use 'as_json', otherwise you get an ActiveRecord_Relation object, which extends
    # array, and works like in an array, but not for exporting
    icomments = Icomment.all.as_json

    # The pretty is nice so I can diff exports easily, if that's not important, JSON(users) will do
    File.open(filepath, 'w') do |f|
      f.write(JSON.pretty_generate(icomments))
    end
  end


  desc "TODO"
  task users_export: :environment do
    
    # get a file ready, the 'data' directory has already been added in Rails.root
    filepath = File.join(Rails.root, 'db_backup', 'users.json')
    puts "- exporting clubs into #{filepath}"

    # the key here is to use 'as_json', otherwise you get an ActiveRecord_Relation object, which extends
    # array, and works like in an array, but not for exporting
    users = User.all.as_json

    # The pretty is nice so I can diff exports easily, if that's not important, JSON(users) will do
    File.open(filepath, 'w') do |f|
      f.write(JSON.pretty_generate(users))
    end
  end
end