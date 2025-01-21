# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.32.0"

  depends_on "git"
  depends_on "tektoncd-cli" => :optional

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.32.0/tkn-pac_0.32.0_darwin_all.tar.gz"
    sha256 "8aad235e6e8c5d199e0ae2ac3af6bcc0e59dbd52fddc46c36aaf1c3acdaf1aef"

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
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.32.0/tkn-pac_0.32.0_linux_x86_64.tar.gz"
        sha256 "c06e5fe655ced17d5522a2518b779bccc763d628f243c598615526132baec9d1"

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
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.32.0/tkn-pac_0.32.0_linux_arm64.tar.gz"
        sha256 "f48b26cc480236c364f2b131246df2c67031e2965fc963fa217a024bcec1f26a"

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
