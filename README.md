# Lunch Spot Voting

To clone run:

```dart
git clone "https://github.com/BenAuerDev/bloc_demo.git"
```

## Server Setup

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

## Flutter Setup

then all you need to do is navigate to `bloc_demo_flutter` and run:

```shell
flutter run
```
