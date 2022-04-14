# Udagram Full-Stack Deployment Project
This is a Udacity project to deploy full-stack application, using **AWS services** for ***hosting*** and **Circle ci** for ***Continous Deployment***.
In our case a full-stack website that has *Angular* frontend, *Expressjs* backend and *postgresql* DB.
the website enables users to register, sign in and post feeds, but that is out of our consideration right now.

***Link to the App:-***
http://bahgat-udagram-bucket.s3-website-us-east-1.amazonaws.com/


## Infrastructure Description
### AWS Services
![aws services & usages](./SCREENSHOTS/D-AWS-services-usages.png)
There are three AWS services that i used to deploy this project
- **S3 Bucket** : for serving front-end static files & storing source-code bundle
- **Elastic Beanstalk** : for hosting back-end API
- **RDS** : for hosting postgres database

### Pipeline Process
![pipeline](./SCREENSHOTS/D-pipeline.png)

![pipeline](../SCREENSHOTS/D-pipeline.png)

#### Version Control
for version control I used: 
- **GIT**: is an open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency

#### CI/CD (pipeline)
For CI/CD, I used 
- **CircleCi**: CircleCI is one of the world largest shared continuous integration and continuous delivery (CI/CD) platform, and the central hub where code moves from idea to delivery. As one of the most-used DevOps tools that processes more than 1 million builds a day

Pipeline is automating the process of taking code from version controle and making it available to user, and this process makes delivery process faster also it gives quickly feedback for developer.
- When developer push code to version control, this trigers circleCi to run the pipeline.
- Pipeline starts doing all jobs specified in ```.circleci/config/yml``` file in our case: 
  - **install dependencies**
  - **build** 
  - **test**
  - **deploy to production**
  ![for visually impaired reviewer](./SCREENSHOTS/pipeline-steps.png)
### The Big Picture
![the big picture](./SCREENSHOTS/D-the-big-picture.png)
so shortly developer push code then pipeline starts deploying App on aws services so that end user can use the service


## App Dependencies
#### Front-End Dependencies
- [angular](https://angular.io/): front-end framework
  - angular/common
  - angular/core
  - angular/forms
  - angular/http
  - angular/platform-browser
  - angular/platform-browser-dynamic
  - angular/router
- [ionic framwork](https://ionicframework.com/): app development platform builds amazing cross-platform mobile, web, and desktop apps 
  - ionic-native/core
  - ionic-native/splash-screen
  - ionic-native/status-bar
  - ionic/angular
- [core-js](https://www.npmjs.com/package/core-js): Modular standard library for JavaScript. Includes polyfills for ECMAScript up to 2021
- [rxjs](https://www.npmjs.com/package/rxjs): Reactive Extensions for modern JavaScript
- [zone.js](https://www.npmjs.com/package/zone.js): Implements Zones for JavaScript, inspired by Dart.

#### Back-End Dependencies
- [nodejs](https://nodejs.org/): javascript runtime env
- [expressjs](https://expressjs.com/): web framework for Node.js
- [aws-sdk](https://www.npmjs.com/package/aws-sdk): AWS software development kit
- [bcrypt](https://www.npmjs.com/package/bcrypt): encryption lib
- [body-parser](https://www.npmjs.com/package/body-parser): parsing request body lib
- [cors](https://www.npmjs.com/package/cors): Cross-Origin Resource Sharing lib
- [email-validator](https://www.npmjs.com/package/email-validator): library for email validation
- [jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken): JWT lib
- [pg](https://www.npmjs.com/package/pg): postgres lib
- [reflect-metadata](https://www.npmjs.com/package/reflect-metadata): add Metadata to ECMAScript (Composition/Dependency Injection, Runtime Type Assertions, Reflection/Mirroring, Testing)for adding additional metadata to a class in a consistent manner
- [sequelize](https://www.npmjs.com/package/sequelize): promise-based Node.js ORM tool for Postgres and other DBs
- [sequelize-typescript](https://www.npmjs.com/package/sequelize-typescript): Decorators and some other features for sequelize


## Screenshots
#### Website
gefore registeration
![website before reg](SCREENSHOTS/website-before-register.png)
![website while reg](SCREENSHOTS/website-while-register.png)
![website after reg](SCREENSHOTS/website-after-register.png)
#### S3
![RDS](SCREENSHOTS/RDS.png)
#### Elastic beanstalk
![EB](SCREENSHOTS/EB.png)
#### S3 Bucket
![S3](SCREENSHOTS/S3.png)

#### CircleCi
success pipeline after push on github
![CircleCi](SCREENSHOTS/circleci-1.png)
![CircleCi](SCREENSHOTS/circleci-2.png)
![CircleCi](SCREENSHOTS/circleci-3.png)
environment variables
![CircleCi](SCREENSHOTS/circleci-environment-variables.png)







