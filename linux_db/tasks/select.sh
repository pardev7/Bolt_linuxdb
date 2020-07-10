
#!/bin/bash

date=`sqlplus -s bodbuk_owner_518/bodb@192.168.3.162/orcl <<END
set pagesize 0 feedback off verify off heading off echo off
@/home/oracle/Installer/query1 129
exit;
END`
if [ -z "$date" ]
then
echo "Date is NULL"
else
op1=`sqlplus -s bodbuk_owner_518/bodb@192.168.3.162/orcl <<END
set pagesize 0 verify off heading off echo off
@/home/oracle/Installer/query2.sql 129 $date
exit;
END`
fi

if [ -z "$op1" ]
then
echo "$Output of query2 is NULL"
else
op2=`sqlplus -s bodbuk_owner_518/bodb@192.168.3.162/orcl <<END
set pagesize 0 verify off heading off echo off
@/home/oracle/Installer/query3.sql 129
exit;
END`
fi

if [ -z "$op2" ]
then
echo "$Output of query3 is NULL"
else
op3=`sqlplus -s bodbuk_owner_518/bodb@192.168.3.162/orcl <<END

set pagesize 0 verify off heading off echo off
@/home/oracle/Installer/query4.sql 129 $date
exit;
END`
fi


echo $op3
