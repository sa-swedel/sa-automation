####################################################################################
#
# SC-HPSCR-NM.rb
# Test "happy path" conditions as a Study Coordinator
# No menu testing due to UI changes - 1/21/14
#
# Scott Wedel
# 14 January 2014
#
# Tests from the 'CRC Script' sheet in the QC Test Modules V1.0 spreadsheet
#
####################################################################################

require 'rubygems'
require 'watir-webdriver'
require './salog.rb'
require 'headless'

# remove log file if it already exists, then create new one

File.delete( "error_log.txt" ) if File.exist?( "error_log.txt" )

# vars

login = 'scsite123'
pw = '1qaz@WSX'
site = 'http://develop.trialintel.com'
test_count = 0
fail_count = 0
loop = 0
sep = '=========================================================='
#menus = ['Recent Activity', 'Queries', 'Safety Reporting', 'Trial Intel', 'Admin Links']
temp = 0

timedate = Time.new

day = timedate.strftime("%d")
month = timedate.strftime("%B")
year = timedate.strftime("%Y")

#today = day.to_s + ' ' + month.to_s + ' ' + year.to_s
today = timedate.inspect.to_s

# start up browser

headless = Headless.new
#headless.start

# uncomment the line corresponding to the browser against which you want to test (no arg = firefox)

b = Watir::Browser.new
# b = Watir::Browser.new :chrome
# b = Watir::Browser.new :ie

bver = b.execute_script("return navigator.userAgent")
salog( sep, "LOG" )
salog( 'STUDY COORDINATOR ROLE: \'HAPPY PATH\' AUTOMATED TESTS', "LOG" )
datestr = 'DATE RUN: ' + today.to_s
tgtstr = 'TARGET: ' + site
salog( datestr, "LOG" )
salog( tgtstr, "LOG" )
bstr = 'BROWSER: ' + bver
salog( bstr, "LOG" )
salog( sep, "LOG" )

b.goto site

# TEST #1: Login as Data Manager
tst = "1 - LOGIN"
salog( tst, "LOG" )
salog( sep, "LOG" )

tst = '1.1: Login as Data Manager'

test_count +=1

b.text_field( :id, 'username' ).when_present.set login
b.text_field( :id, 'password' ).when_present.set pw
btn = b.button( :class, 'btn btn-default btn-block' ).click

# wait for dashboard to load
sleep 3

#b.link( :title => 'Show/Hide Navigation Menu' ).when_present.click

utst = b.text.include? 'Hi, SC Site1,2,3'

if ( utst == true )
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end
salog( sep, "LOG" )

# TEST #2: MENUS ETC
#tst = "2 - MENUS, ETC."
#salog( tst, "LOG" )
#alog( sep, "LOG" )

