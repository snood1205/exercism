use std::collections::HashMap;

pub fn count(a: char, s: &str) -> u32 {
  let mut sum = 0;
  for x in s.chars() {
    if x == a {
      sum += 1;
    }
  }
  sum
}

pub fn nucleotide_counts(s: &str) -> HashMap<char, usize> {
  let mut a = 0;
  let mut c = 0;
  let mut g = 0;
  let mut t = 0;
  for x in s.chars() {
    match x {
      'A' => a += 1,
      'C' => c += 1,
      'G' => g += 1,
      'T' => t += 1,
      _   => continue,
    }
  }
  let mut h: HashMap<char, usize> = HashMap::new();
  h.insert('A', a);
  h.insert('T', t);
  h.insert('C', c);
  h.insert('G', g);
  h
}