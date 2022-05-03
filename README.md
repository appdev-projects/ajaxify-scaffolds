# Ajaxify scaffolds

## Objective

Let's practice our Rails Ajax skills in a simple, isolated setting: let's generate 4 scaffolds and ajaxify them.

The starting point of this project is a vanilla app in which I generated our familiar movies, directors, actors, and characters as scaffolds; added sample data; and that's about it.

Your job is to take these raw scaffolds and practice Ajax on them. [Here's a target](http://ajaxify-scaffolds.matchthetarget.com/) to give you something to shoot for, but you can make the UI whatever you like. `<table>`s can be awkward to work with, so you might want to replace the scaffold-generated markup with something like (perhaps a Bootstrap card per record, for example).

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

## Advanced tips

To submit a form via Rails Ajax when a dropdown is changed:

 - In `app/javascript/packs/application.js`, change Line 6 from:

    ```js
    import Rails from "@rails/ujs"
    ```

    To:

    ```js
    import Rails, { $ } from "@rails/ujs"; global.Rails = Rails;
    ```
 - Now, on `<select>` elements, you can add an `onchange=""` attribute with a bit of JS in it:

    ```js
    onchange="Rails.fire(this.form, 'submit')"
    ```

    This will cause the form to be submitted via Rails UJS as soon as the user changes the value in the `<select>`.

 - To add the `onchange` (or any other HTML attribute) to a `<select>` if you're using the `form.collection_select` helper method, it would look something like:

    ```erb
    <%= form.collection_select :director_id, Director.order(:name), :id, :name, {}, onchange: 'Rails.fire(this.form, "submit")' %>
    ```
  
    Note the fifth argument; this is a required `Hash` of arguments that are specific to the `<select>` (like `:prompt`), and then the optional sixth argument is where you can put any HTML attributes you'd like to add to the `<select>`. [Reference](https://api.rubyonrails.org/v5.1.7/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_select)
    
