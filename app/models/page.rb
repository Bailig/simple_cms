class Page < ApplicationRecord

    acts_as_list :scope => :subject

    has_and_belongs_to_many :admin_users

    belongs_to :subject
    has_many :sections

    scope :visible, lambda { where(:visible => true) }
    scope :invisible, lambda { where(:visible => false) }
    scope :sorted, lambda { order(:position) }
    scope :newest_first, lambda { order(:created_at => :desc) }

    validates_presence_of :name
    validates_length_of :name, :maximum => 255
    validates_presence_of :permalink
    validates_length_of :permalink, :within => 3..255
    validates_uniqueness_of :permalink

end
