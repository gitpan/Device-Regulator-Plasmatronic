use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'Device::Regulator::Plasmatronic',
    'VERSION_FROM'	=> 'lib/Device/Regulator/Plasmatronic.pm', # finds $VERSION
    'PREREQ_PM'		=> {
			# (optional) 'Device::SerialPort' => 0,
			'Time::HiRes' => 0,
		}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (
      	#ABSTRACT_FROM => 'lib/Device/Regulator/Plasmatronic.pm', # retrieve abstract from module
       AUTHOR     => 'Scott Penrose <scottp@dd.com.au>') : ()),
    'LIBS'		=> [''], # e.g., '-lm'
    'DEFINE'		=> '', # e.g., '-DHAVE_SOMETHING'
	# Insert -I. if you add *.h files later:
    'INC'		=> '', # e.g., '-I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # 'OBJECT'		=> '$(O_FILES)', # link all the C files too
    'test'              => {TESTS => 'test/pl'},
);
