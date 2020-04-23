# DServers
Dart Server 

##  Intro
This package will help you to start the dart servers easily.

## How to work
Initialise a main with Class 
```dart
void main() => MyApp();
```
now extend the DServer with you class
now you can acess DSerevers
```dart
class MyApp extends DServers {
  MyApp() {
   
   }
}

```
Now to Start your Server use start Server

```dart
startServer(
 ipAdress: InternetAddress.loopbackIPv4,
 port: 8000,
 onServerStart: (){},
 onurlNotFound:(){}
 parameters: []
 )

```
tThe StartServer can get get few parametrs. They are ipadress take the ipadress of the server need to host, port is your need port that need to show your server. 

### onServerStart

this will take a function which have a parameters server. This server will call when the server starts


### onurlNotFound

This is function that dev can give if need custom 404 error page .
This function will triger if their is a 404 error on the server request.


### parameters

It will take a list of parameters 
Which take Parameters object.

#### Parameters object

The Parameters object take a parameters with is a string type which represent url

### onRequest
This will take a function with have a paramets request. This function will trigger when user acess those urls


## Future

This package was develop to show that dart or flutter is not only a client side langugae but you can use in server side to with the help of language like dart.

