require_relative 'data_pipeline'
require_relative 'step_utils'

pipeline = DataPipeline.new
pipeline.add_step(&:strip)
pipeline.add_step(&:downcase)
pipeline.add_step { |s| s.gsub(/[aeiou]/, '*') }
pipeline.add_step { |s| StepUtils.with_timestamp(s) }

puts pipeline.run('  Hello World!  ')
