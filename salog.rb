###########################################################
#
# salog.rb
#
# log functions for SA test automation
#
# Scott Wedel
# 26 November 2013
#
###########################################################

def salog( test, result )
	lfile = File.open( "error_log.txt", "a+" )
	if result == "PASS"
		puts test + ": PASS"
		lfile.puts test + ": PASS"
	elsif result == "LOG"
		puts test
		lfile.puts test
	else
		puts test + ": FAIL"
		lfile.puts test + ": FAIL"
	end
end

