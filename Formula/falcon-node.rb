class FalconNode < Formula
  desc "node.js dependency for falcon"
  homepage "https://falcon.pmcservices.co.uk"
  url "https://assets.falcon.pmcservices.co.uk/homebrew/node-12.0.0.tar.xz"
  sha256 ""

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end