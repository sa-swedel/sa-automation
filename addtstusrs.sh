#!/bin/bash

# arrays of stuff
# user roles

# CRC
declare -a scsite1=(scsite1 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 scone@studyspot.com SC Site1 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a scsite2=(scsite2 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 sctwo@studyspot.com SC Site2 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a scsite123=(scsite123 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 sc123@studyspot.com SC Site1,2,3 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a scsite23=(scsite23 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 sc2and3@studyspot.com SC Site2,3 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)

# INV
declare -a invsite1=(itest1 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb ione@studyspot.com Inv Site1 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invsite2=(itest2 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb itwo@studyspot.com Inv Site2 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invsite123=(itest3 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb i123@studyspot.com Inv Site1,2,3 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invsite23=(itest4 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb i2and3@studyspot.com Inv Site2,3 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)

# DM
declare -a dmsite1=(dmsite1 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dmone@studyspot.com DM Site1 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmsite2=(dmsite2 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dmtwo@studyspot.com DM Site2 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmsite123=(dmsite123 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dm123@studyspot.com DM Site1,2,3 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmsite23=(dmsite23 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dm2and3@studyspot.com DM Site2,3 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)

# MON
declare -a monsite1=(mtest1 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad mone@studyspot.com Mon Site1 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a monsite2=(mtest2 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad mtwo@studyspot.com Mon Site2 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a monsite123=(mtest3 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad m123@studyspot.com Mon Site1,2,3 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a monsite23=(mtest4 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad m2and3@studyspot.com Mon Site2,3 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)

# SPON
declare -a sponsite1=(stest1 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 sone@studyspot.com Spon Site1 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a sponsite2=(stest2 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 stwo@studyspot.com Spon Site2 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a sponsite123=(stest3 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 s123@studyspot.com Spon Site1,2,3 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a sponsite23=(stest4 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 s2and3@studyspot.com Spon Site2,3 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)

# RO
declare -a rosite1=(rotest1 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 roone@studyspot.com Ro Site1 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rosite2=(rotest2 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 rotwo@studyspot.com Ro Site2 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rosite123=(rotest3 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 ro123@studyspot.com Ro Site1,2,3 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rosite23=(rotest4 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 ro2and3@studyspot.com Ro Site2,3 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)

# perm roles/misc

declare -a prmroles=("Study Coordinator" Investigator "Data Manager" Monitor Sponsor "Read Only")
declare -a prms=(scsite invsite dmsite monsite sponsite rosite)
declare -a unames=(scsite1 scsite2 scsite123 scsite23 invsite1 invsite2 invsite123 invsite23 dmsite1 dmsite2 dmsite123 dmsite23 monsite1 monsite2 monsite123 monsite23 sponsite1 sponsite2 sponsite123 sponsite23 rosite1 rosite2 rosite123 rosite23)
declare -a colhdgs=(username password salt email first_name last_name email_verified active created modified last_password_change_date failed_login_attempts time_zone time_zone_offset password_reset_flag)

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
			mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"INSERT INTO users (username) VALUES ('"${var}"' );"
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
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
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

# now add permissions; first get userid for user from users table

echo 'Setting site permissions ...'

# SC

echo 'Study Coordinator ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='scsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='scsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='scsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='scsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Study Coordinator' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Study Coordinator' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Study Coordinator' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq42"

# INV

echo 'Investigator ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Investigator' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Investigator' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Investigator' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq42"

# DM

echo 'Data Manager ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Data Manager' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Data Manager' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Data Manager' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq42"

# MON

echo 'Monitor ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='monsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='monsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='monsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='monsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Monitor' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Monitor' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Monitor' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
#echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
#echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq42"

# SPON

echo 'Sponsor ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sponsite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sponsite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sponsite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sponsite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Sponsor' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Sponsor' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Sponsor' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
#echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
#echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
#echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
#echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
#echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
##echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
##echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq42"

# RO

echo 'Read Only ...'

# get user IDs for accounts

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rosite1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rosite2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rosite123'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rosite23'")

# now get id numbers for permission levels

prmid1=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Read Only' and site_id=1")
prmid2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Read Only' and site_id=2")
prmid3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from user_groups where name='Read Only' and site_id=3")

# set site perms based on account

# 1st user gets site 1
prmq1="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum')"
##echo $prmq1
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq1"

# 2nd user gets site 2
prmq2="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum2')"
##echo $prmq2
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq2"

# 3rd user gets all three
prmq31="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid1', '$idnum3')"
##echo $prmq31
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq31"

prmq32="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum3')"
##echo $prmq32
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq32"

prmq33="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum3')"
##echo $prmq33
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq33"

# 4th user gets 2 and 3

prmq41="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid2', '$idnum4')"
##echo $prmq41
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq41"

prmq42="INSERT INTO user_groups_users (user_group_id, user_id) VALUES ('$prmid3', '$idnum4')"
##echo $prmq42
mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -se "$prmq42"








echo 'Completed!'
