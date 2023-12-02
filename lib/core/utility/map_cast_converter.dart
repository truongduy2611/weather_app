Map<String, dynamic> convertMap(Map<dynamic, dynamic> map) {
  // use .from to ensure the keys are Strings
  return <String, dynamic>{
    ...{
      for (final key in map.keys)
        if (map[key] is Map)
          key: convertMap(map[key])
        else if (map[key] is List<dynamic>)
          key: [
            for (final data in map[key])
              if (data is Map) convertMap(data) else data
          ]
        else
          key: map[key],
    }
  };
}
