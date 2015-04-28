1. When getting error:

ActionView::Template::Error (undefined method `arrange' for #<Array:0x007f8adbf76940>)

Because arrange method is Ancestry 1.2.5 's class method, I changed

app/views/index.html

<pre><code>
<%= nested_messages @messages.arrange(:order => :created_at) %>
</code></pre>

into:

<pre><code>
<%= nested_messages @messages %>
</code></pre>

And changed

app/controller/message_controller.rb

<pre><code>
def index
    @messages = Message.all
    ...

end
</code></pre>
into:

<pre><code>
def index
    @messages = Message.arrange(:order => :created_at)
    ...
end
</code></pre>