# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sourcegraph < Formula
  desc "Code intelligence and search"
  homepage "https://github.com/sourcegraph/sourcegraph"
  version "0.0.200198-snapshot+20230220-35357c"
  license "Sourcegraph Enterprise License (portions licensed under Apache 2)"

  depends_on "git"
  depends_on "redis"
  depends_on "sourcegraph/src-cli/src-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/0.0.200198-snapshot+20230220-35357c/sourcegraph_0.0.200198-snapshot+20230220-35357c_darwin_amd64.zip"
      sha256 "69fd7f740956ac54119ec4c8c49acc8d2eea1e89756861658d270f4376c82214"

      def install
        bin.install "sourcegraph"
      end
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/sourcegraph-app-releases/0.0.200198-snapshot+20230220-35357c/sourcegraph_0.0.200198-snapshot+20230220-35357c_darwin_arm64.zip"
      sha256 "1ff7324c86d3ca56e3204369e1d7ca432f06f61fc31af1a7683231ecb0c059f5"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/0.0.200198-snapshot+20230220-35357c/sourcegraph_0.0.200198-snapshot+20230220-35357c_linux_amd64.zip"
      sha256 "9d9a9951a3ccf07ac7bde8af88669cc0a8d2ca9007ff7709b1f1fc0822da2290"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  test do
    system "#{bin}/sourcegraph --help"
  end
end
