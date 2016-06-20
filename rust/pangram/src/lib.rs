use std::ascii::AsciiExt;

pub fn is_pangram(a: &str) -> bool {
  let mut x = a.to_lowercase().chars().collect::<Vec<char>>();
  x.sort();
  x.dedup();
  let mut k = 0;
  for (i, j) in x.clone().into_iter().enumerate() {
    if !j.is_ascii() || !j.is_alphabetic() {
      x.remove(i - k);
      k += 1;
    }
  }
  let s: String = x.into_iter().collect();
  s == "abcdefghijklmnopqrstuvwxyz"
}