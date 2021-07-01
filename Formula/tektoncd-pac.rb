# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "Tekton PAC - The command line interface for interacting with Pipelines as Code"
  homepage "https://github.com/openshift-pipelines/pipelines-as-code"
  version "0.1"
  bottle :unneeded
  depends_on :linux

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.1/tkn-pac_0.1_Linux_x86_64.tar.gz"
      sha256 "c1b0396257b29641c4d61e9192c0663b5a20a2b426d2ae9dbad5e34fc276dbe0"
    end
  end

  depends_on "tektoncd-cli" => :optional
  depends_on "git"

  def install
    bin.install "tkn-pac"- => "tkn-pac"
    output = Utils.popen_read("SHELL=bash #{bin}/tkn-pac completion bash")
    (bash_completion/"tkn-pac").write output
    output = Utils.popen_read("SHELL=zsh #{bin}/tkn-pac completion zsh")
    (zsh_completion/"_tkn-pac").write output
    prefix.install_metafiles
  end
end
