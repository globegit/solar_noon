module RSpec
  module Matchers
    # :call-seq:
    #   should be_within_a_minute_of(expected)
    #   should_not be_within_a_minute_of(expected)
    #
    # Passes if actual and expected are either DateTime or Time instances, and
    # are within 60 seconds of each other.
    #
    # == Examples
    #
    #   d1 = DateTime.parse('Tue Mar 29 14:12:19 2011')
    #   d2 = DateTime.parse('Tue Mar 29 14:12:47 2011')
    #   d3 = DateTime.parse('Tue Mar 29 19:44:47 2011')
    #
    #   d1.should be_within_a_minute_of(d2)
    #   d1.should_not be_within_a_minute_of(d3)
    #
    def be_within_a_minute_of(expected)
      Matcher.new :be_within_a_minute_of, expected do |_expected_|

        match do |actual|
          raise "#{actual.inspect} is not a Time or DateTime instance" unless [DateTime, Time].include? actual.class
          raise "#{_expected_.inspect} is not a Time or DateTime instance" unless [DateTime, Time].include? _expected_.class
          raise "#{actual.inspect} is not the same class as #{_expected_.inspect}" unless _expected_.is_a? actual.class

          diff = actual - _expected_
          diff = (diff.to_f * 24 * 60 * 60) if diff.is_a? Rational

          diff.abs <= 60
        end

        failure_message_for_should do |actual|
          <<-MESSAGE

expected #{actual.to_s} to be within 60 seconds of #{_expected_.to_s}

MESSAGE
        end

        failure_message_for_should_not do |actual|
          <<-MESSAGE

expected #{actual.to_s} to be over 60 seconds apart from #{_expected_.inspect}

MESSAGE
        end
      end
    end
  end
end
