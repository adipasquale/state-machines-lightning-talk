class: middle, center, title-slide

# how not to design
# a state machine


.author[Adrien Di Pasquale  - paris.rb 05/07/2016]

![drivy](drivy-logo-white.png)

---

## intro

- startup-oriented
- very structuring


???

- I will not speak of SM theory & research nor about integrated circuits.
- in a startup, SMs give structure to the code and to the whole team dynamic.
- goals are :
  - simple so it's easy to grasp for everyone, not only tech. it helps a lot when languages align.
  - rational for developers to work with
  - easy to update with product evolutions

---

## intro

- startup-oriented
- very structuring
- ∞ valid choices

???

the hard thing is that is no magic method to reach these goals. there is an infinity of possible and valid choices. you can make the product work with any of these designs


---

class: middle, center

# 4 tips to failure

---

## 1. decide on your own

- different and valid views of the data

???

- corrolary : don't let your CTO or anyone else decide on his own
- listen to many people so you understand point of views. look how they interact with the data.
- ~imagine upcoming usecases.
- it takes time
- try and look for a consensus
- listening to your gut can help though

---

class: center, invert, twostates

### Netflix movie 

- Supply 
- ![](MovieForSupplyTeam_state.svg)


- Marketing 
- ![](MovieForMarketingTeam_state.svg)


---

## 2. look for _real_ states

- be grateful for each obvious decision
- hard enough to find objects

???

- do not think you can reach the truth. there are multiple truthes, each team (and maybe even each team member) can view the data differently.
- the truth will evolve as the product evolves
- sub objects may appear
- compromise for things you're not sure of, make the least engaging choice

---

## 3. anticipate everything

- over-engineering ™
- try and keep the strict necessary presently

???

- usually, the least states, the easier it will later be to migrate the data.
- you can orient it a little bit in the direction you want it to take for later

---

## 4. store only the state

- awful for tracking, debugging, migrations
- you should store all transitions, event the last event.

???

- store all transitions, event the last event.
- will help migrating, and investigating what happened.


