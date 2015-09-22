class Draft < ActiveRecord::Base
  attr_accessible :player_id, :team_id, :date, :round, :pick, :overall, :college, :notes

  belongs_to :team
  belongs_to :player

  validates_numericality_of(:player_id, :only_integer => true)
  validates_numericality_of(:team_id, :only_integer => true)
  validates_presence_of(:date)
  validates_numericality_of(:round, :only_integer => true)
  validates_numericality_of(:pick, :only_integer => true)
  validates_numericality_of(:overall, :only_integer => true)
end
