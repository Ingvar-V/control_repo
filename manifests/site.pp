node default {
}
node 'master.puppet.vm' {
  includerole::master_server
}
