use ExtUtils::MakeMaker;

WriteMakefile(
   NAME         => "Digest::SHA1",
   VERSION_FROM => "SHA1.pm",
   PREREQ_PM    => { SHA => '1.2',
		    'MIME::Base64' => '2.00',
		   },
   dist         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
);
