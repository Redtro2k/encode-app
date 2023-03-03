## Encode App
This is a Laravel project that allows users to encode and decode messages using various algorithms.

## Cloning the Project
To clone this project onto your local machine, follow these steps:

1. Install Git on your computer if it's not already installed. You can download it from https://git-scm.com/downloads.

2. Open your terminal or command prompt and navigate to the directory where you want to clone the Laravel project.

3. Copy the Git clone URL from the Encode App repository on GitHub:
https://github.com/Redtro2k/encode-app.git
In your terminal or command prompt, type the following command:
 > git clone https://github.com/Redtro2k/encode-app.git
Press enter to execute the command. Git will now clone the Laravel project onto your local machine.

4. Once the cloning process is complete, navigate to the project directory in your terminal or command prompt:
  - Copy the .env.example file in the project directory and rename it to .env:
    > cp .env.example .env
5. Generate a new key for the Laravel application:
    > php artisan key:generate
6. Install the project dependencies using Composer:
    > composer install
7. Install the project dependencies using NPM:
 > npm install
Build the project assets using Vite:
 > npm run dev
8. Create a new database for the Laravel project in your database management system (e.g. MySQL, PostgreSQL, etc.).
    - Update the database connection details in the .env file to match your database credentials.

9. Migrate the database tables using the following command:
    > php artisan migrate
Finally, run the Laravel development server with the following command:
 > php artisan serve
10. You can now access the Encode App in your web browser by navigating to http://localhost:8000.
