class ActiveRecord::Base
  def descriptive_error
    "#{self.class.to_s}: #{errors.full_messages.join('. ')}"
  end
end
