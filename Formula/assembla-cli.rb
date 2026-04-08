class AssemblaCli < Formula
  desc "CLI tool for Assembla ticket management"
  homepage "https://github.com/eugene-software/assembla-cli"
  url "https://github.com/eugene-software/assembla-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d8f77f4e2151811c919bed452c99979554400a3ea49882ca615797f64fae8cbd"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"assembla")
  end

  test do
    system bin/"assembla", "--help"
  end
end
