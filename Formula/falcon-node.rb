class FalconNode < Formula
  desc "node.js dependency for falcon"
  homepage "https://falcon.pmcservices.co.uk"
  url "https://assets.falcon.pmcservices.co.uk/homebrew/node-12.16.1.tar.xz"
  sha256 "b5831b22ee97f6b5e67569746515748a60c91df8c1930e447eb5b085a4abaca1"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end