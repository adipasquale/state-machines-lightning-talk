class MovieForMarketingTeam
  state_machine :state, :initial => :in_catalog do

    event :start_ads do
      transition :in_catalog => :advertising
    end

    event :stop_ads do
      transition :advertising => :in_catalog
    end
  end
end

class MovieForSupplyTeam
  state_machine :state, :initial => :bought do
    event :upload do
      transition :bought => :online
    end

    event :renegotiated do
      transition :online => :online
    end
  end
end

class Movie
  state_machine :state, :initial => :in_production do
    event :finish_shooting do
      transition :in_production => :in_theaters
    end
  end
end
