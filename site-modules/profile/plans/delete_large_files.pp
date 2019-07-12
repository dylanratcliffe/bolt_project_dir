plan profile::delete_large_files (
  TargetSpec $nodes,
  String     $min_size = '1Gb',
  String     $path     = '/tmp',
) {
  # Find large files
  run_task('profile::find_files_larger_than', $names, {
    webservers => $webserver_names
  })

}