#while loop < menus.length

	#case loop
	#when 0	
		# TEST 2.1 - correct links exist		
		#tst = "2." + (loop+1).to_s + ": " + menus[loop] + ": links exist"
		#salog( tst, "LOG" )
		#test_count +=1

		#b.link( :text => menus[loop] ).when_present.click
		#sleep 3
		#ns_tst = b.link( :text => 'New Subjects' ).exists?
		#tf_tst = b.link( :text => 'Today\'s Forms' ).exists?

		
		#if( ns_tst == true && tf_tst == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

		# click links and make sure accordion expands

		#TEST 2.2 - make sure accordions expand (New Subjects)		
		#tst = "2." + (loop+2).to_s + ": " + menus[loop] + ": accordions expand (New Subjects)"
		#salog( tst, "LOG" )
		#test_count +=1

		#b.link( :text => 'New Subjects' ).click 
		#conex = b.html.include? 'Consented'
		#vwbex = b.link( :text => 'View' ).exists?

		
		#if ( conex == true && vwbex == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

		# TEST 2.3 - make sure accordions expand (Today\'s Forms)	
		#test_count += 1
		#tst = "2." + (loop+3).to_s + ": " + menus[loop] + ": accordions expand (Today\'s Forms)"		
		#salog( tst, "LOG" )
				

		#b.link( :text => 'Today\'s Forms' ).click
		#exist = b.link( :text => 'View' ).exists?

		#if ( exist == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

	#when 1

		# TEST 2.4 - proper links exist
		#test_count += 1		
		#tst = "2." + (loop+3).to_s + ": " + menus[loop] + ": proper links exist"
		#salog( tst, "LOG" )
			

		#b.link( :text => menus[loop] ).click
		#sleep 10

		#opq_tst = b.link( :text => 'Open Queries I have Posted' ).exists?
		#clq_tst = b.link( :text => 'Closed Queries I have Posted' ).exists?
		#otq_tst = b.link( :text => 'Other Queries I did NOT create' ).exists?

		# DEBUG
		#puts 'Open Q: ' + opq_tst.to_s
		#puts 'Clos Q: ' + clq_tst.to_s
		#puts 'Othr Q: ' + otq_tst.to_s

		
		#if ( opq_tst = true && clq_tst == true && otq_tst == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

		# TEST 2.5 - open queries/accordion expands
		#test_count +=1
		#tst = "2." + (loop+4).to_s + ": " + menus[loop] + ": accordions expand"
		#salog( tst, "LOG" )
		

		#b.link( :text => 'Open Queries I have Posted' ).when_present.click
		#opqctst = b.text.include?( 'You don\'t have any open queries that belong to you' )
		#exist = b.link( :text => 'View' ).exists?

		#if ( opqctst == true || exist == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

		# TEST 2.6 - closed queries/accordion expands
		#test_count +=1
		#tst = "2." + (loop+5).to_s + ": " + menus[loop] + ": closed queries/accordion expands"
		#salog( tst, "LOG" )
		

		#b.link( :text => 'Closed Queries I have Posted' ).when_present.click
		#clqctst = b.text.include?( 'You don\'t have any closed queries that belong to you' )
		#exist = b.link( :text => 'View' ).exists?

		#if ( clqctst == true || exist == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

		# TEST 2.7 - other queries
		#test_count +=1
		#tst = "2." + (loop+6).to_s + ": " + menus[loop] + ": other queries"
		#salog( tst, "LOG" )
		

		#exist = b.link( :text => 'View' ).exists?

		#if ( exist == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

	#when 2	# Safety Reporting
		
		# TEST 2.8 - Safety Reporting		
		#test_count +=1
		#tst = "2." + (loop+6).to_s + ": " + menus[loop]
		#salog( tst, "LOG" )
		

		#b.link( :text => menus[loop] ).click
		#sleep 3

		#cv_tst = b.link( :text => 'ConMed Visit Forms' ).exists?
		#ae_tst = b.link( :text => 'Adverse Event Visit Forms' ).exists?
		#if ( cv_tst == true && ae_tst == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )

	#when 3 #Trial Intel

		# TEST 2.9 - Trial Intel
		#test_count +=1
		#tst = "2." + (loop+6).to_s + ": " + menus[loop]
		#salog( tst, "LOG" )
		

		#b.link( :text => menus[loop] ).click
		#sleep 3

		#np_tst = b.div( :class => 'top_section reportBox' ).exists?
		#bt_tst = b.button( :class => 'addReport' ).exists?

		#puts np_tst
		#puts bt_tst
				
		#test_count += 1
		#if ( np_tst == true && bt_tst == true )
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end

		#salog( sep, "LOG" )

	#when 4 #Admin Links

		# TEST 2.10 - Admin Links
		#test_count +=1
		#tst = "2." + (loop+6).to_s + ": " + menus[loop]
		#salog( tst, "LOG" )
		

		#b.link( :text => menus[loop] ).click
		#sleep 3

		#al_tst = b.text.include? 'Admin Links:'

		#if al_tst == true
			#salog( tst, "PASS" )
		#else
			#salog( tst, "FAIL" )
			#fail_count +=1
		#end
		#salog( sep, "LOG" )
	#end		
#loop +=1
#end

# TEST 3: LEFT HAND NAVIGATION MENU

salog( '3. LEFT HAND NAVIGATION MENU', "LOG" )
salog( sep, "LOG" )

# 3.1: click "Sites" link, should retract accordion

tst = '3.1: Sites link retracts accordion'

b.link( :text => 'Sites' ).when_present.click
sleep 3
# make sure none of the sites are still shown (accordion has retracted)

exone = b.text.include? '101-Demo 101'
extwo = b.text.include? '102-Demo 102'
exthr = b.text.include? '103-Demo 103'

test_count +=1
if (exone == false && extwo == false && exthr == false)
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end
#salog( sep, "LOG" )

# 3.2: click "Sites" link again, should expand accordion

tst = '3.2: Sites link expands accordion'

b.link( :text => 'Sites' ).when_present.click
sleep 3
# make sure the sites are shown (accordion has expanded)

exone = b.text.include? '101-Demo 101'
extwo = b.text.include? '102-Demo 102'
exthr = b.text.include? '103-Demo 103'

