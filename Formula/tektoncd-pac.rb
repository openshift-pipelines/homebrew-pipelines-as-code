# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.15.3"

  depends_on "tektoncd-cli" => :optional
  depends_on "git"

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.15.3/tkn-pac_0.15.3_MacOS_all.tar.gz"
    sha256 "2921f0b5da47e04379205b4098acc7e061dca3fd9be57eb357f71f7e8bf08c7c"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.15.3/tkn-pac_0.15.3_Linux_arm64.tar.gz"
      sha256 "73a19e126609035d93ad20cb24cf1409939c1f8c8284fc07931d2f1caa6a8794"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.15.3/tkn-pac_0.15.3_Linux_x86_64.tar.gz"
      sha256 "3551ca8e17611d62a66d92affcaf0a48cf6b3a0e3ea2a007f04f7d105a39561a"

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
