# README
###  For use on Codenvy

create a workspace on codenvy
In Workspaces click Add Workspace

Add Name

Team personal

Select Stack Rails

Add or Import Project

select Git

https://github.com/CR80/SeedValley

click ADD

click create

In worspace after it starts

in Terminal cd golf

type bundle install

wait for gems to be installed

type rake db:migrate

Run the project navigate to the url
navigate to route /items

Catalog should be empty
in terminal run the following command

cdcp app/assets/backup/development.sqlite3 db/

refresh browser and catalog should have items.

Admin functionality available on Branch Admin

in the workspaces page click + in the action column of selected workspace

click + add project

select git and add url https://github.com/CR80/SeedValley

Git Remotes

Git Branches select origin/Admin
click checkout


cd into project

bundle install

rake db:migrate

run project

cp app/assets/backup/db_with_users/development.sqlite3 db/

login as A@B.C password password

logout

login as admin@email.ie password password

to change status of admin

rails dbconsole

UPDATE users SET admin = 'false' WHERE email = 'admin@email.ie';

UPDATE users SET admin = 'true' WHERE email = 'admin@email.ie';

added for test
