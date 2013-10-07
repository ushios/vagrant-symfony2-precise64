vagrant-symfony2-precise64
================

You develop the symfony2 application, We do the rest.

# Dependencies

- Vagrant >= 1.3.4
- Virtual machine
    - VirtualBox
    - VMWareFusion [vagrant vmware fusion plugin]


# Getting started.

## Import boxes if you have not.

    $ cd path/to/clone
    $ ./import_box.sh

## Make your setting and launch vm.

    $ cd path/to/clone
    $ cp settings/sample.rb settings/yourname.rb
    $ vi settings/yourname.rb
    
    … 
    
    $ ln -s yourname.rb settings/current.rb
    $ vagrant up
