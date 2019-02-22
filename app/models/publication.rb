# == Schema Information
#
# Table name: publications
#
#  id               :bigint(8)        not null, primary key
#  customer_id      :integer
#  pubmed_date      :date
#  pubmed_title     :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  pubmed_narrative :string
#

class Publication < ApplicationRecord
    has_many :associations, :dependent => :destroy
    belongs_to :customer, :class_name => "Customer", :foreign_key => "customer_id"
end
