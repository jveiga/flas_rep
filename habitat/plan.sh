pkg_origin=jveiga
pkg_name=mytutorialapp
pkg_upstream_url=https://github.com/jveiga/flas_rep
pkg_version=0.0.1
pkg_deps=(
  core/python2
  core/virtualenv
)
pkg_exports=(
  [port]=listening_port
)
pkg_expose=(port)


do_build(){
  cp -vr $PLAN_CONTEXT/../source/* $CACHE_PATH


}

do_install() {
  cp -vr $CACHE_PATH/* ${pkg_prefix}

  cd ${pkg_prefix}

  virtualenv venv
  source  venv/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
}
