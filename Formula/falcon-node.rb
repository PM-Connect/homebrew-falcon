class FalconNode < Formula
  desc "node.js dependency for falcon"
  homepage "https://falcon.pmcservices.co.uk"
  url ""
  sha256 ""

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end