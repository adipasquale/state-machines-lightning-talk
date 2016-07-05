class: middle, center, title-slide

# how not to design
# a state machine


.author[Adrien Di Pasquale  - paris.rb 05/07/2016]

![drivy](drivy-logo-white.png)

---

class: middle, center, invert, bigsm

![](SM_state.svg)

---

```bash
# Gemfile

gem 'state_machine'
# or gem 'state_machines-activerecord'
```


```rb
class StateMachineDesign
  state_machine :state, :initial => :designing do

    event :listen_to_lightning_talk do
      transition :designing => :failed
    end

  end
end
```

```bash
$ rake state_machine:draw ...
```

---

name: intro

## intro

- startup-oriented

???

- I will not speak of SM theory & research nor about integrated circuits.
- in a startup, SMs give structure to the code and to the whole team dynamic.

---

name: intro2
template: intro

- very structuring

???

- goals are :
  - simple so it's easy to grasp for everyone, not only tech. it helps a lot when languages align.
  - rational for developers to work with
  - easy to update with product evolutions

---

template: intro2

- ∞ valid choices

???

the hard thing is that is no magic method to reach these goals. there is an infinity of possible and valid choices. you can make the product work with any of these designs


---

class: middle, center

# 4 tips to failure

---

name: tip1

## 1. decide on your own


---

template: tip1

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
- .supply[![](MovieForSupplyTeam_state.svg)]


- Marketing 
- ![](MovieForMarketingTeam_state.svg)


---

name: tip2

## 2. look for _real_ states

---

template: tip2

- hard enough to find objects
- be grateful for each obvious decision

???

- do not think you can reach the truth. there are multiple truthes, each team (and maybe even each team member) can view the data differently.
- the truth will evolve as the product evolves
- sub objects may appear
- compromise for things you're not sure of, make the least engaging choice

---

name: tip3

## 3. anticipate everything

???

- product may go in ≠ directions

---

template: tip3

- over-engineering ™
- strict necessary right now

???

- you can orient it a little bit in the direction you want it to take for later
- usually, the least states, the easier it will later be to migrate the data.


---
name: tip4

## 4. store only the state

---

template: tip4

- tracking, debugging, migrations
- store all transitions

???

-
- store all transitions, up to the last one.
- will help migrating, and investigating what happened.

---

class: middle, center, full

![](groucho.jpg)
