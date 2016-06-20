extern crate regex;
use std::collections::HashMap;

pub fn word_count(s: &str) -> HashMap<String, u32> {
  let re = regex::Regex::new(r"[^A-Za-z0-9\w'").unwrap();
  let s = re.split(s).collect::<Vec<&str>>();
  let mut h: HashMap<String, u32> = HashMap::new();
  for x in s {
    match h.get(x) {
      Some(i) => h.entry(x.to_string()).or_insert_with(i + 1),
      None    => h.entry(x.to_string()).or_insert_with(1)
    }
  } 
  h;
}