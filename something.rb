class Something < Formula
  desc "To test homebrew"
  homepage "https://harikrishnanbalagopal.github.io/move2kube"
  license "Apache-2.0"
  head "https://github.com/HarikrishnanBalagopal/something.git"

  stable do
    url "https://github.com/HarikrishnanBalagopal/something.git", using: :git, tag: "v0.1.3", revision: "8eaf3f5132f195df044ca754ad12d96a8751a26a"
  end

  bottle do
    root_url "https://github.com/HarikrishnanBalagopal/homebrew-something/releases/download/something-0.1.2"
    cellar :any_skip_relocation
    sha256 "2798c7e80dbbf16c26db665c5b48da29b7900241867a81878a3a153bea43f32e" => :catalina
    sha256 "5e3c5c4bd927c3d4068cfbca2c3139ef87670983736aa8eef558374d006faa37" => :x86_64_linux
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
