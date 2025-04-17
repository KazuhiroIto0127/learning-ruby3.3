module StepUtils
  def self.with_timestamp(data)
    "#{data} (processed at #{Time.now})"
  end
end