test_count +=1
if (exone == true && extwo == true && exthr == true)
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end
salog( sep, "LOG" )

# TEST 4: view forms

salog( '4. VIEW FORMS', "LOG" )
salog( sep, "LOG" )

# 4.1: open a subject from the left menu, load form and verify

tst = '4.1: Open subject from left side menu, load form, and verify'

b.link( :text => '101-Demo 101' ).when_present.click
b.link( :text => '101-999' ).when_present.click

b.element( :css => '#ui-accordion-accordion-header-0 > a:nth-child(2)' ).when_present.click

b.element( :text => 'View' ).when_present.click

sleep 3 # wait for form to load

# verify subject ID & form name

# DEBUG: getting bg color from queried question
# puts b.div( :id => 'RFICSTAT' ).style 'background-color'

idex = b.text.include?( '101-999' )
frmex = b.text.include?( 'Informed Consent' )

test_count +=1
if (idex == true && frmex == true)
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end
#salog( sep, "LOG" )

# go back to subject page

b.link( :text => 'Return to Subject' ).click

# 4.2: view sign-off/Investigator signature form  REMOVED 12/09/2013

tst = '4.2: View sign-off/Investigator signature form (REMOVED 12/09/13)'

salog( tst, "LOG" )
salog( sep, "LOG" )

# b.element( :xpath => '/html/body/div[2]/div[2]/div[3]/div/div/div/div[2]/div/div/table[2]/tbody/tr[2]/td[5]/a' ).when_present.click
# sleep 2

# verify subject id and form title are present

#idex = b.text.include?( '101-999' )
#titex = b.text.include?( 'Investigator Signature' )

#test_count +=1
#if (idex == true && titex == true )
#	salog( tst, "PASS" )
#else
#	salog( tst, "FAIL" )
#	fail_count +=1
#end
#salog( sep, "LOG" )

# go back to subject page

#b.link( :text => 'Return to Subject' ).click

# TEST 5: Create Queries in Query Manager

salog( '5. OPEN QUERY MANAGER', "LOG" )
salog( sep, "LOG" )

# 5.1: click on a question/response in form to open query manager

tst = '5.1: click on ?/response to open query manager'

#b.link( :text => '101-Demo 101' ).when_present.click
b.link( :text => '101-999' ).when_present.click
b.link( :text => 'View' ).when_present.click
b.goto( site + "/INFCONSForms/view/1?siteID=1" )
b.element(:css, "div.to_click").click

test_count +=1
qmex = b.link( :id, "ui-id-2" ).exists?
if ( qmex == true )
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end
salog( sep, "LOG" )

# 5.2: verify "Query" exists in the dropdown

#tst = '5.2: verify \'Query\' exists in the dropdown'

#elems = Array.new
#elems = b.select_list( :id, "data[Query][query_type_id]" ).options

#0.upto(elems.length - 1) do |i|
	#puts elems[i].text
	#if (elems[i].text == 'Query' )
		#temp +=1
		#break
	#end
#end


#test_count +=1
#if ( temp > 0 )
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end
#salog( sep, "LOG" )

# 5.3: select Query, add note w. numbers/letters/symbols, submit query

#tst = '5.3: Select Query * Add Note w. numbers/letters/symbols * Submit Query'

#b.select_list( :id, "data[Query][query_type_id]" ).select 'Query'
#sleep 2
#b.text_field(:id, "data[QueryPost][0][post]").set "Th1s I$ 4 Qu3r& *()!"
#sleep 2
# click submit
#b.element(:id, "btnsubmit").click
#sleep 3

# now go to open queries tab and make sure the new query is there

#b.link( :id, "ui-id-2" ).click
#sleep 2
#b.link( :class, "btn btn-info AddPost").click
#sleep 2

#txtex = ( ( b.text.include? 'Th1s I$ 4 Qu3r& *()!' ) || ( b.text.include? 'Query' ))
#test_count +=1
#if txtex == true
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end


# 5.4: Dismiss Query Manager

#tst = '5.4: Dismiss Query Manager'

#sleep 2
#b.element( :text => 'Return to Queries' ).when_present.click
#sleep 2
#b.element( :xpath => '//body[@id=\'form_page_layout\']/div[3]/div/button' ).when_present.click
#sleep 2

#ex = b.text.include?( 'Query Manager' )
#test_count +=1
#puts ex
#if (ex == false)
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# 5.5: verify background color of queried question/response

