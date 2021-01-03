class Something < Formula
  desc "To test homebrew"
  homepage "https://harikrishnanbalagopal.github.io/move2kube"
  license "Apache-2.0"
  head "https://github.com/HarikrishnanBalagopal/something.git"

  stable do
    url "https://github.com/HarikrishnanBalagopal/something.git", using: :git, tag: "v0.1.1", revision: "2a4a7c6f2428bdf33ad641b7d3ad46c8e63ea7a8"
  end

  bottle do
    root_url "https://github.com/HarikrishnanBalagopal/homebrew-something/releases/download/something-0.1.1"
    cellar :any_skip_relocation
    sha256 "e5cbdfc539971244159da1dac42b73f48d38cfec27c96f82b9845dbc642fd73e" => :catalina
    sha256 "590a7d08f8c97f2e30f4a10be0f6a1f584e1905ba07fc5f3da456f75b2a32a92" => :x86_64_linux
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
