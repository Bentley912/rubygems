##
# Represents an installed gem.  This is used for dependency resolution.

class Gem::Source::Installed < Gem::Source

  def initialize # :nodoc:
    @uri = nil
  end

  ##
  # Installed sources sort before all other sources

  def <=> other
    case other
    when Gem::Source::Installed then
      0
    when Gem::Source then
      1
    else
      nil
    end
  end

  ##
  # We don't need to download an installed gem

  def download spec, path
    nil
  end

end

