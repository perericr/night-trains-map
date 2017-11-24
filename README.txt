This is a map of European night trains.

Files
=====
night-trains-map.qgs	QGIS project file
scripts/download	script to download sources
scripts/convert		script to make HTML route overview

routes.csv		night train routes with data
colors.csv		colors used by the routes
frequencies.csv		operating frequencies used by the routes
operators.csv		operators with name and web pages

segments.shp		track segments used by night train lines
ferries.shp		night ferry routes (not active at the moments)
stations.shp		major stations

Requirements
============
QGIS (if you wish to use the default style) or GIS software of your choice
wget (for the download script).

dblookup plugin:
https://github.com/perericr/qgis-plugin-dblookup

To edit or make raster image
============================
chmod 755 scripts/download
./scripts/download to download background data
qgis night-trains-map.qgs, use print composer "europe"

Sources
=======
See the "source" column in routes.csv

License
=======
Open Database License 1.0, see LICENSE or (for a plaintext summary)
https://opendatacommons.org/licenses/odbl/
