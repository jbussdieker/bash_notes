. scripts/path

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

_add_path /foo1
# status=0
# match=~/$^/
# env[PATH]=~/\/foo1/
# env[PATH]?=string

_add_path /foo2
# status=0
# match=~/$^/
# env[PATH]=~/\/foo1/
# env[PATH]=~/\/foo2/
# env[PATH]?=string

_add_path "/foo 3"
# status=0
# match=~/$^/
# env[PATH]=~/\/foo1/
# env[PATH]=~/\/foo2/
# env[PATH]=~/\/foo 3/
# env[PATH]?=string

_remove_path /foo1
# status=0
# match=~/$^/
# env[PATH]!=~/\/foo1/
# env[PATH]=~/\/foo2/
# env[PATH]=~/\/foo 3/
# env[PATH]?=string

_remove_path /foo2
# status=0
# match=~/$^/
# env[PATH]!=~/\/foo1/
# env[PATH]!=~/\/foo2/
# env[PATH]=~/\/foo 3/
# env[PATH]?=string

_remove_path "/foo 3"
# status=0
# match=~/$^/
# env[PATH]!=~/\/foo1/
# env[PATH]!=~/\/foo2/
# env[PATH]!=~/\/foo 3/
# env[PATH]?=string
