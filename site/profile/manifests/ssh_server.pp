class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvfT9tLcdGHz/WHXvXl68A6q5VHgDFE2YqrSXNE0eKn90+9xuZJOvRgk8qoa+5N4tRiEUFaPDOOnIe2mv1ZlLE/sY+CIGcVH0XyPFnR4tPcQOyyHDyIggLr6K++Iy83tShbMU+DhXF7zFb2WkTcuCuVICrZVQ1whiHB5/1m6qIS+1WYRTh0LrdsMfeKjakpzblrub2NTbudw8g32IK3bIMopC7DX788ubRNs/lSugcP3IQV4dIlo+OELSVWmXm08QAl2fJTyrHSxBFVZD/SrOj96lRlC6otKsl/oTgNZNvaKbuFs1R96zCSq4Ktmkyarx6hZQdovjql8wXKR8Fky2X',
	}  
}
