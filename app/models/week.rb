class Week < ActiveRecord::Base
  belongs_to  :season
  has_many    :games
  validates_presence_of :number, :on => :create, :message => "Can't be blank"
end
