maintenance_orphans() {
  if [[ ! -n $(pacman -Qdt) ]]; then
    echo "No orphans to remove."
  else
    sudo pacman -Rns $(pacman -Qdtq)
  fi
}

maintenance_cleancache() {
  paccache -ruk0
}

maintenance_gdmap() {
  gdmap -f `pwd`
}

maintenance_bleachbit() {
  bleachbit
}
#
# https://wiki.archlinux.org/index.php/Pacman_tips#Identify_files_not_owned_by_any_package
#
maintenance_pacman.disowned() {

tmp=${TMPDIR-/tmp}/pacman-disowned-$UID-$$
db=$tmp/db
fs=$tmp/fs

mkdir "$tmp"
trap 'rm -rf "$tmp"' EXIT

pacman -Qlq | sort -u > "$db"

find /etc /opt /usr ! -name lost+found \( -type d -printf '%p/\n' -o -print \) | sort > "$fs"

comm -23 "$fs" "$db"

}

#
#https://wiki.archlinux.org/index.php/Pacman_tips#Backing_up_and_retrieving_a_list_of_installed_packages
#
maintenance.pacman.restore.1() {
pacman -S --needed $(comm -12 <(pacman -Slq|sort) <(sort /root/maintenance/pkglist.txt) )
}

maintenance.pacman.restore.2() {
yaourt -S --needed $(comm -13 <(pacman -Slq|sort) <(sort /root/maintenance/pkglist.txt) )
}

maintenance.pacman.restore.3.clean() {
pacman -Rsu $(comm -23 <(pacman -Qq|sort) <(sort /root/maintenance/pkglist.txt))
}


