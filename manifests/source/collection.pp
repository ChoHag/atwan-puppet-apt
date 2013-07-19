class apt::source::collection ($collection = 'UNDEFINED') {
  if $collection != 'UNDEFINED' {
    create_resources('apt::source', $collection)
  }
}
