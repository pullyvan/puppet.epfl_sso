class epfl_sso::private::params {
  $krb5_domain = "INTRANET.EPFL.CH"
  $ad_server = "ad3.intranet.epfl.ch"

  case "${::operatingsystem} ${::operatingsystemmajrelease}" {
         'Ubuntu 12.04': {
           $sssd_packages = ['sssd']
           $needs_nscd = true
         }
         default: {
           $sssd_packages = ['sssd', 'sssd-ldap']
           $needs_nscd = false
         }
  }
}
