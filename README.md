![Citeck ECOS Logo](https://raw.githubusercontent.com/Citeck/ecos-ui/master/public/img/logo/ecos-logo.png)

# ECOS Community Demo

This repository provides a Docker Compose setup for running the `Citeck ECOS Community Demo`. The Citeck ECOS is an
enterprise content management system that allows managing business processes, documents, and tasks.

## Prerequisites

Make sure you have the following prerequisites installed on your system:

- Docker: [Install Docker](https://docs.docker.com/engine/install/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)
- 16 gb RAM for docker engine

## Installation

#### 1. Add the host entry to the `.hosts` file:

To access the ECOS Community Demo, you need to add an entry to your system's `.hosts` file. The location of the file and
the procedure for adding the entry differs between Linux and Windows operating systems:

**Linux / MacOS:**

- Open a terminal window.
- Edit the `.hosts` file using a text editor with administrative privileges (e.g., `sudo nano /etc/hosts`).
- Add the following line at the end of the file:

  ```
  127.0.0.1       localhost ecos-community-demo
  ```

- Save the file and exit the text editor.

**Windows:**

- Open File Explorer and navigate to `C:\Windows\System32\drivers\etc`.
- Copy the `hosts` file to your desktop or any other writable location.
- Open the copied `hosts` file using a text editor with administrative privileges (e.g., Notepad).
- Add the following line at the end of the file:

  ```
  127.0.0.1       localhost ecos-community-demo
  ```

- Save the file and replace the original `hosts` file in the `C:\Windows\System32\drivers\etc` directory.

#### 2. Clone this repository:

```bash
git clone https://github.com/citeck/ecos-community-demo.git
```

**Note**: ecos-community-demo comes with pre-filled demo data. To disable this setting before deploying the stand go to
the `\services\environments folder` and in files `ecos-microservices-postgresql.env`, `mongodb-app.env` change
setting `WITH_DEMO_DATA` from **true** to **false**.

#### 3. Navigate to the cloned repository:

```bash
cd ecos-community-demo
```

#### 4. Start the Docker Compose setup:

```bash
docker-compose up -d
```

This command will build and start the necessary Docker containers. It may take a few minutes to download the required
images and set up the environment.

**Note**: On Windows, you may need to launch the text editor with administrative privileges and grant it the necessary
permissions to save changes to the `hosts` file.

#### 5. Access the ECOS Community Demo:

Once the Docker containers are up and running and the host entry is added to the `.hosts` file, you can access the
Citeck ECOS Community Demo by opening your web browser and visiting `http://localhost/`. The demo should be
available at this URL.

## Usage

The Citeck ECOS Community Demo provides a pre-configured environment for testing and exploring the capabilities of the
ECOS system. You can log in using the following credentials:

- Username: `admin`
- Password: `admin`

Please note that this is a demo setup, and it is not recommended for production use. If you want to use Citeck ECOS in a
production environment, please refer to the official documentation for deployment instructions.

## Stop and Cleanup

To stop and remove the Docker containers, you can use the following command:

```bash
docker-compose down
```

This will stop and remove the containers, but it will keep the downloaded images on your system. If you want to remove
the images as well, you can use the `--volumes` flag:

```bash
docker-compose down --volumes
```

## Additional Resources

For more information about Citeck ECOS and its features, please refer to the official
documentation: [Citeck ECOS Documentation](https://citeck-ecos.readthedocs.io/ru/latest/index.html)

## License

This Docker Compose setup is licensed under the [LGPL License](LICENSE). Please note that Citeck ECOS has its own
licensing terms and conditions, which you should review separately.

## Warning

Please do not try to download the repository as an archive, download the repository using git clone
