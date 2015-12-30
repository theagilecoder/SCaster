# Introduction

SCaster is a Rails v4.2.2 app running on the Puma Webserver.
SCaster aims to include all popular Demand Forecasting models in a free to access SaaS model.
That includes all Quantitative models such as Time Series, Causal and Regression based models. Currently qualitative models are out of scope.

---

Want to log an issue or request a feature ? [Check out issues page](https://github.com/theagilecoder/SCaster/issues)

---

Installation
------------
This is really all you need to get going.
~~~
$ git clone https://github.com/theagilecoder/SCaster.git
~~~

Add your own Forecasting models
------------

Every model is a separate Resource:
#### `config/routes.rb`
~~~
resources :newmodel
~~~

After this generate the corresponding model and controller:
~~~
$ rails generate model Newmodel user:references parameter1:decimal parameter2:decimal parameter3:decimal
$ rails generate controller Newmodels
~~~

Create views files manually and go on to add your stuff.

License
------------
Nope. None. Zilch. Nil.