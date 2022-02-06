# Todo

- The only thing I did not add was the click tracker as I felt it was
  unnecessary although it is fairly easy to implement from the frontend itself
  and hooking it up with the backend. If the idea was to track the clicks of the
  user after clicking or using the hashed URL then I assumed using Google
  Analytics could be a better idea.
- I also added a 7 character limit on generating a new hashed URL because
  instead of seeing long hashed URL's people/customers using the product would
  prefer to see a short URL although I am speaking from my own point of view and
  assumption. No matter how long the URL might be it'll be hashed into a tiny
  hashed one. If character limit should be changed then just change the value in
  the `get_fresh_lookup_code` method in the `hash_url` service and update the
  test cases.
