class FalconNode < Formula
  desc "node.js dependency for falcon"
  homepage "https://falcon.pmcservices.co.uk"
  url "https://assets.falcon.pmcservices.co.uk/homebrew/node-12.16.1.tar.xz"
  sha256 "14408f692ca1c6cc8cd74dcfa41e56f807486a96905ce674ca9191f3c6d63777"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end