# Bolt_linuxdb
Module to install linux db

Oracle Database Bolt module

Only for Bolt >= 2.0 and uses the latest puppet 4 features like

    Strong data typing
    Internal hiera module data
    uses Facts array
    epp templating instead of erb

Oracle Database resource types

    db_control, start stop or a restart a database instance also used by dbactions manifest.pp
    db_opatch, used by the opatch.pp manifest
    db_rcu, used by the rcu.pp manifest
    db_listener, start stop or a restart the oracle listener ( supports refreshonly )

In combination with the oracle module of Bert Hajee (http://forge.puppetlabs.com/hajee/oracle) you can also create

    create a tablespace
    create a user with the required grants and quota's
    create one or more roles
    create one or more services
    change a database init parameter (Memory or SPFILE)

Some manifests like installdb.pp, opatch.pp or rcusoa.pp supports an alternative mountpoint for the big oracle files. When not provided it uses the files location of the oradb puppet module else you can use 