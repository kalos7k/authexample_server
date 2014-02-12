authexample_server
==================

Rails server using devise that will allow android user logins using a token.  The token is regenerated upon new login.  

Step 1: create a user in rails console.  
rails console  
user = User.new(:name => 'testuser', :email => 'user@example.com', :password => 'Secret12', :password_confirmation => 'Secret12')
user.skip_confirmation!  
user.save  
exit  
rails server  

Step 2: login from a terminal  
curl -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/v1/sessions -d "{\"user\":{\"email\":\"user@example.com\",\"password\":\"Secret12\"}}"  

Sample output:  
{"success":true,"info":"Logged in","data":{"auth_token":"gUfvdqpx6vDPMsBawype"}}  

Step 3: logout from a terminal  
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X DELETE http://localhost:3000/api/v1/sessions/\?auth_token\=pgFDhaVH7fVSk7ro3rof 

Sample outout:  
...  
{"success":true,"info":"Logged out","data":{}}
