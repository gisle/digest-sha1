use ExtUtils::MakeMaker;

WriteMakefile(
   NAME         => "Digest-SHA1",
   VERSION_FROM => "SHA1.pm",
   PREREQ_PM    => { SHA => '1.2', },
   dist         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
);
