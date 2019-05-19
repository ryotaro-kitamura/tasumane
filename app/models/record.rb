class Record < ApplicationRecord

  validates :task,{presence: true}
  validates :hour,{presence: true}
  validates :minute,{presence: true}
  validates :user_id,{presence: true}

  def user
    return User.find_by(id: self.user_id)
  end

end
