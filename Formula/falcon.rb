class Falcon < Formula
  desc "Everything you need to get started with Falcon"
  homepage "https://falcon.pmcservices.co.uk"
  url ""
  sha256 ""
  depends_on "PM-Connect/falcon/falcon-node"

  def install
    inreplace "bin/falcon", /^CLIENT_HOME=/, "export FALCON_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/falcon", "\"$DIR/node\"", "#{Formula["falcon-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/falcon"

    bash_completion.install "#{libexec}/node_modules/@pm-connect/plugin-autocomplete/autocomplete/brew/bash"
    zsh_completion.install "#{libexec}/node_modules/@pm-connect/plugin-autocomplete/autocomplete/brew/zsh/_falcon"
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