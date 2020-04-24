# DServers
Dart Server 
![](https://firebasestorage.googleapis.com/v0/b/dservers-5def7.appspot.com/o/Banner%20Image%2FDServers.png?alt=media&token=ca1c8b5a-e206-43b0-a85a-f6ed0ee28c6b)
##  Intro
This package will help you to start the dart servers easily.

## how to run dart code

[Official Dart Dev](https://dart.dev/tutorials/server/get-started)

## Example

[GitHub Repo Dservers Example ](https://github.com/rougerepublic23/DServer_examples)

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

this will take a function which have a parameters server. This server will call when the server starts.For Example:
```dart
onServerStart: (server) {
          print(
              'ServerStart ${server.port} and ip adress ${InternetAddress.loopbackIPv4}');
        }
```
The onStart will get a function which have server as the parameter with server we can get things about our servers like server.port for getting in which server do our machine runs.

### onurlNotFound

This is function that dev can give if need custom 404 error page .
This function will triger if their is a 404 error on the server request.For Example:
```dart
 onurlNotFound: (request) {
          request.response
            ..write('Sorry This is 404 Error')
            ..close();
        }

```
onurlNotFound have a parameter have a request with request we can get out the response when the this function call to users.Also we can set server status etc.To set server status you can add:
```dart
statusCode =HttpStatus.notFound
```
For Example:
```dart
 onurlNotFound: (request) {
          request.response
          ..statusCode =HttpStatus.notFound
            ..write('Sorry This is 404 Error')
            ..close();
        }
```

### parameters

It will take a list of parameters 
Which take Parameters object.

```dart
parameters:[ 
  Parameters(),
  Parameters(),
]
```

#### Parameters object

The Parameters object take a parameters with is a string type which represent url
```dart
Parameters Parameters({String parameters, Function onRequest})
```
For Example:
```dart
Parameters(
              parameters: '/',
              onRequest: (request) {
                request.response
                  ..write('Welcome to DServer')
                  ..close();
              })
```
### parameters url

The Parameters will get a string which represend a String
```dart
String parameters
```
### onRequest
This will take a function with have a paramets request. This function will trigger when user acess those urls.For Example:
```dart
onRequest: (request) {
                request.response
                  ..write('Welcome to DServer')
                  ..close();
              }
```
the Request parameter can be use to do response when ever the function is called.
Use can Also set server status. By
```dart
statusCode =HttpStatus.<status>
```

In this you get which method is called on server by
```dart
request.method
```

Method can be varied from GET, POST, UPDATE etc....

You can view HTML with this package or dart language as a responce.But I recommend you to use this as a api server to connect your flutter web or app. Flutter provide much more in their Flutter Web and you can still write website in one code base instead of writing HTML.

## Future

This package was develop to show that dart or flutter is not only a client side langugae but you can use in server side to with the help of language like dart.
