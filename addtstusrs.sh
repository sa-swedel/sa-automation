#!/bin/bash

# arrays of stuff
# user roles

# CRC
declare -a scsite1=(scsite1 34e120bd971362bb67be2b65f37c63c2 d0f391fc2bf9f04cad30df05a509a525 scone@trialintel.com SC Site1 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a scsite2=(scsite2 34e120bd971362bb67be2b65f37c63c2 d0f391fc2bf9f04cad30df05a509a525 sctwo@trialintel.com SC Site2 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a scsite123=(scsite123 34e120bd971362bb67be2b65f37c63c2 d0f391fc2bf9f04cad30df05a509a525 sc123@trialintel.com SC Site1,2,3 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a scsite23=(scsite23 34e120bd971362bb67be2b65f37c63c2 d0f391fc2bf9f04cad30df05a509a525 sc2and3@trialintel.com SC Site2,3 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)

# INV
declare -a invsite1=(itest1 bb67fd584eca5be2f535c2de7e8888c0 04b3989667ba5d112cff3f340d409a8d ione@trialintel.com Inv Site1 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invsite2=(itest2 bb67fd584eca5be2f535c2de7e8888c0 04b3989667ba5d112cff3f340d409a8d itwo@trialintel.com Inv Site2 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invsite123=(itest3 bb67fd584eca5be2f535c2de7e8888c0 04b3989667ba5d112cff3f340d409a8d i123@trialintel.com Inv Site1,2,3 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invsite23=(itest4 bb67fd584eca5be2f535c2de7e8888c0 04b3989667ba5d112cff3f340d409a8d i2and3@trialintel.com Inv Site2,3 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)

# DM
declare -a dmsite1=(dmsite1 9678e00abf28a27f3f76788410067d87 c2760e43733c1f03c858afed88a0c2bb dmone@trialintel.com DM Site1 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmsite2=(dmsite2 9678e00abf28a27f3f76788410067d87 c2760e43733c1f03c858afed88a0c2bb dmtwo@trialintel.com DM Site2 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmsite123=(dmsite123 9678e00abf28a27f3f76788410067d87 c2760e43733c1f03c858afed88a0c2bb dm123@trialintel.com DM Site1,2,3 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmsite23=(dmsite23 9678e00abf28a27f3f76788410067d87 c2760e43733c1f03c858afed88a0c2bb dm2and3@trialintel.com DM Site2,3 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)

# MON
declare -a monsite1=(mtest1 77bdf230f31f411fd415a76c332658ba 04ed8abaf18c794a23549b59444ed6ce mone@trialintel.com Mon Site1 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a monsite2=(mtest2 77bdf230f31f411fd415a76c332658ba 04ed8abaf18c794a23549b59444ed6ce mtwo@trialintel.com Mon Site2 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a monsite123=(mtest3 77bdf230f31f411fd415a76c332658ba 04ed8abaf18c794a23549b59444ed6ce m123@trialintel.com Mon Site1,2,3 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a monsite23=(mtest4 77bdf230f31f411fd415a76c332658ba 04ed8abaf18c794a23549b59444ed6ce m2and3@trialintel.com Mon Site2,3 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)

# SPON
declare -a sponsite1=(stest1 1192a79f9640d3a279fecce100d0617a 3968d058d29aaee8891685624a4a0f8c sone@trialintel.com Spon Site1 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a sponsite2=(stest2 1192a79f9640d3a279fecce100d0617a 3968d058d29aaee8891685624a4a0f8c stwo@trialintel.com Spon Site2 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a sponsite123=(stest3 1192a79f9640d3a279fecce100d0617a 3968d058d29aaee8891685624a4a0f8c s123@trialintel.com Spon Site1,2,3 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a sponsite23=(stest4 1192a79f9640d3a279fecce100d0617a 3968d058d29aaee8891685624a4a0f8c s2and3@trialintel.com Spon Site2,3 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)

# RO
declare -a rosite1=(rotest1 04ae11b845a45723fc15101687af2cb5 8040d9e37ee835c2fca30ec432e0828e roone@trialintel.com Ro Site1 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rosite2=(rotest2 04ae11b845a45723fc15101687af2cb5 8040d9e37ee835c2fca30ec432e0828e rotwo@trialintel.com Ro Site2 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rosite123=(rotest3 04ae11b845a45723fc15101687af2cb5 8040d9e37ee835c2fca30ec432e0828e ro123@trialintel.com Ro Site1,2,3 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rosite23=(rotest4 04ae11b845a45723fc15101687af2cb5 8040d9e37ee835c2fca30ec432e0828e ro2and3@trialintel.com Ro Site2,3 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)

# perm roles/misc

declare -a prmroles=("Study Coordinator" Investigator "Data Manager" Monitor Sponsor "Read Only")
declare -a prms=(scsite invsite dmsite monsite sponsite rosite)
declare -a unames=(scsite1 scsite2 scsite123 scsite23 invsite1 invsite2 invsite123 invsite23 dmsite1 dmsite2 dmsite123 dmsite23 monsite1 monsite2 monsite123 monsite23 sponsite1 sponsite2 sponsite123 sponsite23 rosite1 rosite2 rosite123 rosite23)
declare -a colhdgs=(username password salt email first_name last_name email_verified active created modified last_password_change_date failed_login_attempts time_zone time_zone_offset password_reset_flag)

usetbl=$1
echo $usetbl
sleep 30

# first insert the usernames

function insert_user_names() {
	loop=0;
	inlp=1;
	nend=""
	while [ $loop -lt 6 ]
	do	
		while [ $inlp -lt 5 ]
		do
			if [ $inlp = "1" ]; then
				nend="1"
			fi

			if [ $inlp = "2" ]; then
				nend="2"
			fi

			if [ $inlp = "3" ]; then
				nend="123"
			fi

			if [ $inlp = "4" ]; then
				nend="23"
			fi

			var=${prms[loop]}$nend;
			#echo $var;							
			mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"INSERT INTO users (username) VALUES ('"${var}"' );"
			inlp=`expr $inlp + 1`;
		done
	loop=`expr $loop + 1`;
	inlp=1;
	done
}

echo 'Inserting user names ...'	
insert_user_names

# now update the tables with relevant user info

# sctest(1-4)

echo 'Updating sctest (Study Coordinator) accounts ...'

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${scsite1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='scsite1';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${scsite2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='scsite2';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${scsite123[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='scsite123';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${scsite23[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='scsite23';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

# invtst (1-4)

echo 'Updating invtst (Investigator) accounts ...'

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${invsite1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invsite1';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${invsite2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invsite2';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${invsite123[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invsite123';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${invsite23[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invsite23';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

# dmtest (1-4)

echo 'Updating dmtest (Data Manager) accounts ...'

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${dmsite1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmsite1';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${dmsite2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmsite2';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${dmsite123[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmsite123';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${dmsite23[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmsite23';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done


# montst (1-4)

echo 'Updating montst (Monitor) accounts ...'

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${monsite1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='monsite1';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${monsite2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='monsite2';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${monsite123[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='monsite123';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${monsite23[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='monsite23';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

# spntst (1-4)

echo 'Updating spntst (Sponsor) accounts ...'

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${sponsite1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sponsite1';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${sponsite2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sponsite2';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${sponsite123[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sponsite123';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${sponsite23[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sponsite23';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

# rontst (1-4)

echo 'Updating rontst (Read Only) accounts ...'

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${rosite1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rosite1';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${rosite2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rosite2';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${rosite123[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rosite123';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${rosite23[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rosite23';"
	mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

# now add permissions; first get userid for user from users table

echo 'Setting site permissions ...'

# SC

echo 'Study Coordinator ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='scsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='scsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='scsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='scsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Study Coordinator' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Study Coordinator' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Study Coordinator' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq42"

# INV

echo 'Investigator ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='invsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='invsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='invsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='invsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Investigator' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Investigator' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Investigator' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq42"

# DM

echo 'Data Manager ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='dmsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='dmsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='dmsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='dmsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Data Manager' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Data Manager' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Data Manager' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq42"

# MON

echo 'Monitor ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='monsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='monsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='monsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='monsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Monitor' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Monitor' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Monitor' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq42"

# SPON

echo 'Sponsor ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='sponsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='sponsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='sponsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='sponsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Sponsor' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Sponsor' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Sponsor' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
##echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
##echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq42"

# RO

echo 'Read Only ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='rosite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='rosite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='rosite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from users where username='rosite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Read Only' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Read Only' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} --disable-column-names -se "SELECT id from user_groups where name='Read Only' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
##echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
##echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
##echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
##echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
##echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
##echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
##echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D ${usetbl} -se "$prmq42"








echo 'Completed!'
