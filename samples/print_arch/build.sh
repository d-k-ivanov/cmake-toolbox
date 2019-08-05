#/usr/bin/env bash

mkdir ./build
cd ./build
cmake ..
cd -
rm -rf build

################################### HELP ######################################
# Generators
#		Visual Studio 15 2017 [arch] = Generates Visual Studio 2017 project files.
#                                  Optional [arch] can be "Win64" or "ARM".
#   Visual Studio 14 2015 [arch] = Generates Visual Studio 2015 project files.
#                                  Optional [arch] can be "Win64" or "ARM".
#   Visual Studio 12 2013 [arch] = Generates Visual Studio 2013 project files.
#                                  Optional [arch] can be "Win64" or "ARM".
#   Visual Studio 11 2012 [arch] = Generates Visual Studio 2012 project files.
#                                  Optional [arch] can be "Win64" or "ARM".
#   Visual Studio 10 2010 [arch] = Generates Visual Studio 2010 project files.
#                                  Optional [arch] can be "Win64" or "IA64".
#   Visual Studio 9 2008 [arch]  = Generates Visual Studio 2008 project files.
#                                  Optional [arch] can be "Win64" or "IA64".
#   Visual Studio 8 2005 [arch]  = Deprecated.  Generates Visual Studio 2005
#                                  project files.  Optional [arch] can be
#                                  "Win64".
#   Borland Makefiles            = Generates Borland makefiles.
#   NMake Makefiles              = Generates NMake makefiles.
#   NMake Makefiles JOM          = Generates JOM makefiles.
#   Green Hills MULTI            = Generates Green Hills MULTI files
#                                  (experimental, work-in-progress).
#   MSYS Makefiles               = Generates MSYS makefiles.
#   MinGW Makefiles              = Generates a make file for use with
#                                  mingw32-make.
#   Unix Makefiles               = Generates standard UNIX makefiles.
#   Ninja                        = Generates build.ninja files.
#   Watcom WMake                 = Generates Watcom WMake makefiles.
#   CodeBlocks - MinGW Makefiles = Generates CodeBlocks project files.
#   CodeBlocks - NMake Makefiles = Generates CodeBlocks project files.
#   CodeBlocks - NMake Makefiles JOM
#                                = Generates CodeBlocks project files.
#   CodeBlocks - Ninja           = Generates CodeBlocks project files.
#   CodeBlocks - Unix Makefiles  = Generates CodeBlocks project files.
#   CodeLite - MinGW Makefiles   = Generates CodeLite project files.
#   CodeLite - NMake Makefiles   = Generates CodeLite project files.
#   CodeLite - Ninja             = Generates CodeLite project files.
#   CodeLite - Unix Makefiles    = Generates CodeLite project files.
#   Sublime Text 2 - MinGW Makefiles
#                                = Generates Sublime Text 2 project files.
#   Sublime Text 2 - NMake Makefiles
#                                = Generates Sublime Text 2 project files.
#   Sublime Text 2 - Ninja       = Generates Sublime Text 2 project files.
#   Sublime Text 2 - Unix Makefiles
#                                = Generates Sublime Text 2 project files.
#   Kate - MinGW Makefiles       = Generates Kate project files.
#   Kate - NMake Makefiles       = Generates Kate project files.
#   Kate - Ninja                 = Generates Kate project files.
#   Kate - Unix Makefiles        = Generates Kate project files.
#   Eclipse CDT4 - NMake Makefiles
#                                = Generates Eclipse CDT 4.0 project files.
#   Eclipse CDT4 - MinGW Makefiles
#                                = Generates Eclipse CDT 4.0 project files.
#   Eclipse CDT4 - Ninja         = Generates Eclipse CDT 4.0 project files.
#   Eclipse CDT4 - Unix Makefiles= Generates Eclipse CDT 4.0 project files.

