class AssemblaCli < Formula
  desc "CLI tool for Assembla ticket management"
  homepage "https://github.com/eugene-software/assembla-cli"
  url "https://github.com/eugene-software/assembla-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bd8876e99253c282fe1f9a70ca5f213d94bddc13ad96614083f3b4daf925bcfc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"assembla")
  end

  test do
    system bin/"assembla", "--help"
  end
end
