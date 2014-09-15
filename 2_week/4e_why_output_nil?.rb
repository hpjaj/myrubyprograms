Based on the ternary operator it is evaluating to true, so it is returning/executing whatever is in the second position.  I ran this test to confirm that.

puts expand = defined?( expand ) ? "here" : true

output:
here


The reason it is evaluating as true is because it is simply saying that this is a valid assignment; therefore x does equal y in an assignment.  So expand does equal defined?( expand ) in this assignment.

That said, since it evaluates to true, it evaluates the second position of the ternary operator.  

The definition of how defined? works is: 

"defined? expression tests whether or not expression refers to anything recognizable (literal object, local variable that has been initialized, method name visible from the current scope, etc.). The return value is nil if the expression cannot be resolved. Otherwise, the return value provides information about the expression."

Based on this definition, when it executes expand, expand is not anything recognizable.  

I think it is not recognizable because at the moment it is calling defined? on expand, this is BEFORE it assigns it to expand; therefore, at that moment in time, expand is nothing recognizable. It is not an object, or variable or anything YET, so it is unrecognizable, and by definition returns nil.