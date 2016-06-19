pub fn hamming_distance(a: &str, b: &str) -> std::result::Result<u32, &'static str> {
  if a.len() != b.len(){
    Err("inputs of different length")
  } else if a == b {
    Ok(0)
  } else {
    let c = a.chars().zip(b.chars());
    let mut sum = 0;
    for (ai, bi) in c {
      if ai != bi {
        sum += 1;
      }
    }
    Ok(sum)
  }
}