#
# Regular cron jobs for the font-basisschrift package
#
0 4	* * *	root	[ -x /usr/bin/font-basisschrift_maintenance ] && /usr/bin/font-basisschrift_maintenance
