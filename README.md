php-project-template
====================
A starting point for PHP projects that want to make use of continuous integration tools.

Based upon http://jenkins-php.org/, but optimised for projects that use [Composer](https://github.com/composer/composer) and [Vagrant](https://github.com/mitchellh/vagrant)


## Useful Commands ##
Run all tests

    ant phpunit

Run all build tools (phplint, phploc, phpmd, phpunit, etc)

    ant build
    
Run all build tools in parallel

    ant build-parallel
    
Start a vagrant virtual machine

    vagrant box add precise32 http://files.vagrantup.com/precise32.box (if not already added)
    vagrant up