#tst = '5.5: verify background color of queried question/response'

#test_count +=1
#if (b.div( :id => 'RFICDTC' ).style 'background-color' == 'rgba(255, 249, 215)')
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

#salog( sep, "LOG" )

# TEST 6: view & delete queries in query manager, QM column sorting

salog( '6. VIEW QUERIES IN QUERY MANAGER, QM COLUMN SORTING', "LOG" )
salog( sep, "LOG" )

# 6.1: Open QM & verify it opens to New Query tab

tst = '6.1: Open QM & verify it opens to New Query tab'

b.goto( site + "/INFCONSForms/view/1?siteID=1" )
b.element(:css, "div.to_click").click

test_count +=1
ex = b.text.include?( 'You don\'t have permissions to submit new queries.' )
if (ex == true)
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end

# 6.2: switch to open queries tab, verify columns exist

b.link( :id, "ui-id-2" ).click
sleep 2

tst = '6.2: Verify correct columns exist'

mnunms = Array.new
mnunms = ['Query ID', 'Posted', 'Responses', 'Visit Name', 'Form Element', 'Posted By']


#puts b.table( :id => 'openQuery' )[1][2].text
tmp = 0
test_count +=1
rwct = b.table( :id => 'openQuery' ).rows.length

0.upto( rwct ) do |num|	
	ex = b.link( :text => mnunms[num] ).exists?
	if ex == false
		tmp +=1
		break
	end
end

if tmp == 0
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end

# 6.3: verify sorting by column

# ascending

ascloop = 0

	while ascloop < mnunms.length
		tst = '6.2.' + ascloop.to_s + 'asc: Verify sorting ' + mnunms[ascloop] + ' column (ascending)'
		b.link( :text => mnunms[ascloop] ).click
		sleep 2
		test_count +=1
		topcell = b.table( :id => 'openQuery' )[1][ascloop].text.to_s
		#puts topcell
		nxtcell = b.table( :id => 'openQuery' )[2][ascloop].text.to_s
		#puts nxtcell
		if ( topcell <= nxtcell )
			salog( tst, "PASS" )
		else
			salog( tst, "FAIL" )
			fail_count +=1
			#break
		end
		ascloop +=1
	end

dscloop = 0

	while dscloop < mnunms.length
		tst = '6.2.' + dscloop.to_s + 'desc: Verify sorting ' + mnunms[dscloop] + ' column (descending)'
		b.link( :text => mnunms[dscloop] ).click
		sleep 2
		test_count +=1
		topcell = b.table( :id => 'openQuery' )[1][dscloop].text.to_s
		#puts topcell
		nxtcell = b.table( :id => 'openQuery' )[2][dscloop].text.to_s
		#puts nxtcell
		if ( topcell >= nxtcell )
			salog( tst, "PASS" )
		else
			salog( tst, "FAIL" )
			fail_count +=1
			#break
		end
		dscloop +=1
	end

# 6.4: delete query

#tst = '6.4: Delete query'

#qnum = b.table( :id => 'openQuery' )[1][0].text
#puts qnum

#b.element( :text => 'Delete' ).when_present.click
#sleep 2
#b.driver.switch_to.alert.accept
#sleep 2
#b.driver.switch_to.alert.accept

#test_count +=1
#psscnt = 0

#0.upto( rwct ) do |num|
	#cpnum = b.table( :id => 'openQuery' )[1][num]
	#if ( qnum == cpnum )
		#salog( tst, "FAIL" )
		#fail_count +=1
		#break
	#else
		#psscnt +=1
	#end
#end

#if ( psscnt > 0 )
	#salog( tst, "PASS" )
#end

# 6.5: Dismiss Query Manager

tst = '6.5: Dismiss Query Manager'

#sleep 2
#b.element( :text => 'Return to Queries' ).when_present.click
sleep 2
b.element( :xpath => '//body[@id=\'form_page_layout\']/div[3]/div/button' ).when_present.click
sleep 2

ex = b.text.include?( 'Query Manager' )

	test_count +=1
	#puts ex
	if (ex == false)
		salog( tst, "PASS" )
	else
		salog( tst, "FAIL" )
		fail_count +=1
	end

# puts 'Here is where you should return to subject'


#salog( sep, "LOG" )

# TEST 7: create protocol deviation query in Query Manager

#salog( '7. CREATE PROTOCOL DEVIATION QUERY IN QUERY MANAGER', "LOG" )
#salog( sep, "LOG" )

# 7.1: click on a question/response in form to open query manager

