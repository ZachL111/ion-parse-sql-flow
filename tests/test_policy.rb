require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = IonParseSqlFlow::Signal.new(demand: 55, capacity: 104, latency: 12, risk: 16, weight: 13)
    assert_equal 159, IonParseSqlFlow.score(signal_case_1)
    assert_equal 'review', IonParseSqlFlow.classify(signal_case_1)
    signal_case_2 = IonParseSqlFlow::Signal.new(demand: 78, capacity: 91, latency: 22, risk: 25, weight: 11)
    assert_equal 108, IonParseSqlFlow.score(signal_case_2)
    assert_equal 'review', IonParseSqlFlow.classify(signal_case_2)
    signal_case_3 = IonParseSqlFlow::Signal.new(demand: 95, capacity: 73, latency: 10, risk: 15, weight: 11)
    assert_equal 208, IonParseSqlFlow.score(signal_case_3)
    assert_equal 'accept', IonParseSqlFlow.classify(signal_case_3)
  end
end
