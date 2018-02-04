require "slugify/version"

module Slugify
  def self.[](str, separator = "")
    str
      .unicode_normalize(:nfkd)
      .gsub(/[^[:alnum:]]/, separator.to_s)
      .downcase
  end
end
