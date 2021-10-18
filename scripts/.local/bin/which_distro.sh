function which_distro {
    lsb_release -i | cut -f 2-
}