# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TektoncdPac < Formula
  desc "tkn-pac - A command line interface for interacting with Pipelines as Code"
  homepage "https://pipelinesascode.com"
  version "0.28.0"

  depends_on "git"
  depends_on "tektoncd-cli" => :optional

  on_macos do
    url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.28.0/tkn-pac_0.28.0_darwin_all.tar.gz"
    sha256 "76832e282d3940ecd941c790cc4cd2182957517d98974d4fe71d299ae5ca5b36"

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
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.28.0/tkn-pac_0.28.0_linux_x86_64.tar.gz"
        sha256 "fc39741e1b6d1dfc833aac78713df78d521ce118db9c0d2ac7021e6a1425420f"

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
        url "https://github.com/openshift-pipelines/pipelines-as-code/releases/download/v0.28.0/tkn-pac_0.28.0_linux_arm64.tar.gz"
        sha256 "450d134762f48d5a2cc3d75ff635286fd0627857c732020019f1993265e00dad"

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
