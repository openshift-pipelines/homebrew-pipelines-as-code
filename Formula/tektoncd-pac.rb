# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.22.5"

  depends_on "git"
  depends_on "tektoncd-cli" => :optional

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.22.5/tkn-pac_0.22.5_darwin_all.tar.gz"
    sha256 "0636274f6635be4a636618c03323c6b921828b189a7021f7ef84ef630e8270c3"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.22.5/tkn-pac_0.22.5_linux_arm64.tar.gz"
      sha256 "0de6f17848549cd6e1cda51cc656308789879b809e990465bccdcc3b38b77b31"

      def install
        bin.install "tkn-pac" => "tkn-pac"
        output = Utils.popen_read("SHELL=bash #{bin}/tkn-pac completion bash")
        (bash_completion/"tkn-pac").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/tkn-pac completion zsh")
        (zsh_completion/"_tkn-pac").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.22.5/tkn-pac_0.22.5_linux_x86_64.tar.gz"
      sha256 "4e352fde69ad56bf75dbe3c67ff13e3fb01da933b04b83481d482974859add57"

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
end
