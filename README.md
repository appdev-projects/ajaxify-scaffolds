# Ajaxify scaffolds

## Objective

Let's practice our Rails Ajax skills in a simple, isolated setting: let's generate 4 scaffolds and ajaxify them.

The starting point of this project is a vanilla app in which I generated our familiar movies, directors, actors, and characters as scaffolds; added sample data; and that's about it.

Your job is to take these raw scaffolds and practice Ajax on them. [Here's a target](http://ajaxify-scaffolds.matchthetarget.com/) to give you something to shoot for, but you can get as creative as you like; add Bootstrap, choose different interactions, generate more scaffolds if you like.

Ask lots of questions about Ajax; this is the last major required skill you need to be solid on before you can 1) start taking on professional Rails projects, or 2) decide to delve into a new role: native app development.

## Scaffolds

These are the commands that I ran so far:

```
rails generate scaffold director name bio:text dob:date image
```

```
rails generate scaffold movie title description:text duration:integer image year:integer director:references
```

```
rails generate scaffold actor name bio:text dob:date image
```

```
rails generate character name movie:references actor:references
```

Look at the previous commits in the repo for more details.

## Suggested setup

 - Add any remaining direct association `has_many`/`belongs_to` that weren't automatically added by the scaffold generators. `dependent: :destroy` on `has_many` will be useful to preserve referential integrity for required foreign keys.
 - Add jQuery. I usually use the minifed version from [this CDN](https://code.jquery.com/) (or [slim minified](https://blog.jquery.com/2016/09/22/jquery-3-1-1-released/) if I know I won't want things like [Effects](https://api.jquery.com/category/effects/) or `$().ajax()`).
 - jQuery `trigger("reset")` is useful for resetting all of the inputs in a form at once.

## Next steps

Ajaxify each interaction; I started with `movies#destroy`, `movies#create`, `movies#edit`.
