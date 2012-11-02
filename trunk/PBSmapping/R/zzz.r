.onLoad <- function(lib, pkg)
{
	library.dynam("PBSmapping", pkg, lib);
	pkg_info <- utils::sessionInfo( package="PBSmapping" )$otherPkgs$PBSmapping
	if( is.character( pkg_info$Packaged ) )
		pkg_date <- strsplit( pkg_info$Packaged, " " )[[1]][1]
	else
		pkg_date  <- date()
	
	userguide_path <- system.file( "doc/PBSmapping-UG.pdf", package = "PBSmapping")
	
	packageStartupMessage("
-----------------------------------------------------------
PBS Mapping ", pkg_info$Version, " -- Copyright (C) 2003-2012 Fisheries and Oceans Canada

PBS Mapping comes with ABSOLUTELY NO WARRANTY;
for details see the file COPYING.
This is free software, and you are welcome to redistribute
it under certain conditions, as outlined in the above file.

A complete user guide 'PBSmapping-UG.pdf' is located at 
", userguide_path, "

Packaged on ", pkg_date, "
Pacific Biological Station, Nanaimo

All available PBS packages can be found at
http://code.google.com/p/pbs-software/

To see demos, type '.PBSfigs()'.
-----------------------------------------------------------

")
}
# No Visible Bindings
# ===================
if(getRversion() >= "2.15.1") utils::globalVariables(names=c(
	"bcBathymetry",
	"nepacLL","nepacLLhigh",
	"PBSval","pythagoras",
	"surveyData",
	"towData","towTracks",
	"worldLL"),
	package="PBSmapping")

