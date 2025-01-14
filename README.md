# Video-Chat-Sample-Application-with-SwiftUI-And-EnableXUIkit
This is a sample video calling app that uses EnableX infrastructure, UIKit. It allows developers to try out real-time video and audio features on SwiftUI.

This sample apps allows you to easily:
* Create a Virtual Room with REST video API 
* Gain the Room Credential (i.e. Room ID) 
* Join Virtual Room either as moderator or partipicant securely

You will also enjoy the following features: 
* Mute/Unmute Video
* Mute/Unmute Audio
* Switch Audio media
* ActiveTalker 
* Switch camera
* Disconnect

> For more information, pls visit our Developer Center https://developer.enablex.io/

## 1. Get started

### 1.1 rerequisites

#### 1.1.1 App ID and App Key 

You would need API credentials to access EnableX platform. To do that, simply create an account with us. It’s absolutely free!

* Create an account with EnableX - https://www.enablex.io/free-trial/
* Create your Project
* Get your App ID and App Key delivered to your email

#### 1.1.2 Requirement

* iOS Deployment Target: 13.0 or higher
* Xcode Version: 11.0 or higher
* Language: SwiftUI
  * Swift Language Version: 4.0 or higher


#### 1.1.3 Sample iOS Client 

* Clone or download this Repository : https://github.com/EnableX/EnableX-Video-Chat-Sample-Application-with-SwiftUI-And-UIKit-.git 

#### 1.1.4 Set up Application Server

An Application Server is required for your iOS App to communicate with EnableX. We have different variants of Application Server Sample Code. Pick the one in your preferred language and follow instructions given in README.md file of respective Repository.

* NodeJS: https://github.com/EnableX/Video-Conferencing-Open-Source-Web-Application-Sample.git 
* PHP: https://github.com/EnableX/Group-Video-Call-Conferencing-Sample-Application-in-PHP

Note the following:
•    You need to use App ID and App Key to run this Service.
•    Your iOS Client End Point needs to connect to this Service to create Virtual Room and Create Token to join the session.
•    Application Server is created using [EnableX Server API] (https://developer.enablex.io/docs/guides/video-guide/sample-codes/video-calling-app/#demo-application-server) while a Rest API Service helps in provisioning, session access and post-session reporting.

If you would like to test the quality of EnableX video call before setting up your own application server,  you can run the test on our pre-configured environment. Refer to point 2 for more details on this.

### 1.2 Configure iOS Client 

* Open the App
* Go to EnxConstant.swift, it's reads: 

``` 
 /* To try the App with Enablex Hosted Service you need to set the kTry = true
    When you setup your own Application Service, set kTry = false */
    
    let kTry = true

 /* Your Web Service Host URL. Keet the defined host when kTry = true */
    
    let kBasedURL = "https://demo.enablex.io/"
     
 /* Your Application Credential required to try with EnableX Hosted Service
    When you setup your own Application Service, remove these */
    
    let kAppId    = ""
    let kAppkey   = ""
 
 ```

### 1.3 Test

#### 1.3.1 Open the App

* Open the App in your Device. You get a form to enter Name, Room ID and Role (Moderator or Participant). 
* If you don't have a Room ID, create a Room by clicking the "Create Room" button.
* Enter the Room ID in the Form to connect to the Virtual Room to carry out an RTC Session either as a Moderator or a Participant.
* Share Room ID with others to join the Virtual Room with you.

Note: 
* This Sample Application created a Virtual Room with limited Participants and 1 Moderator only. 
* In case of emulator/simulator your local stream will not create. It will create only on real device.

## 2. Testing Environment

If you would like to test the quality of EnableX video call before setting up your own application server,  you can run the test on our pre-configured environment.https://try.enablex.io/
In this environment, you will only be able to:

* Conduct a single session with a total durations of not more than 10 minutes.
* Host a multiparty call with not more than 3 participants 

> More information on Testing Environment: https://developer.enablex.io/docs/guides/video-guide/sample-codes/video-calling-app/#demo-application-server

Once you have tested it, it is important that you set up your own Application Server to continue building a multiparty iOS video calling app. Refer to section 1.1.4 on how to set up the application server. 
  
## 3. iOS Toolkit

This Sample Application uses EnableX iOS Toolkit to communicate with EnableX Servers to initiate and manage Real-Time Communications. Please update your Application with latest version of EnableX IOS Toolkit as and when a new release is available.

* Documentation: https://developer.enablex.io/docs/references/sdks/video-sdk/ios-sdk/index/
* Download: https://developer.enablex.io/docs/references/sdks/video-sdk/ios-sdk/index/


## 4. Support

EnableX provides a library of Documentations, How-to Guides and Sample Codes to help software developers get started. 

> Go to https://developer.enablex.io/. 

You may also write to us for additional support at support@enablex.io.   

