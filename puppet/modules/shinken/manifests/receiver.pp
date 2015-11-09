# Class: shinken::receiver
#
# Install, configure and ensure running for shinken receiver daemon
class shinken::receiver {
    class { 'shinken::daemon':
        daemon      => 'receiver',
        port        => 7773,
        conf_file   => '/etc/shinken/receiverd.ini',
    }
}
