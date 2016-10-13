class Patient < ActiveRecord::Base
  STATUS =[["Initial","A"], ["Referred","B"], ["Treatment","C"], ["Closed","D"]]
  STATUS_VALUES = STATUS.map{|s| s[0]}
  STATUS_NAMES = STATUS.map{|s| s[1]}
  validates :first_name, presence: true, length:{ maximum: 30}
  validates :middle_name, length: { maximum: 10}
  validates :last_name, presence: true, length: { maximum: 30}
  validates :status, presence: true, :inclusion => {:in => STATUS_VALUES}
  validates :location, presence: true
  validates :gender, presence: true

  def state_name
    result = '未知状态'
    STATUS.each do |s|
      if s[0] == self.status.to_s
        result = s[1]
      end
    end
    result
  end
end

