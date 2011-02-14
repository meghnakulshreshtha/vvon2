class Studentprofile < ActiveRecord::Base
    belongs_to :student
    attr_accessible :usn, :sem, :dept, :role
end
