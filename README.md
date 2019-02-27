# Rails Overview

## Objectives

By the end of this, developers should be able to:

- Explain why rails is necessary.
- List some of the responsibilities of a typical server application, and identify which components within MVC map to those responsibilities.
- Diagram the process flow from Client through Database and back
- Map MVC roles to specific components of Rails.
- Indicate where different types of files can be found within a Rails application.

## What is Rails?

Rails is a web application development framework written in the Ruby programming language. It is designed to make programming web applications easier by making assumptions about what every developer needs to get started. It allows you to write less code while accomplishing more than many other languages and frameworks. 

## Server Application

Suppose we wanted to build a server application that can show a profile:

1. A client computer makes a
    GET request that asks for a specific page.
1. When the GET request is received by the server, the server application parses the
    request and identifies which measurement record is being requested.
1. The data for the desired measurement gets retrieved from our set of
    records.
1. Finally, the desired data gets put into a HTML file and sent back to the client.

Suppose we wanted to build an server application that records a user's height and
weight. It might work as follows:

1. A user interacts with a front-end application, triggering a POST, and this
    POST request contains data - specifically, the latest measurements of
    height and weight.
1. When the POST request is received by the server, the server application parses the
    request and extracts the relevant information.
1. The data from the POST request gets added to our records.
1. As confirmation, a success message in HTML gets sent to the client.

If we were to try to generalize and abstract away the differences between these
two steps, we might say that our web application needs to:

1. Receive incoming requests from a client.
1. Execute specific behaviors in response to those requests.
1. Create, read, update, or destroy data records through some kind of data
  storage system.
1. Share information back to the client.

The quartet of 'create', 'read', 'update', and 'destroy' is commonly known as
'CRUD'; each refers to a specific type of action that can be performed on our
data storage system. Each of these types might have more than one specific
action associated with it ('read one' vs 'read all', for instance).

One common way of dividing up these four responsibilities is the
**Model-View-Controller** (MVC) architecture pattern. This pattern involves
making three core types of components, each responsible for a different part of
the server's functionality.

A **Model** directly manages the data in our application, and provides a
representation of that data for the rest of the application to use.

A **View** is like it sounds - it's data that gets sent back to the client for
the user to consume.

A **Controller** responds to user requests as they come in, and utilizes both
the model and the view components to perform the desired behavior and produce a
response.

In addition to these three types of components, however, there is a fourth
piece that it's important to consider with web development particularly:
routing. **Routes** indicate to the server which controllers should be
triggered (and how) by which kinds of requests. It's a critical piece of the
puzzle, and one we'll be looking at later today in more detail.

What which part(s) of an HTTP request does the router use to determine which
code to run?

MVC architecture is very common in web applications, and Rails gives us the
tools to spin up applications that are roughly in line with the idea of MVC.

## Lab - Act Out an MVC

We're going to act out the various parts of an MVC application. Link up with
another team so that you're in a group of eight, and assign each member of
your 'super-group' one of the roles below. These roles are:

- Client
- Server
  - Router
  - Controllers
    - People Controller
    - Places Controller
    - Things Controller
  - Models
    - People Model
    - Places Model
    - Things Model
  - Views
    - People View
    - Places View
    - Things View

Once you've divvied up the roles, take two minutes to read through the
directions for your role, found [roles directory](roles). These directions
explain what your responsibilities are and how you should carry them out.
However, **you may only communicate with the teammates listed in your role
card**.

- _Developers playing the role of the model should record their information in
  the tab associated with their group number found at the bottom of the
  spreadsheet link in `./roles/model`_.

We'll work through one example request together, and then each group will work
independently to answer all remaining requests. Once all groups have finished,
we'll have a retro-style discussion about how everything went.

## MVC with Rails

Rails is a web framework - a tool that helps us quickly and easily build
web applications - written in Ruby, and designed and created by David
Heinemeier Hannson (also known as 'DHH'). Although Rails applications don't
match up perfectly with the abstract idea of MVC, their architecture is fairly
similar.

Open it up in Atom. Have a look at the file structure. Let's take a step back
and just look at directories at the top level of the app.

```sh
.
├── app
├── config
└── db
```

For now, you only need to think about `app`, `config`, and `db` - you probably
won't be touching any code outside of those three directories. How is that
possible? Because Rails actually builds out most of these files and folders for
you, every time you use it to create a new application. That's why it's called
a 'framework' - it gives you the skeleton for a brand new app, which you can
then customize.

- The `app` directory holds the code for our application itself. We'll be
    writing a lot of code here.
- `config` holds configuration settings for our app and for the things that
    plug into it. This includes things like environmental variable settings and
    secret keys, but also things like the routing configuration for our server
    (which is not strictly part of our Rails app, but which our app uses);
    the `routes.rb` file, in particular, defines all of the routing for our
    app.
- `db` holds files related to the structure of the application's database.
    The database, like the server, is separate from Rails and is not strictly
    part of the app, so it makes sense to keep this outside of the `app`
    directory.

Let's dive into the `app` directory. This app in particular has more going on
than yours probably will, but it still has all the basic components.

```bash
./app
├── controllers
├── models
└── views
```

Three of these directories should jump out at you: `controllers`, `models`, and
`views`. Each holds the different Ruby files that Rails uses to handle the
respective responsibilities of MVC.

Don't worry about `assets`, `views`, `mailers`, or `helpers` for now, as these
all deal with more of the "views" portion of an application, which our front-end
is handling. Building a
web application with [Rails' default settings](http://rubyonrails.org/) will
give you this [monolithic](https://en.wikipedia.org/wiki/Monolithic_application)
application style.

## How to Approach Understanding Rails

There is a **lot** of structure and code automatically provided by Rails, and as
Rails developers, we only need interact with and understand a small part of it.
In fact, the creator of Rails has himself stated that he doesn't need to know
or understand all of the Rails framework ([watch the video clip](https://www.youtube.com/watch?v=zKyv-IGvgGE&feature=youtu.be&t=34m55s))!

For the aspects of the Rails framework we are concerned with, excellent
descriptions and code examples can be found in the
[Getting Started with Rails guide](https://guides.rubyonrails.org/getting_started.html).

## Additional Resources

- [RailsGuides](http://guides.rubyonrails.org/getting_started.html)
- [Official Rails Documentation](http://rubyonrails.org/)
- [MVC](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)
- [Framework vs Library](https://www.linkedin.com/pulse/whats-difference-between-library-framework-ledion-spaho/)