pkg_origin=jveiga
pkg_name=mytutorialapp
pkg_version=0.0.2
pkg_deps=(
  core/python2
  core/virtualenv
)
pkg_exports=(
  [port]=listening_port
)
pkg_expose=(port)


do_build(){
  mkdir -p $pkg_prefix

  cp -vr $PLAN_CONTEXT/../source/* $pkg_prefix

}

do_install() {
  cd $pkg_prefix

  virtualenv venv
  source  venv/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
}
