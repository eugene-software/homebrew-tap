class AssemblaCli < Formula
  desc "CLI tool for Assembla ticket management"
  homepage "https://github.com/eugene-software/assembla-cli"
  url "https://github.com/eugene-software/assembla-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c4707f815e5614f757db2c49c9c14c5f4f6fed240af5d3c23ed682fe4966d8b1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"assembla")
  end

  test do
    system bin/"assembla", "--help"
  end
end
