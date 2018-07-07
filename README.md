See final project at
http://casebook-production.herokuapp.com/

user test@example.com
pass 12345678

to export db run:
rake db_export:clubs_export
rake db_export:users_export
rake db_export:bookmarks_export
rake db_export:companies_export
rake db_export:icases_export
rake db_export:icomments_export


to import db run (already exported in master):
rake db:reset
rake db_import:clubs_import
rake db_import:users_import
rake db_import:companies_import
rake db_import:icases_import
rake db_import:bookmarks_import
rake db_import:icomments_import

user test@example.com
pass 12345678