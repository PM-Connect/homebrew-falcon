class Falcon < Formula
  desc "Everything you need to get started with Falcon"
  homepage "https://falcon.pmcservices.co.uk"
  url "https://assets.falcon.pmcservices.co.uk/falcon-v0.1.1/falcon-v0.1.1.tar.xz"
  sha256 "c7c687c6f8ffcc06bac7bccafa86fc88d7c17ffe69946a425125f26e38ed5325"
  depends_on "PM-Connect/falcon/falcon-node"

  def install
    inreplace "bin/falcon", /^CLIENT_HOME=/, "export FALCON_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/falcon", "\"$DIR/node\"", "#{Formula["falcon-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/falcon"

    # bash_completion.install "#{libexec}/node_modules/@pm-connect/plugin-autocomplete/autocomplete/brew/bash"
    # zsh_completion.install "#{libexec}/node_modules/@pm-connect/plugin-autocomplete/autocomplete/brew/zsh/_falcon"
  end

  def caveats; <<~EOS
    To use the Falcon CLI's autocomplete --
      Via homebrew's shell completion:
        1) Follow homebrew's install instructions https://docs.brew.sh/Shell-Completion
            NOTE: For zsh, as the instructions mention, be sure compinit is autoloaded
                  and called, either explicitly or via a framework like oh-my-zsh.
        2) Then run
          $ falcon autocomplete --refresh-cache
      OR
      Use our standalone setup:
        1) Run and follow the install steps:
          $ falcon autocomplete
  EOS
  end

  test do
    system bin/"falcon", "version"
  end
end