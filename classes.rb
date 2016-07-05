class MovieForMarketingTeam
  state_machine :state, :initial => :pending do
    event :cataloged do
      transition :pending => :in_catalog
    end

    event :promote do
      transition :in_catalog => :on_homepage
    end

    event :unpromote do
      transition :on_homepage => :in_catalog
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

class StateMachineDesign
  state_machine :state, :initial => :designing do
    event :listen_to_lightning_talk do
      transition :designing => :failed
    end
  end
end
