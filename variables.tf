variable "oracle_api_key_fingerprint" {}
variable "oracle_api_private_key_path" {}

variable "ssh_public_key" {}
variable "ssh_private_key_path" {}

variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "user_ocid" {}

variable "region" {}

variable "instance_display_name" {
  default = "WireHole"
}

variable "vcn_cidr_block" {
  default = "10.1.0.0/16"
}

variable "availability_domain_number" {
  type = map(string)

  default = {
    ap-chuncheon-1 = 1
    ap-hyderabad-1 = 1
    ap-melbourne-1 = 1
    ap-mumbai-1    = 1
    ap-osaka-1     = 1
    ap-seoul-1     = 1
    ap-sydney-1    = 1
    ap-tokyo-1     = 1
    ca-montreal-1  = 1
    ca-toronto-1   = 1
    eu-amsterdam-1 = 1
    eu-frankfurt-1 = 3
    eu-zurich-1    = 1
    me-dubai-1     = 1
    me-jeddah-1    = 1
    sa-santiago-1  = 1
    sa-saopaulo-1  = 1
    uk-cardiff-1   = 1
    uk-london-1    = 3
    us-ashburn-1   = 3
    us-phoenix-1   = 3
    us-sanjose-1   = 1
  }
}

variable "instance_shape" {
  # Free-Tier is VM.Standard.E2.1.Micro
  default = "VM.Standard.E2.1.Micro"
}

variable "instance_image_ocid" {
  type = map

  default = {
    # See https://docs.oracle.com/en-us/iaas/images/ubuntu-1804/
    # Oracle-provided image "Canonical-Ubuntu-18.04-2020.12.11-0"
    ap-chuncheon-1 = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaa4jmnlvf2sb6dkkolhkxo4bmjjrr2w5zfajsz6mra7fdxh2bmibea"
    ap-hyderabad-1 = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaajnru2s5t7haaqcmxrwtis2nicqro5ysp4pvc6izuirs2lepuloza"
    ap-melbourne-1 = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaawctcj5y6fbyozezt725azs3cvmlmnrpxghg3ny2dflkeayz2oqla"
    ap-mumbai-1    = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaasyycr7ps55lrah6a7a2xxtqifvgarhwuf6u73hwup4zkw7f4kn5a"
    ap-osaka-1     = "ocid1.image.oc1.ap-osaka-1.aaaaaaaapenyex5pxfxy6sj3y3giodvcuab3q2ijecseqagxrjkh56nfp3bq"
    ap-seoul-1     = "ocid1.image.oc1.ap-seoul-1.aaaaaaaauz3wjiq7cug667vvj7rsghqam7k6ixvq64deiw2suf6mk2iru5eq"
    ap-sydney-1    = "ocid1.image.oc1.ap-sydney-1.aaaaaaaabrw3swos5hvtxqfgxu63bnd23hfjq7telribqeiqusxtdazwlwua"
    ap-tokyo-1     = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaa3xvdaubabxqrh36zgujjp3gh6c2suul4u4nrchpnvf4hbggwgodq"
    ca-montreal-1  = "ocid1.image.oc1.ca-montreal-1.aaaaaaaanrbycrwfxq73bnb4riglp7e67gb6xjatpkke5h2c6pdwcblb7rja"
    ca-toronto-1   = "ocid1.image.oc1.ca-toronto-1.aaaaaaaa2mwnn3au2xesuaplssp37bwnym3mb6va6rz5gbfgpxvt3ls6dbqa"
    eu-amsterdam-1 = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaaxaf3xlj46q2jc4e3cdiqrpt3oacavie6ersr766sqafyex2qh5lq"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaasso5vqvbonl4ne6lz4ugpazyc6g3gll6pi2kucjxtxt3rul4l3sa"
    eu-zurich-1    = "ocid1.image.oc1.eu-zurich-1.aaaaaaaavcfqtutpkkoyoxgmcomcbtlonsd3so2drrbk4hainibyp5ruxnea"
    me-dubai-1     = "ocid1.image.oc1.me-dubai-1.aaaaaaaacc4knywj5cmo544357zb2yn6fabmarv6s3khyny22spuq4edm4iq"
    me-jeddah-1    = "ocid1.image.oc1.me-jeddah-1.aaaaaaaaehhthiygczhamsxpnaebwwuuof4ghuzbhmtl5yfcjzw7af6lwlgq"
    sa-santiago-1  = "ocid1.image.oc1.sa-santiago-1.aaaaaaaaghwg2p3fwtu4q25p5ebg65mf5ncqbikqrepsttnzqrtwzccrdcma"
    sa-saopaulo-1  = 'ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa2bfgkwh4ajxq573nfzqk6pzcnamhz7yecg7qjwjlstbtkdiaovxq"
    uk-cardiff-1   = "ocid1.image.oc1.uk-cardiff-1.aaaaaaaanivgefpi7h2yap5e2st7setz6bri2pfen2nttwdy3n6eyliknqla"
    uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaaaqhrhabecnuwgasrfagihh5nqkexc7mq6lwwv5nvsxmu3gajp2ta"
    us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaacliktmviofdyzhua77nyur2htmrzwjaxollbfae52q6zfuvkcjdq"
    us-langley-1   = "ocid1.image.oc2.us-langley-1.aaaaaaaak5z3civ5tdlntkjivu7bmez5zngg3m6zd24qcfmn43btptzob3lq"
    us-luke-1      = "ocid1.image.oc2.us-luke-1.aaaaaaaaq5mfm7tle2a2nnysg3cfngbdqlkelg6rdwmkinqgnkhy7fgzrg6q"
    us-phoenix-1   = "ocid1.image.oc1.phx.aaaaaaaaiz72kdaznhk3kynsw4faync6z3ibd3en6vchupnb4vonfsnvizwq"
    us-sanjose-1   = "ocid1.image.oc1.us-sanjose-1.aaaaaaaaxyaxpb7mkld7dsoqibdbg2na5npgzkjn3oybqifzmcaki7qewwfq"
  }
}

