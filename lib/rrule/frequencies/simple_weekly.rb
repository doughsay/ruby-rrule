module RRule
  class SimpleWeekly < Frequency
    def next_occurrences
      this_occurrence = current_date
      @current_date += context.options[:interval].weeks
      [this_occurrence]
    end
  end
end
