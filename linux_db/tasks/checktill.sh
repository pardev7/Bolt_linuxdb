rs=`sqlplus -s posbous_base/posbo@192.168.1.119/tdsorcl <<END
set pagesize 0 verify off heading off echo off
@$PT_q1 $PT_value
exit;
END`

echo $rs
