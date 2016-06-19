extern crate chrono;
use chrono::*;

pub fn after(date: DateTime<UTC>) -> DateTime<UTC> {
  match date.checked_add(Duration::seconds(1000000000)){
    Some(date)  => date,
    None        => date
  }
}