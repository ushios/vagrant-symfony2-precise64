vagrant-symfony2-precise64
================

You develop the symfony2 application, We do the rest.

# Dependencies

- Vagrant >= 1.3.4
- Virtual machine
    - VirtualBox
    - VMWareFusion [vagrant vmware fusion plugin]


# Getting started.

## 1. Clone this repo

    $ git clone --recursive https://github.com/ushios/vagrant-symfony2-precise64.git path/to/clone 

## 2.Import boxes if you have not.

    $ cd path/to/clone
    $ ./import_box.sh

## 3.Make your setting and launch vm.

    $ cd path/to/clone
    $ cp settings/sample.rb settings/yourname.rb
    $ vi settings/yourname.rb 
    
    … 
    
    $ ln -s yourname.rb settings/current.rb
    $ vagrant up

How to setting using vim? see *Settings*.

## 3. Access to the app on web browser.

`http://localhost:8080/app_dev.php`


# Settings

Set your symfony2 application path on host OS.

    $share_folders = {
        :symfony2 =>	'path/to/symfony2_root'
    }
