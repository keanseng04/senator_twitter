<div class="container">
<div id="challenge" class="row">
<div class="col-sm-8">
<div class="row">
<div class="col-sm-12">
<div class="tab-content">
<div id="body" class="tab-pane fade in active">

By now, you should be familiar with OOP concepts like composition, inheritance, and abstraction. Let's apply some of those with a real-world problem using ActiveRecord single-table-inheritance and associations.

First, we'll ensure that the modeling you did for the previous challenge used best practices. After that, we'll add another model that will store tweets for a given congressperson.

It should go without saying at this point that you should be writing lots of Tests as you create your code.

Using <code>git</code>, commit early and commit often. You should be able to point a reviewer at a <code>git</code> SHA to show them any completed objective.
<h2>Objectives</h2>
<h3>Single-table inheritance</h3>
If when you solved <a href="http://learn.codedivision.my/challenges/87">the previous challenge</a> you did so without using <a href="http://api.rubyonrails.org/classes/ActiveRecord/Base.html#label-Single+table+inheritance">single-table inheritance</a>, update your models such that you <em>are</em> using STI.

You may need to write some new migrations to accommodate these changes. Be sure the migrations are symmetric!
<h3>Grab those tweets!</h3>
Write a script that will grab and store up to 10 of the most recent tweets for a given congressperson. Be sure that you don't store multiple copies of the same tweet.

To interact with the Twitter API, you'll probably want to use <a href="https://github.com/sferik/twitter">this gem</a> and will likely need to get a <a href="https://dev.twitter.com/discussions/631">Twitter API Key</a>.
<h3>A little birdie told me ...</h3>
As you've been perusing the data, you may have noticed that some congresspeople have their own <a href="http://twitter.com/">Twitter</a> account. To complete this objective, you'll need to add a model that will be responsible for storing a copy of tweets from a given congressperson.

Make sure that your model stores Twitter's unique identifier for the tweet somewhere. This will be important later so we don't duplicate any data when we're retrieving tweets.

</div>
</div>
</div>
</div>
</div>
</div>
</div>
&nbsp;
