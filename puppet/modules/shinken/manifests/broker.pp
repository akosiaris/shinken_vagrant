# Class: shinken::broker
#
# Install, configure and ensure running for shinken broker daemon 
class shinken::broker {
    class { 'shinken::daemon':
        daemon      => 'broker',
        port        => 7772,
        conf_file   => '/etc/shinken/brokerd.ini',
    }
}
