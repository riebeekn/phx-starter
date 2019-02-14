# first parameter is MyApp
# second parameter is my_app

# renames
git grep -lz PhxStarter | xargs -0 sed -i '' -e "s/PhxStarter/${1}/g"
git grep -lz phx_starter | xargs -0 sed -i '' -e "s/phx_starter/${2}/g"
mv lib/phx_starter lib/${2}
mv lib/phx_starter_web lib/${2}_web
mv lib/phx_starter_web.ex lib/${2}_web.ex
mv lib/phx_starter.ex lib/${2}.ex
mv test/phx_starter_web test/${2}_web
# phx setup
mix deps.get
cd assets && npm install
cd .. && mix ecto.setup
