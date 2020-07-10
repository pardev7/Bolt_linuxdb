plan linux_db::checkdate (
  TargetSpec $nodes,
  String $q1,
String $value,
) {
 $r=run_task(
    'linux_db::checktill',
    $nodes,
        q1=>$q1,
        value=> $value,

  )

    return ({'results'=>$r})
}
