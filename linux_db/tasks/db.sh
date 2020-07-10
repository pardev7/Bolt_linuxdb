STR1='to open file'

op1=`sqlplus -s posbous_base/posbo@192.168.1.119/tdsorcl <<END
set pagesize 0 verify off heading off echo off
@$PT_q5 $PT_value $PT_value2
exit;
END`
if [ [ "$op1" == *"$STR1"* ]]
then
echo "$op1"
else
echo "$op1"
fi
