# Class: shinken::poller
#
# Install, configure and ensure running for shinken poller daemon
class shinken::poller {
    class { 'shinken::daemon':
        daemon      => 'poller',
        port        => 7771,
        conf_file   => '/etc/shinken/pollerd.ini',
    }
}
