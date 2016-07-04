# RAILS WITHOUT ACTIONVIEW

Just replace actionview with cells and got x10 speed up your views

```
Started GET "/posts" for ::1 at 2016-07-04 19:01:37 +0300
Processing by PostsController#index as HTML
  Post Load (0.2ms)  SELECT "posts".* FROM "posts"
  Rendering html template
  Rendered html template (0.0ms)
Completed 200 OK in 17ms (Views: 15.7ms | ActiveRecord: 0.2ms)
```
