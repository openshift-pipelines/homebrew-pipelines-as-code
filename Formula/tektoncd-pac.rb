# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "Tekton PAC - The command line interface for interacting with Pipelines as Code"
  homepage "https://github.com/openshift-pipelines/pipelines-as-code"
  version "0.5.7"

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.5.7/tkn-pac_0.5.7_MacOS_all.tar.gz"
    sha256 "f5c2e91c4777254a0ff62a820332777982301f69bbb55f17a42322b9419fa1be"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.5.7/tkn-pac_0.5.7_Linux_arm64.tar.gz"
      sha256 "8d47b7f763ba9598d77499da21783fbdf99a5255db2aa2385dcf0d682a732e80"

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
      url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/0.5.7/tkn-pac_0.5.7_Linux_x86_64.tar.gz"
      sha256 "676798aac59e11443e2bd0487c269491314ca1b5f53a0218b23a42499590bdcd"

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
