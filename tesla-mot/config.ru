require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
#place rack methodoverride above all controllers in which you want to have access to the middleware's functionality.
use CarsController
use BatteryController
use SessionsController
use UsersController
#keep this line at the bottom
run ApplicationController
