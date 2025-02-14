# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.33.0"

  depends_on "git"
  depends_on "tektoncd-cli" => :optional

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.33.0/tkn-pac_0.33.0_darwin_all.zip"
    sha256 "38e419fba7aa68bcccb2d32d81c5faf09d22a928c750b6050f17c089a99a1ed6"

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
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.33.0/tkn-pac_0.33.0_linux_x86_64.zip"
        sha256 "716fc2ea24065b5d067f37af79c2d5d5b22d655f8fd6c4bcf4ef52a5f374a98d"

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
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.33.0/tkn-pac_0.33.0_linux_arm64.zip"
        sha256 "4e755dcadd2e2623d97140b790ad3294fc4f2d16c0452ff478de135cea26bf6c"

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
end
