# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9ss.io"
  version "0.7.13"

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/0.7.13/k9s_0.7.13_Darwin_x86_64.tar.gz"
    sha256 "a3608355194909b24109b3cc253caa90992a1b021efd9b842482e8923ac30853"
  elsif OS.linux?
    url "https://github.com/derailed/k9s/releases/download/0.7.13/k9s_0.7.13_Linux_x86_64.tar.gz"
    sha256 "0391df9ac040d6f8d3559643468a355fbacc3096fb9c6adedd3399a6ef6a58ef"
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
