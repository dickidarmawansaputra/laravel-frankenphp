# Laravel ❤️ FrankenPHP

## Local Installation
### Install FrankenPHP
- Install FrankenPHP
```bash
curl https://frankenphp.dev/install.sh | sh
mv frankenphp /usr/local/bin/
```
- Add the following configuration to a file named `Caddyfile` in the root directory of your Laravel project:
```
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
- `php artisan serve`
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/3d3e29cc-092f-42f0-a5bb-bf15cafdf392" />

- `franken run`
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/76e154fe-51b3-4cc2-9ae9-8f515e083908" />

## Laravel Octane
### Install Laravel Octane via the Composer package manager
```bash
composer require laravel/octane
```

### Result Stress Test
- `php artisan octane:frankenphp`
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/74062ed8-3def-43eb-9c07-2d3f96908d37" />

- `php artisan octane:frankenphp --host=127.0.0.1 --port=8000 --workers=4`
<img width="1038" alt="image" src="https://github.com/user-attachments/assets/173e198c-a1a2-4f9f-b34e-17087f48d3cf" />


