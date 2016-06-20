extern crate regex;
use std::collections::HashMap;
use std::collections::hash_map::Entry;

pub fn word_count(s: &str) -> HashMap<String, u32> {
  if s == "" {
    return HashMap::new();
  }
  let re = regex::Regex::new(r"[^A-Za-z0-9]+").unwrap();
  let s = re.split(s).collect::<Vec<&str>>();
  let mut h: HashMap<String, u32> = HashMap::new();
  for x in s {
    if x == "" {
      continue;
    }
    match h.entry(x.to_string().to_lowercase()) {
      Entry::Vacant(v) => {v.insert(1);},
      Entry::Occupied(o) => {*o.into_mut() += 1;},
    }
  }
  h
}