#tst = '7.1: click on ?/response to open query manager'

#b.link( :text => '101-Demo 101' ).when_present.click
#b.link( :text => 'Return to Subject' ).when_present.click
#sleep 3
#b.link( :text => '101-999' ).when_present.click
#b.link( :text => 'View' ).when_present.click
#b.link( :xpath => '/html/body/div[2]/div[2]/div[3]/div/div/div/div[2]/div/div/table[2]/tbody/tr[2]/td[5]/a' ).when_present.click
#b.goto( site + "/INFCONSForms/view/1701?siteID=1" )
#b.element(:css, "div.to_click").click

#test_count +=1
#qmex = b.link( :id, "ui-id-2" ).exists?
#if ( qmex == true )
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# 7.2: verify "Protocol Deviation" exists in the dropdown

#tst = '7.2: verify \'Protocol Deviation\' exists in the dropdown'

#mnuelems = Array.new
#mnuelems = b.select_list( :id, "data[Query][query_type_id]" ).options

#0.upto(mnuelems.length - 1) do |i|
	#puts mnuelems[i].text
	#if (mnuelems[i].text == 'Protocol Deviation' )
		#temp +=1
		#break
	#end
#end

#test_count +=1
#if ( temp > 0 )
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# 7.3: create protocol deviation query

#tst = '7.3: create Protocol Deviation query'

#b.select_list( :id, "data[Query][query_type_id]" ).select 'Protocol deviation'
#sleep 2
#b.text_field(:id, "data[QueryPost][0][post]").set "Th1s I$ 4 PD Qu3r& *()!"
#sleep 2
# click submit
#b.element(:id, "btnsubmit").click
#sleep 3

# now go to protocol deviation tab and make sure the new query is there

#b.link( :id, "ui-id-3" ).click
#sleep 2
#b.link( :class, "btn btn-info AddPost").click
#sleep 2

#txtex = b.text.include? 'PD'
#test_count +=1
#if txtex == true
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# 7.4: Dismiss Query Manager

#tst = '7.4: Dismiss Query Manager'

#sleep 2
#b.button( :id => 'btnReturnToQueries' ).click
#sleep 2
#b.element( :xpath => '//body[@id=\'form_page_layout\']/div[3]/div/button' ).when_present.click
#sleep 2

#ex = b.text.include?( 'Query Manager' )
#test_count +=1
#puts ex
#if (ex == false)
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# 7.5: Return to Query Manager, delete protocol deviation query

#tst = '7.5: Return to Query Manager, delete protocol deviation query'

#b.goto( site + "/INFCONSForms/view/2?siteID=1" )
#b.element(:css, "div.to_click").click

#b.link( :id, "ui-id-3" ).click
#sleep 2

#qnum = b.table( :id => 'PDopenQuery' )[1][0].text
#b.element( :text => 'Delete' ).when_present.click
#sleep 2
#b.driver.switch_to.alert.accept
#sleep 2
#b.driver.switch_to.alert.accept


#sleep 2
#rwct = b.table( :id => 'PDopenQuery' ).rows.length
#test_count +=1
#psscnt = 0

#0.upto( rwct ) do |num|
	#cpnum = b.table( :id => 'PDopenQuery' )[1][num]
	#if ( qnum == cpnum )
		#salog( tst, "FAIL" )
		#fail_count +=1
		#break
	#else
		#psscnt +=1
	#end
#end

#if ( psscnt > 0 )
	#salog( tst, "PASS" )
#end

# dismiss query manager (no test case needed at this point)

#sleep 2
#b.element( :xpath => '//body[@id=\'form_page_layout\']/div[3]/div/button' ).when_present.click
#sleep 5

# puts 'return to subject here'

b.link( :text => 'Return to Subject' ).when_present.click

salog( sep, "LOG" )

#salog( '8. CREATE GENERAL COMMENT QUERY IN QUERY MANAGER', "LOG" )
#salog( sep, "LOG" )


# TEST 8: create general comment query in Query Manager

#tst = '8.1: click ?/response to open Query Manager'
#sleep 3

#b.element( :xpath => '/html/body/div[2]/div[2]/div[3]/div/div/div/div[2]/div/div/table[2]/tbody/tr[2]/td[5]/a' ).when_present.click
#b.link( :text => 'View' ).when_present.click

#b.goto( site + "/INFCONSForms/view/2?siteID=1" )
#b.element(:css, "div.to_click").click

#test_count +=1
#cmex = b.link( :id, "ui-id-4" ).exists?
#if ( cmex == true )
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# verify General Comment exists in dropdown

