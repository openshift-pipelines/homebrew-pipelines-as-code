# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "Tekton PAC - The command line interface for interacting with Pipelines as Code"
  homepage "https://github.com/openshift-pipelines/pipelines-as-code"
  version "0.4.4"
  bottle :unneeded

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.4.4/tkn-pac_0.4.4_MacOS_all.tar.gz"
    sha256 "d199cfebc4a82327f9190311ff64fbf4dfdefd8d19944bfb48777220729532d4"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.4.4/tkn-pac_0.4.4_Linux_x86_64.tar.gz"
      sha256 "75a3369c3a0a4d2fe983fb4fafee28184d7c8fe1556fdbd7c3bac976ff2bf218"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.4.4/tkn-pac_0.4.4_Linux_arm64.tar.gz"
      sha256 "79684d1924359d9a4018cb71c7598d9a32ddfd9bada93999868ee990b7390bea"
    end
  end

  depends_on "tektoncd-cli" => :optional
  depends_on "git"

  def install
    bin.install "tkn-pac" => "tkn-pac"
    output = Utils.popen_read("SHELL=bash #{bin}/tkn-pac completion bash")
    (bash_completion/"tkn-pac").write output
    output = Utils.popen_read("SHELL=zsh #{bin}/tkn-pac completion zsh")
    (zsh_completion/"_tkn-pac").write output
    prefix.install_metafiles
  end
end
