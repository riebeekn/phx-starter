# Phoenix Starter with Pow and Bodyguard

This is a minimal [Phoenix](https://phoenixframework.org/) starter application.  It's essentially the default application you get via `mix phx.new` but with the addition of [Pow](https://github.com/danschultzer/pow) for authentication (configured with session persistance, forgot password, and registration confirmation) and [Bodyguard](https://github.com/schrockwell/bodyguard) for authorization.

There is also a fallback controller (fallback_controller.ex) included for handling authorization errors.

## Usage

### Grab the code
Clone, fork or download the repository from GitHub.

### Update the database credentials
Update the database username and password in config/dev.exs to the settings for your local Postgres instance.

### Run the setup script (MacOS only)
Run `./setup.sh YourApp your_app`, this will perform all necessary renames, grab dependencies, install npm assets and setup the DB.

The first parameter is the upper camel case name of your project, the second parameter is the snake case name of your project.  For instance if your project is named `MyApp`:

`./setup.sh MyApp my_app`

That's all, you're now ready to run `mix phx.server`.

### Manually rename and setup (if not using the setup script)
Make the following changes to rename the project to whatever your project name is.  For example if your project is named `MyApp`:

* Do a case-sensitive find / replace:
  * Replace PhxStarter with MyApp
  * Replace phx_starter with my_app
* Rename the following folders
  * test/phx\_starter_web
  * lib/phx_starter
  * lib/phx\_starter_web
* Rename the following files
  * lib/phx\_starter_web.ex
  * lib/phx_starter.ex

#### Setup
Run the following commands to set-up the project:

* `mix deps.get`
* `cd assets && npm install`
* `cd .. && mix ecto.setup`

That's all, you're now ready to run `mix phx.server`.
