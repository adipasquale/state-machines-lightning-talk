# run

`$ python -m SimpleHTTPServer`

head to [http://localhost:8000](http://localhost:8000)

# generate diagrams

- use RVM
- install graphviz
- gem install bundler && bundle install
- ```rake state_machine:draw FILE=./classes.rb CLASS=MovieForMarketingTeam FORMAT=svg && \
  rake state_machine:draw FILE=./classes.rb CLASS=MovieForSupplyTeam FORMAT=svg && \
  rake state_machine:draw FILE=./classes.rb CLASS=StateMachineDesign FORMAT=svg && \
  sed -i .bak "s/white/transparent/" *.svg && rm *.bak```
