# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k8sk9s.dev/"
  version "0.17.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/v0.17.5/k9s_Darwin_x86_64.tar.gz"
    sha256 "725a8b791bbfb24e2f06a56aabcd715d8648674fb62a50752f139432a2953114"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/v0.17.5/k9s_Linux_x86_64.tar.gz"
      sha256 "4b2e593eadf01fc64aa63f78310f54fb8440cadbb9dfa1c7208f7dfe028c074f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/v0.17.5/k9s_Linux_arm64.tar.gz"
        sha256 "90001df769fc164448a437c3166346d8e786c9f0db88af4ef078f49b8964f569"
      else
      end
    end
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
