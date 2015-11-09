# Class: shinken::scheduler
#
# Install, configure and ensure running for shinken receiver daemon
class shinken::scheduler {
    class { 'shinken::daemon':
        daemon      => 'scheduler',
        port        => 7768,
        conf_file   => '/etc/shinken/schedulerd.ini'
    }
}
