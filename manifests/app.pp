node 'node1' {
	

	notify {'***TOMCAT PART ***':}
	
	class {'::tomcat': 
		user => 'tomcat',
		group => 'tomcat',
		service_enable => 'false',
		service_state => 'stopped'
		}
	notify {'***end of tomcat***':}

}	

node 'default' {
	
	notify	{'checkpoint_1':
		message => "
		
		CHECKPOINT_1

		Applying Default Block
		Loooks like there is no definition for this node...

 
		"
		} 

}

node 'node2' {

	notify {"***TOMCAT NODE2***": message => "Installing and starting tomcat service"}
	class {'::tomcat':
		user => 'root',
		group => 'root',
		service_state => 'stopped'
		}
}
