Map<String, dynamic> convertMap(Map<dynamic, dynamic> map) {
  // use .from to ensure the keys are Strings
  return <String, dynamic>{
    ...{
      for (final key in map.keys)
        if (map[key] is Map) key: convertMap(map[key]) else key: map[key],
    }
  };
}
