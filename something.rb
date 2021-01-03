class Something < Formula
  desc "To test homebrew"
  homepage "https://harikrishnanbalagopal.github.io/move2kube"
  license "Apache-2.0"
  head "https://github.com/HarikrishnanBalagopal/something.git"

  stable do
    url "https://github.com/HarikrishnanBalagopal/something.git", using: :git, tag: "v0.1.3", revision: "8eaf3f5132f195df044ca754ad12d96a8751a26a"
  end

  bottle do
    root_url "https://github.com/HarikrishnanBalagopal/homebrew-something/releases/download/something-0.1.3"
    cellar :any_skip_relocation
    sha256 "0e189d1ac7f9b089cda3f6157178dd1172fa8dbebab89a295a7707c23e4f1a20" => :catalina
    sha256 "8d2f4ed441d157c59ff1e741ca7c8fa9035f5d23c6e37903529d94aa22a87f7a" => :x86_64_linux
  end

  depends_on "go@1.15" => :build

  def install
    system "make", "build"
    bin.install "./dist/something"
  end

  test do
    # this is a test
    system "#{bin}/something"
  end
end