#tst = '8.2: verify \'General comment\' exists in the dropdown'

#gcmelems = Array.new
#gcmelems = b.select_list( :id, "data[Query][query_type_id]" ).options

#0.upto(gcmelems.length - 1) do |i|
	#puts mnuelems[i].text
	#if (gcmelems[i].text == 'General comment' )
		#temp +=1
		#break
	#end
#end

#test_count +=1
#if ( temp > 0 )
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# 8.3: create general comment query

#tst = '8.3: create General comment query'

# select General Comment from dropdown, submit query

#b.select_list( :id, "data[Query][query_type_id]" ).select 'General comment'
#sleep 2
#b.text_field(:id, "data[QueryPost][0][post]").set "Th1s I$ 4 GC Qu3r& *()!"
#sleep 2
# click submit
#b.element(:id, "btnsubmit").click
#sleep 3

# now go to general comment tab and make sure the new query is there

#b.link( :id, "ui-id-4" ).click
#sleep 2
#b.link( :class, "btn btn-info AddPost").click
#sleep 2

#txtex = b.text.include? 'GC'
#test_count +=1
#if txtex == true
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

#sleep 2
#b.button( :id => 'btnReturnToQueries' ).click
#sleep 2
#b.element( :xpath => '//body[@id=\'form_page_layout\']/div[3]/div/button' ).when_present.click
#sleep 2

# 8.4: delete general comment query in Query Manager

#tst = '8.4: Delete general comment query'

#b.goto( site + "/INFCONSForms/view/2?siteID=1" )
#b.element(:css, "div.to_click").click

#b.link( :id, "ui-id-4" ).click
#sleep 2

#qnum = b.table( :id => 'GCopenQuery' )[1][0].text
#b.element( :text => 'Delete' ).when_present.click
#sleep 2
#b.driver.switch_to.alert.accept
#sleep 2
#b.driver.switch_to.alert.accept

#sleep 5

#rwct = b.table( :id => 'GCopenQuery' ).rows.length
#test_count +=1
#psscnt = 0

#0.upto( rwct ) do |num|
	#cpnum = b.table( :id => 'GCopenQuery' )[1][num]
	#if ( qnum == cpnum )
		#salog( tst, "FAIL" )
		#fail_count +=1
		#break
	#else
		#psscnt +=1
	#end
#end

#if ( psscnt > 0 )
	#salog( tst, "PASS" )
#end

# dismiss query manager

#sleep 2
#b.element( :xpath => '//body[@id=\'form_page_layout\']/div[3]/div/button' ).when_present.click
#sleep 5

# puts 'return to subject here'

#b.link( :text => 'Return to Subject' ).when_present.click

#salog( sep, "LOG" )

#salog( '9. APPLY/REMOVE SUBJECT DATA ENTRY LOCK', "LOG" )
#salog( sep, "LOG" )

# 9.1: Apply Subject Data Entry Lock

#tst = '9.1: Apply Subject Data Entry Lock'

#b.link( :text => 'Apply Data Entry Lock' ).when_present.click
#sleep 2
#b.driver.switch_to.alert.accept

# verify data cannot be entered/edited

#b.link( :text => 'Edit Subject' ).when_present.click

#sleep 3

#test_count +=1
#if b.text.include? 'The subject has been locked for data entry and editing is not possible.'
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

# 9.2: Remove Subject Data Entry Lock

#tst = '9.2: Remove Subject Data Entry Lock'

#b.link( :text => 'Remove Data Entry Lock' ).when_present.click
#sleep 2
#b.driver.switch_to.alert.accept
#sleep 3

#test_count +=1
#if b.text.include? 'The subject\'s Data Entry Lock has been removed'
	#salog( tst, "PASS" )
#else
	#salog( tst, "FAIL" )
	#fail_count +=1
#end

#salog( sep, "LOG" )




salog( '10: LOG OUT', "LOG" )
salog( sep, "LOG" )

tst = '10: LOG OUT'

b.element( :link => 'Sign Out' ).when_present.click
sleep 2

test_count +=1
if b.text.include? 'You are successfully signed out'
	salog( tst, "PASS" )
else
	salog( tst, "FAIL" )
	fail_count +=1
end

salog( sep, "LOG" )


# END: print final run/error counts and close browser

countstr = "Test completed. " + test_count.to_s + " tests run with " + fail_count.to_s + " failures"
puts countstr


b.close		
#headless.destroy
