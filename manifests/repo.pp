class hipchat::repo {
  
  case $::osfamily {
    'Debian': {
      
      apt::source { 'hipchat':
        location => 'http://downloads.hipchat.com/linux/apt',
        release  => 'stable',
        repos    => 'main',
        include  => {
          src => false,
        },
      
        key => {
          id     => '69F57C04EA38EEE7A47E9BCCAAD4AA21729B5780',
          source => 'https://www.hipchat.com/keys/hipchat-linux.key',
        },
      }

    }

    default: {
      notify{"Hipchat repo: OS family ${::osfamily} not supported":}
    }

  }

}
