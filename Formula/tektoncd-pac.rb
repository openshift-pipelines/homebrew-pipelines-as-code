# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.9.0"

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.9.0/tkn-pac_0.9.0_MacOS_all.tar.gz"
    sha256 "1e6d640035ee85f3c41cb273e3f99fd0d597c8073034822bdd605860a1108823"

    def install
      bin.install "tkn-pac" => "tkn-pac"
      output = Utils.popen_read("SHELL=bash #{bin}/tkn-pac completion bash")
      (bash_completion/"tkn-pac").write output
      output = Utils.popen_read("SHELL=zsh #{bin}/tkn-pac completion zsh")
      (zsh_completion/"_tkn-pac").write output
      prefix.install_metafiles
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.9.0/tkn-pac_0.9.0_Linux_x86_64.tar.gz"
      sha256 "393e9384c477514efa9dd2eb28db99b4b24451dfc26bc7db2135e041074546c0"

      def install
        bin.install "tkn-pac" => "tkn-pac"
        output = Utils.popen_read("SHELL=bash #{bin}/tkn-pac completion bash")
        (bash_completion/"tkn-pac").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/tkn-pac completion zsh")
        (zsh_completion/"_tkn-pac").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.9.0/tkn-pac_0.9.0_Linux_arm64.tar.gz"
      sha256 "0740454174b7fce25ac4891ea365027b2215e38225fbb1aebee0054896cc7256"

      def install
        bin.install "tkn-pac" => "tkn-pac"
        output = Utils.popen_read("SHELL=bash #{bin}/tkn-pac completion bash")
        (bash_completion/"tkn-pac").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/tkn-pac completion zsh")
        (zsh_completion/"_tkn-pac").write output
        prefix.install_metafiles
      end
    end
  end

  depends_on "tektoncd-cli" => :optional
  depends_on "git"
end
