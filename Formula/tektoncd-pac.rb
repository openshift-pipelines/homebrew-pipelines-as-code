# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.24.4"

  depends_on "git"
  depends_on "tektoncd-cli" => :optional

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.24.4/tkn-pac_0.24.4_darwin_all.tar.gz"
    sha256 "014402e24055259e43b0f33a9079117cede89d09a43e600559e58c890679884e"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.24.4/tkn-pac_0.24.4_linux_x86_64.tar.gz"
      sha256 "8fd7dc536a64f52570197ecd2207734e78d815f1f20f7d1315a0241ebaf85a05"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.24.4/tkn-pac_0.24.4_linux_arm64.tar.gz"
      sha256 "6ee38dfe52edd2b2046a01a53fe5960997ed8351811d33162a879b14c8c01501"

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
