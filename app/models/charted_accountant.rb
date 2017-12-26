class ChartedAccountant < ApplicationRecord
    after_create :create_user_account
    has_attached_file :image
    has_many :users, dependent: :destroy
    has_many :parties,dependent: :destroy
    scope :load, ->(id) { where(id: id).take }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    def create_user_account
    	@user = User.create!(first_name: self.name, username: self.email, charted_accountant_id: self.id, password: self.ca_no, role: 'ChartedAccountant', email: self.email)
    end

  def self.set_ca_no
    date = Date.today.strftime('%Y%m%d')
    if Party.first.nil?
      'S' + date.to_s + '1'
    else
      last_id = Party.last.id.next
      'S' + date.to_s + last_id.to_s
    end
  end
end
