use std::collections::HashMap;

pub fn word_count(s: &str) -> HashMap<String, u32> {
  let mut var = s.split(char::is_numeric).collect();
  let mut v: HashMap<String, u32> = HashMap::new();
  for x in var {
    match v.get(x) {
      Some(j) => v.insert(*x, j + 1),
      None    => v.insert(*x, 1),
    }
  }
  v
}