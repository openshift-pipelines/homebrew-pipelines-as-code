# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.11.0"

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.11.0/tkn-pac_0.11.0_MacOS_all.tar.gz"
    sha256 "130fb80352ce8256e0f5e8a062cf9e80cecafe424739fcf15816ffe81935d478"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.11.0/tkn-pac_0.11.0_Linux_arm64.tar.gz"
      sha256 "9f5f467ac1436832024d2e8085898b5d0541fb027141ec958550d41bca27db88"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.11.0/tkn-pac_0.11.0_Linux_x86_64.tar.gz"
      sha256 "c30dcf48358fb4a28ff323836120c0174bff4ea1ea256158e11e23f32a96056f"

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
