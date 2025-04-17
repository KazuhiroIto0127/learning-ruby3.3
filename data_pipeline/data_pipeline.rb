class DataPipeline
  def initialize
    @steps = []
  end

  def add_step(&block)
    @steps << block
  end

  def run(data)
    @steps.reduce(data) { |acc, step| step.call(acc) }
  end
end
