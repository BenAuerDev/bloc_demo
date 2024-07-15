# Lunch Spot Voting

This is a demo app for my talk at the Flutter Holland Meetup on July 27th in Amsterdam. 

It features:
- Basic Serverpod Email Authentication
- LunchSpotVoting
  1. Propose LunchSpot (Save entry in DB)
  2. Get LunchSpots (Read from DB)
  3. Vote for Lunchspot (Update entry in DB) 

## For everyone who couldn't attend you can find the tutorial [here](https://medium.com/@ben.auer.dev/managing-state-with-bloc-in-a-full-stack-flutter-serverpod-app-a403239ad301).

https://github.com/BenAuerDev/bloc_demo/assets/136239531/0bfc80ef-57b1-410f-84e4-8f95600b1a1e




## In case you haven't already install the following:

### Install Flutter and Dart. 
You can follow the instructions on the official Flutter website: [Flutter Installation Guide](https://docs.flutter.dev/get-started/install)

### Install Docker. 
You can follow the instructions on the official Docker website: [Docker Installation Guide](https://docs.docker.com/get-docker/)

### Install Serverpod CLI
Once you have Flutter and Docker installed and configured, open up a terminal and install Serverpod by running:
```bash
dart pub global activate serverpod_cli
```

## Clone Project
To clone run:

```dart
git clone "https://github.com/BenAuerDev/bloc_demo.git"
```

### Server Setup

Create `/bloc_demo/bloc_demo_server/config/passwords.yaml` and add the development passwords as in `docker-compose.yaml`:

```yaml
development:
  database: 'SZ0F9XiNnUQTYRTxHTmQYPRiCHhyu4hO'
  redis: 'cgc1yUSXgYozFhHNU86hmgLN2Z4oFIOb'
```

Navigate to the server directory:

```bash
cd ./bloc_demo/bloc_demo_server/
```

**Make sure you have Docker running** and start up the database:

```bash
docker-compose up --build --detach
```

Run the server and apply the migrations to your (fresh) database:

```shell
dart bin/main.dart --apply-migrations
```

If your database already has all the changes you just run:

```shell
dart bin/main.dart
```

### Flutter

then all you need to do is navigate to `bloc_demo_flutter` and run:

```shell
flutter run
```
