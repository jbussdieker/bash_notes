. scripts/uname_functions

_uname_to_goos            # status=1; match=/^$/
_uname_to_goos Darwin     # status=0; match=/^darwin$/
_uname_to_goos Linux      # status=0; match=/^linux$/
_uname_to_goos FreeBSD    # status=0; match=/^freebsd$/
_uname_to_goos Foobar     # status=2; match=/^unknown$/

_unamem_to_goarch        # status=1; match=/^$/
_unamem_to_goarch amd64  # status=0; match=/^amd64$/
_unamem_to_goarch x86_64 # status=0; match=/^amd64$/
_unamem_to_goarch i686   # status=0; match=/^386$/
_unamem_to_goarch foobar # status=2; match=/^unknown$/
