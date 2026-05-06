require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = IonParseSqlFlow::DomainReview.new(signal: 48, slack: 35, drag: 19, confidence: 85)
    assert_equal 159, IonParseSqlFlow.domain_review_score(item)
    assert_equal "ship", IonParseSqlFlow.domain_review_lane(item)
  end
end
