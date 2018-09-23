class Fzy < Formula
  desc "Fast, simple fuzzy text selector with an advanced scoring algorithm"
  homepage "https://github.com/jhawthorn/fzy"
  url "https://github.com/jhawthorn/fzy/releases/download/1.0/fzy-1.0.tar.gz"
  sha256 "80257fd74579e13438b05edf50dcdc8cf0cdb1870b4a2bc5967bd1fdbed1facf"
  head "https://github.com/jhawthorn/fzy.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "7da4e5943a2b545a5320626edc43c8dc2e5b0491f929f073d69e8cc241661631" => :mojave
    sha256 "43f5d1a33e63cc16f8a922d3760424f4b2445643ba8260dc31c8cc1f67ad271c" => :high_sierra
    sha256 "c1831deb1a5de5c25a48d304dcecd34b87bd9dee67980ea7cbc343289d82a77f" => :sierra
    sha256 "88b4a4dd16289fc68a4205911e2a7a1d82ca25aafe1beef9a249c02787c28a98" => :el_capitan
    sha256 "a72164d23f90277c08c19617c57ddacf7c30dfc9751cc9428d2b1ffd8bd513df" => :yosemite
  end

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "foo", pipe_output("#{bin}/fzy -e foo", "bar\nfoo\nqux").chomp
  end
end
