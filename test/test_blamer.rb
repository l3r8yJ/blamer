# frozen_string_literal: true

require 'test_helper'

class TestBlamer < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Blamer::VERSION
  end
end
