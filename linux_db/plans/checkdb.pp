plan linux_db::checkdb (
  TargetSpec $nodes,
  String $q5,
String $value,
String $value2
) {
 $r=run_task(
    'linux_db::db',
    $nodes,
        value=> $value,
		q5=> $q5,
	value2=>$value2,
  )

    return ({'results'=>$r})
}
