print "1..2\n";

use Digest::SHA1 qw(sha1 sha1_hex);

print "not " unless sha1_hex("abc") eq "a9993e364706816aba3e25717850c26c9cd0d89d";
print "ok 1\n";

print "not " unless sha1("abc") eq pack("H*", "a9993e364706816aba3e25717850c26c9cd0d89d");
print "ok 2\n";

