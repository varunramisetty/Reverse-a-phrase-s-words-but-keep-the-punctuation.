//How to Reverse-a-phrase-s-words-but-keep-the-punctuation
%dw 2.0
output application/json
//in this particular data weave code imusing dw::core::String 
import * from dw::core::Strings
---
//the main functions that im using to reverse a phase s words are splitBy and map functions
//by using this below script im able to do the reverse a phrase but keeps the punctuation common
(payload splitBy  "\n") map (
  do {
      var  y = $ splitBy  " " map ($ filter isAlphanumeric($))
      var x =($ splitBy " ") map if(isAlphanumeric($)) "" else $ filter !(isAlphanumeric($))
  ---
//after doing that function now im trying to join all words by using joinBy function
  y [-1 to 0] map ($ ++ x[$$] ) joinBy  " "}
)