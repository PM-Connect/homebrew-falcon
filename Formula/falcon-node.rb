class FalconNode < Formula
  desc "node.js dependency for falcon"
  homepage "https://falcon.pmcservices.co.uk"
  url ""
  sha256 "32fad8538b554a240ba5f69b1aa2e1b051500e28af5635c149122c362b93e8ac"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end