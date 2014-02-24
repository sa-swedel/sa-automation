###############################################################
#
# INSERT_SUBJ.RB
#
# Inserts subjects directly into the StudySpot MySQL database
#
# Scott Wedel
#
# 13 January 2014
#
# Must be run from the console of the server into which you wish to insert subjects
#
###############################################################

require 'rubygems'
require 'mysql'

if ((!ARGV[0]) || (ARGV[0] && !ARGV[1]))
	puts "Usage: ruby INSERT_SUBJ.rb SiteID #subjects"
	exit
end

if ((ARGV[0].to_i > 103) || (ARGV[0].to_i < 101))
	puts "SiteID argument must be 101, 102, or 103."
	exit
end

s = ARGV[0]
n_subj = ARGV[1]

# create connection to MySQL server

con = Mysql.new 'localhost', 'root', 's@aFe=u$t4', 'registry_precore'

firstq = "SELECT id FROM subjects ORDER BY id ASC"
rs = con.query( firstq )

# get the number of ids in the database

idx = rs.num_rows
idarr = []


rs.each do |row|
	# puts row.join
	idarr.push( row.join.to_s )
end

#idarr.sort

#p idarr

secondq = con.query( "SELECT COUNT(id) FROM subjects" )
idcnt = secondq.fetch_row


# puts "ID count: " + idcnt.to_s

#finalid = idarr[idcnt.to_i]
#firstid = finalid += 1

#puts "Final ID: " + finalid.to_s
#puts "First ID: " + firstid.to_s

nr = idarr.length - 1
finalid = idarr[nr.to_i].to_i
#puts nr.to_s
#puts "Array length: " + idarr.length.to_s
#puts "Last ID: " + idarr[nr.to_i]

con.close

contwo = Mysql.new 'localhost', 'root', 's@aFe=u$t4', 'registry_precore'


pnumquery = "SELECT SUBJID FROM subjects WHERE SUBJID LIKE '" + s.to_s + "%'"
#puts pnumquery
ps = contwo.query( pnumquery )

patidarr = []

ps.each do |row|
	#puts "R: " + row.to_s
	subnum = row.to_s[-3..-1]
	#puts "SN: " + subnum
	patidarr.push( subnum )
end


lastid = patidarr[patidarr.length - 1]

contwo.close

#idquery = 'SELECT SUBJID FROM subjects WHERE id=' + lastid
#puts idquery


#rs = con.query( idquery )
#lastid = rs.fetch_row.join
#puts "Last ID: " + lastid.to_s

patnum = lastid[-3..-1]
#puts patnum

if( patnum.to_i == 999 )
	id = 899
else
	id = ( patnum.to_i -  1 )
end

conthree = Mysql.new 'localhost', 'root', 's@aFe=u$t4', 'registry_precore'

loop = 1

puts 'Inserting ' + ARGV[1].to_s + ' records ...'

while (loop <= n_subj.to_i)
	#subjnum = id -=1
	subjid = s.to_s + "-" + id.to_s
	idval = ( finalid + loop )
	#idexst = checkForDupes( idval.to_s )
	#if (idexst == FALSE)
	q = 'INSERT INTO subjects ( ID, SUBJID, site_id ) VALUES ( ' + '"' + idval.to_s + '", "' + subjid.to_s + '", "6" )'
	puts q
	conthree.query( q )
	end
	id -=1
	#idx +=1
	loop +=1
end

conthree.close

puts 'Finished - ' + ARGV[1].to_s + ' subjects added.'
