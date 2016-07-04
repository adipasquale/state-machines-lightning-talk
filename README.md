# run

python -m http.server

# generate diagrams

- use RVM
- install graphviz
- gem install bundler && bundle install
- rake state_machine:draw FILE=./classes.rb CLASS=MovieForMarketingTeam FORMAT=svg 
- sed -i .bak "s/white/transparent/" *.svg && rm *.bak
