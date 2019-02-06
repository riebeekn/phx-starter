# Phoenix Starter with Pow and Bodyguard

This is a minimal [Phoenix](https://phoenixframework.org/) starter application.  It's essentially the default application you get via `mix phx.new` but with the addition of [Pow](https://github.com/danschultzer/pow) for authentication (configured with session persistance, forgot password, and registration confirmation) and [Bodyguard](https://github.com/schrockwell/bodyguard) for authorization.

There is also a fallback controller (fallback_controller.ex) included for handling authorization errors.

## Usage

### Grab the code
Clone, fork or download the repository from GitHub.

### Rename
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

### Setup
Run the following commands to set-up the project:

* `mix deps.get`
* `cd assets && npm install`
* `cd .. && mix ecto.setup`

That's all, you're now ready to run `mix phx.server`.
