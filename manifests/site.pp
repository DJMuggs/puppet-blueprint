filebucket { 'main':           
  path => false,               
}

File { backup => 'main' }      

node default {                 
} 

if versioncmp($::puppetversion,'3.6.1') >= 0 {
    
  $allow_virtual_packages = hiera('allow_virtual_packages',false)
    
  Package {
    allow_virtual => $allow_virtual_packages,
  }
}

hiera_include('classes')

