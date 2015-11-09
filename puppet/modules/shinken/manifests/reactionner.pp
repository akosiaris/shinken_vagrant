# Class: shinken::reactionner
#
# Install, configure and ensure running for shinken reactionner daemon
class shinken::reactionner {
    class { 'shinken::daemon':
        daemon      => 'reactionner',
        port        => 7769,
        conf_file   => '/etc/shinken/reactionnerd.ini',
    }
}
