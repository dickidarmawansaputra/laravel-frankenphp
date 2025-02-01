# Laravel ❤️ FrankenPHP

## Stress Testing Tool
- [Pest Stress Testing](https://pestphp.com/docs/stress-testing)
- Command Stress Test
Stress testing with duration `10` seconds & concurrent requests `300`
```bash
./vendor/bin/pest stress http://localhost --duration=10 --concurrency=300
```
  
## Docker
Serving a Laravel web application with FrankenPHP is as easy as mounting the project in the /app directory of the official Docker image.
```bash
docker run -p 80:80 -p 443:443 -p 443:443/udp -v $PWD:/app dunglas/frankenphp
```

### Result Stress Test 
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/cdb8ef13-093e-4caf-96ef-acce61c76242" />

## Local Installation
Run your Laravel projects with FrankenPHP from your local machine.
### Install FrankenPHP
- Install FrankenPHP
```bash
curl https://frankenphp.dev/install.sh | sh
mv frankenphp /usr/local/bin/
```
- Add the following configuration to a file named `Caddyfile` in the root directory of your Laravel project:
```caddyfile
{
	frankenphp
}

# The domain name of your server
localhost {
	# Set the webroot to the public/ directory
	root * public/
	# Enable compression (optional)
	encode zstd br gzip
	# Execute PHP files from the public/ directory and serve assets
	php_server {
		try_files {path} index.php
	}
}
```

### Result Stress Test
- Command
```bash
php artisan serve
```
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/3d3e29cc-092f-42f0-a5bb-bf15cafdf392" />

- Command
```bash
franken run
```
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/76e154fe-51b3-4cc2-9ae9-8f515e083908" />

## Laravel Octane
Using Laravel Octane
### Install Laravel Octane via the Composer package manager
```bash
composer require laravel/octane
```

### Result Stress Test
- Command
```bash
php artisan octane:frankenphp
```
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/74062ed8-3def-43eb-9c07-2d3f96908d37" />

- Command:
```bash
php artisan octane:frankenphp --host=127.0.0.1 --port=8000 --workers=4
```
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/173e198c-a1a2-4f9f-b34e-17087f48d3cf" />

## Running Octane With Standalone Binaries
Run package Laravel Octane apps as standalone binaries.
```bash
PATH="$PWD:$PATH" frankenphp php-cli artisan octane:frankenphp
```

### Result Stress Test
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/fa85826a-e07b-4259-8bc8-10387d981266" />



