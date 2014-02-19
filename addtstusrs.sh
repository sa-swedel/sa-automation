#!/bin/bash

# arrays of stuff
# user roles

# CRC
declare -a sctest1=(sctest1 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 scone@studyspot.com SC ONE 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a sctest2=(sctest2 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 sctwo@studyspot.com SC TWO 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a sctest3=(sctest3 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 sc123@studyspot.com SC 123 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)
declare -a sctest4=(sctest4 928a36be170e2ff2821953535755abfe c48e609aff1d7581a0e7db90a4e42a12 sc2and3@studyspot.com SC 23 1 1 "2013-10-17 17:52:33" "2014-01-21 12:17:22" "2013-10-18 13:53:50" 0 GMT 0.0 0)

# INV
declare -a invtst1=(itest1 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb ione@studyspot.com INV ONE 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invtst2=(itest2 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb itwo@studyspot.com INV TWO 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invtst3=(itest3 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb i123@studyspot.com INV 123 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)
declare -a invtst4=(itest4 4fa36550db39bcbd10cc18323046cc1e d3e05456a528820e931ff664692be7cb i2and3@studyspot.com INV 23 1 1 "2013-10-18 13:57:08" "2013-10-18 13:57:08" "2013-10-18 13:57:08" 0 America/Denver -6.0 0)

# DM
declare -a dmtest1=(dmtest1 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dmone@studyspot.com DM ONE 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmtest2=(dmtest2 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dmtwo@studyspot.com DM TWO 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmtest3=(dmtest3 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dm123@studyspot.com DM 123 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)
declare -a dmtest4=(dmtest4 ad3db225069f7781b3b4f9c4a9ac5b18 704e06f50cf31f89c5d8925c91d6a9eb dm2and3@studyspot.com DM 23 1 1 "2013-10-18 15:10:59" "2013-10-18 15:10:59" "2013-10-18 15:10:59" 0 America/Denver -6.0 0)

# MON
declare -a montst1=(mtest1 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad mone@studyspot.com MON ONE 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a montst2=(mtest2 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad mtwo@studyspot.com MON TWO 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a montst3=(mtest3 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad m123@studyspot.com MON 123 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)
declare -a montst4=(mtest4 6f80f1f624edbb358ac2294739f02165 635fd9951cc5ae655f16b2bb0563fcad m2and3@studyspot.com MON 23 1 1 "2013-10-18 15:14:29" "2013-10-18 15:14:29" "2013-10-18 15:14:29" 0 America/Denver -6.0 0)

# SPON
declare -a spntst1=(stest1 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 sone@studyspot.com SPON ONE 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a spntst2=(stest2 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 stwo@studyspot.com SPON TWO 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a spntst3=(stest3 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 s123@studyspot.com SPON 123 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)
declare -a spntst4=(stest4 ff9d86cea1b021e9409657eb94c91860 8c4f98705d08c92f163ad3da7ece9f77 s2and3@studyspot.com SPON 23 1 1 "2013-10-18 15:17:41" "2013-10-18 15:17:41" "2013-10-18 15:17:41" 0 America/Denver -6.0 0)

# RO
declare -a rontst1=(rotest1 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 roone@studyspot.com RO ONE 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rontst2=(rotest2 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 rotwo@studyspot.com RO TWO 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rontst3=(rotest3 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 ro123@studyspot.com RO 123 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)
declare -a rontst4=(rotest4 4afec5ea5fe0e96b86cf5c2198d8a619 7ccfb62083133d9d1abc269d3805dea1 ro2and3@studyspot.com RO 23 1 1 "2013-10-18 15:20:44" "2013-10-18 15:20:44" "2013-10-18 15:20:44" 0 America/Denver -6.0 0)

# perm roles/misc

declare -a prmroles=("Study Coordinator" Investigator "Data Manager" Monitor Sponsor "Read Only")
declare -a prms=(sctest invtst dmtest montst spntst rontst)
declare -a unames=(sctest1 sctest2 sctest3 sctest4 invtst1 invtst2 invtst3 invtst4 dmtest1 dmtest2 dmtest3 dmtest4 montst1 montst2 montst3 montst4 spntst1 spntst2 spntst3 spntst4 rontst1 rontst2 rontst3 rontst4)
declare -a colhdgs=(username password salt email first_name last_name email_verified active created modified last_password_change_date failed_login_attempts time_zone time_zone_offset password_reset_flag)

# first insert the usernames

function insert_user_names() {
	loop=0;
	inlp=1;
	while [ $loop -lt 6 ]
	do	
		while [ $inlp -lt 5 ]
		do
			var=${prms[loop]}$inlp;
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
	d=${sctest1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sctest1';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${sctest2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sctest2';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${sctest3[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sctest3';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${sctest4[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='sctest4';"
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
	d=${invtst1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invtst1';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${invtst2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invtst2';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${invtst3[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invtst3';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${invtst4[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='invtst4';"
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
	d=${dmtest1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmtest1';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${dmtest2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmtest2';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${dmtest3[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmtest3';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${dmtest4[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='dmtest4';"
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
	d=${montst1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='montst1';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${montst2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='montst2';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${montst3[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='montst3';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${montst4[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='montst4';"
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
	d=${spntst1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='spntst1';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${spntst2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='spntst2';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${spntst3[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='spntst3';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${spntst4[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='spntst4';"
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
	d=${rontst1[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rontst1';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${rontst2[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rontst2';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1
while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${rontst3[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rontst3';"
	mysql -uroot -ps\@aFe=u\$t4 -D spotv1 -e"$query";
	#echo $query
	x=`expr $x + 1`
	#echo $x
done

x=1

while [ $x -lt 15 ]
do
	h=${colhdgs[$x]}
	d=${rontst4[$x]}
	#echo $d
	query="UPDATE users set "$h"='"$d"' where username='rontst4';"
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

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sctest1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sctest2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sctest3'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='sctest4'")

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

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invtst1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invtst2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invtst3'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='invtst4'")

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

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmtest1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmtest2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmtest3'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='dmtest4'")

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

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='montst1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='montst2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='montst3'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='montst4'")

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

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='spntst1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='spntst2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='spntst3'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='spntst4'")

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

idnum=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rontst1'")
idnum2=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rontst2'")
idnum3=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rontst3'")
idnum4=$(mysql -uroot -ps\@aFe=u\$t4 -D spotv1 --disable-column-names -se "SELECT id from users where username='rontst4'")

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
