# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.27.1"

  depends_on "git"
  depends_on "tektoncd-cli" => :optional

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.27.1/tkn-pac_0.27.1_darwin_all.tar.gz"
    sha256 "e5918daae088ccc1559babd27d3943c43ae303b1d78b5f2c4963e5033199e130"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.27.1/tkn-pac_0.27.1_linux_x86_64.tar.gz"
        sha256 "b40f08e042e13cbf91fbbe3c02f9e44108a417f32b9733d9c28776b10ae1ebc6"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.27.1/tkn-pac_0.27.1_linux_arm64.tar.gz"
        sha256 "3b5a16398224ba315a67ccd25d1feadbe6a4818e09def3a0e76459b48e1dd7c7"

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
