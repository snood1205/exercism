pub fn reply(a: &str) -> String {
  if a.len() == 0 {
    "Fine. Be that way!".to_string()
  } else if a.to_uppercase() == a {
    "Whoa, chill out!".to_string()
  } else if a.chars().last().unwrap() == '?' {
    "Sure.".to_string()
  } else {
    "Whatever.".to_string()
  }
}