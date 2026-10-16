# frozen_string_literal: true

require "minitest/autorun"
require "cisco_asa"

class CiscoASATest < Minitest::Test
  def test_version_matches_gemspec
    spec = Gem::Specification.load(File.expand_path("../cisco_asa.gemspec", __dir__))
    assert_equal CiscoASA::VERSION, spec.version.to_s
    assert_equal "cisco_asa", spec.name
  end

  def test_errors_can_be_rescued_as_standard_errors
    assert_operator CiscoASA::Error, :<, StandardError
  end

  def test_package_contains_only_library_and_documentation
    spec = Gem::Specification.load(File.expand_path("../cisco_asa.gemspec", __dir__))
    assert_equal %w[CHANGELOG.md LICENSE README.md lib/cisco_asa.rb lib/cisco_asa/version.rb], spec.files.sort
  end
end
