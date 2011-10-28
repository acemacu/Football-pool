class Team < ActiveRecord::Base
  validates_uniqueness_of :name, :on => :create, :message => "Must be unique"
  validates_presence_of :name, :on => :create, :message => "Can't be blank"
end
