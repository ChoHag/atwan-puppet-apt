class apt::source::collection ($collection) {
  create_resources('apt::source', $collection)
}
