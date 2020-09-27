class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

# タイムゾーンを東京に変更
  def created_at_jst
    created_at.in_time_zone('Tokyo')
  end
end
