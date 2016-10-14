class Patient < ActiveRecord::Base
  has_one :location
  STATUS =[["Initial","初期"], ["Referred","转诊"], ["Treatment","治疗"], ["Closed","关闭"]]
  STATUS_VALUES = STATUS.map{|s| s[0]}
  STATUS_NAMES = STATUS.map{|s| s[1]}
  validates :first_name, presence: true, length:{ maximum: 30}
  validates :middle_name, length: { maximum: 10}
  validates :last_name, presence: true, length: { maximum: 30}
  validates :status, presence: true, :inclusion => {:in => STATUS_VALUES}
  validates :gender, presence: true

  def status_name
    result = ''
    STATUS.each do |s|
      if s[0] == self.status.to_s
        result = s[1]
      end
    end
    result
  end
end

