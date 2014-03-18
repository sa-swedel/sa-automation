####################################################################################
#
# TIMEOUTS.rb
# Test page timeouts
#
# Scott Wedel
# 10 March 2014
#
####################################################################################

require 'rubygems'
require 'watir-webdriver'
require './salog.rb'
require 'headless'

# remove log file if it already exists, then create new one

File.delete( "error_log.txt" ) if File.exist?( "error_log.txt" )

login = 'admin'
pw = '123456'
site = 'http://v031.rc1.trialintel.com'
test_count = 0
fail_count = 0
loop = 0
sep = '=========================================================='

timedate = Time.new

today = timedate.inspect.to_s

# start up browser

#headless = Headless.new
#headless.start

# uncomment the line corresponding to the browser against which you want to test (no arg = firefox)

b = Watir::Browser.new
# b = Watir::Browser.new :chrome
# b = Watir::Browser.new :ie

bver = b.execute_script("return navigator.userAgent")
salog( sep, "LOG" )
salog( 'Page Timeouts testing: ADMIN ROLE', "LOG" )
datestr = 'DATE RUN: ' + today.to_s
tgtstr = 'TARGET: ' + site
salog( datestr, "LOG" )
salog( tgtstr, "LOG" )
bstr = 'BROWSER: ' + bver
salog( bstr, "LOG" )
salog( sep, "LOG" )

# 1.) LOGIN

b.goto site

b.text_field( :id, 'username' ).when_present.set login
b.text_field( :id, 'password' ).when_present.set pw
btn = b.button( :class, 'btn btn-default btn-block' ).click

# wait for dashboard to load
sleep 3

# 2.) go to Subjects page

b.element( :link => 'Subjects' ).when_present.click

# 3.) wait for ( timeout - 5min )

puts 'Waiting 60 sec ... why on earth are you watching this?'
sleep 60
puts '60 more sec... if you have nothing better to do ...'
sleep 60
puts '60 more sec... my advice is to start drinking heavily.'
sleep 60

# first timeout nag

tst = '1.) 5 minute timeout dialog appears'

nagpres = b.element( :class => 'blurMessage' ).exists?
txtpres = b.text.include?( '5 minutes' )

test_count +=1
if ( nagpres == FALSE && txtpres == TRUE  )
	salog( tst, "FAIL" )
	fail_count +=1
else
	salog( tst, "PASS" )
end

#tst = '2.) 5 minute timeout dialog disappears'

# wait for dialog to disappear

#sleep 60

#nagpres = b.element( :class => 'blurMessage' ).exists?

#test_count +=1
#if ( nagpres == FALSE )
#	salog( tst, "PASS" )
#else
#	salog( tst, "FAIL" )
#	fail_count +=1
#end

# 4 minute dialog

tst = '2.) 4 minute timeout dialog appears'

# wait for dialog to appear

sleep 60

nagpres = b.element( :class => 'blurMessage' ).exists?
txtpres = b.text.include?( '4 minutes' )

test_count +=1
if ( nagpres == FALSE && txtpres == TRUE  )
	salog( tst, "FAIL" )
	fail_count +=1
else
	salog( tst, "PASS" )
end

# tst = '4.) 4 minute timeout dialog disappears'

# wait for dialog to disappear

#sleep 60

#nagpres = b.element( :class => 'blurMessage' ).exists?

#test_count +=1
#if ( nagpres == FALSE )
#	salog( tst, "PASS" )
#else
#	salog( tst, "FAIL" )
#	fail_count +=1
#end

# 3 minute dialog

tst = '3.) 3 minute timeout dialog appears'

# wait for dialog to appear

sleep 60

nagpres = b.element( :class => 'blurMessage' ).exists?
txtpres = b.text.include?( '3 minutes' )

test_count +=1
if ( nagpres == FALSE && txtpres == TRUE  )
	salog( tst, "FAIL" )
	fail_count +=1
else
	salog( tst, "PASS" )
end

#tst = '6.) 3 minute timeout dialog disappears'

# wait for dialog to disappear

#sleep 60

#nagpres = b.element( :class => 'blurMessage' ).exists?

#test_count +=1
#if ( nagpres == FALSE )
#	salog( tst, "PASS" )
#else
#	salog( tst, "FAIL" )
#	fail_count +=1
#end

# 2 minute dialog

tst = '4.) 2 minute timeout dialog appears'

# wait for dialog to appear

sleep 60

nagpres = b.element( :class => 'blurMessage' ).exists?
txtpres = b.text.include?( '2 minutes' )

test_count +=1
if ( nagpres == FALSE && txtpres == TRUE  )
	salog( tst, "FAIL" )
	fail_count +=1
else
	salog( tst, "PASS" )
end

#tst = '8.) 2 minute timeout dialog disappears'

# wait for dialog to disappear

#sleep 60

#nagpres = b.element( :class => 'blurMessage' ).exists?

#test_count +=1
#if ( nagpres == FALSE )
#	salog( tst, "PASS" )
#else
#	salog( tst, "FAIL" )
#	fail_count +=1
#end

# 1 minute dialog

tst = '5.) 1 minute timeout dialog appears'

# wait for dialog to appear

sleep 60

nagpres = b.element( :class => 'blurMessage' ).exists?
txtpres = b.text.include?( '1 minute' )

test_count +=1
if ( nagpres == FALSE && txtpres == TRUE  )
	salog( tst, "FAIL" )
	fail_count +=1
else
	salog( tst, "PASS" )
end

#tst = '10.) 1 minute timeout dialog disappears'

# wait for dialog to disappear

#sleep 60

#nagpres = b.element( :class => 'blurMessage' ).exists?

#test_count +=1
#if ( nagpres == FALSE )
#	salog( tst, "PASS" )
#else
#	salog( tst, "FAIL" )
#	fail_count +=1
#end

# logged out

tst = '6.) Logged out after timeout'

# wait for logout

sleep 75

lgout = b.text.include?( 'You are successfully signed out' )
test_count +=1
if ( lgout == TRUE )
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end

# END: print final run/error counts and close browser

countstr = "Test completed. " + test_count.to_s + " tests run with " + fail_count.to_s + " failures"
puts countstr


b.close		
#headless.destroy







