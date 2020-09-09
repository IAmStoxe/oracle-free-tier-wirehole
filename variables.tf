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
  default = 1
}

variable "instance_shape" {
  # Free-Tier is VM.Standard.E2.1.Micro
  default = "VM.Standard.E2.1.Micro"
}


variable "instance_image_ocid" {
  type = map

  default = {
    # See https://docs.cloud.oracle.com/en-us/iaas/images/image/cc81a889-bc7f-4b70-b8e7-0503812665be/
    # Oracle-provided image "Canonical-Ubuntu-20.04-2020.07.16-0"
    ap-chuncheon-1   = "oci1.image.oc1.ap-chuncheon-1.aaaaaaaanpstj3in2kstrhljuc7gzrvedxbzrgvo5ji5cxogz6tvlm2k5tya"
    ap-hyderabad-1   = "oci1.image.oc1.ap-hyderabad-1.aaaaaaaatw7enpwfku5corct26rnl5sdo4bw5cpvnowqaieafyoylfwyxswq"
    ap-melbourne-1   = "oci1.image.oc1.ap-melbourne-1.aaaaaaaa2ja7gvvlzqqbquenqh7ycye5intwkvxja66rm3tevoakrghszfkq"
    ap-mumbai-1      = "oci1.image.oc1.ap-mumbai-1.aaaaaaaakonst4ow5vbxuk4tvvko3fuhhk4lpupkku7bfthll2axhd7kox4a"
    ap-osaka-1       = "oci1.image.oc1.ap-osaka-1.aaaaaaaaywaz6zpfz4xgcppodgkosec7r67lcamhnamg66lwgthkybhzn6sa"
    ap-seoul-1       = "oci1.image.oc1.ap-seoul-1.aaaaaaaacd2rve4fvn5hxktbuhp4qvoulvrmdo7ypoqadidgofeji2cfuxda"
    ap-sydney-1      = "oci1.image.oc1.ap-sydney-1.aaaaaaaavjkbnlvtn3lbx5sg6xgp5myxo65xgnvylwzgcdvnmenct75bzpaa"
    ap-tokyo-1       = "oci1.image.oc1.ap-tokyo-1.aaaaaaaawlsp7sss5g3hyzfnu4a2ch54zd3fjp3logs5mi6ufk2hcg6wn4ha"
    ca-montreal-1    = "oci1.image.oc1.ca-montreal-1.aaaaaaaa5yv2qg3sthtxgvtfixekmwqcfizxwfp5ifnumcbhwscr4cnxg5nq"
    ca-toronto-1     = "oci1.image.oc1.ca-toronto-1.aaaaaaaaktxtwxrsuuelvwt5bmxm6vmbu66oelief6pbwnstjpo4kuaxm7oa"
    eu-amsterdam-1   = "oci1.image.oc1.eu-amsterdam-1.aaaaaaaaxkhd2at377qo2cmqz3rtjnacygf67h4l5po27vgpzl4wfdl7kana"
    eu-frankfurt-1   = "oci1.image.oc1.eu-frankfurt-1.aaaaaaaa33gomi5dzrv7z4atbtpw4wrddstenlrroe3kb6snltkgdi4mv3yq"
    eu-zurich-1      = "oci1.image.oc1.eu-zurich-1.aaaaaaaagksoyjqxkkvhfwqazowfgwcn65lzxhp4mvw2if3nifdx2tzgt6ma"
    me-jeddah-1      = "oci1.image.oc1.me-jeddah-1.aaaaaaaay5jjjjj5bv2hh5553oi2ljo7nc36dxhx75sarcecs5ozlu374lja"
    sa-saopaulo-1    = "oci1.image.oc1.sa-saopaulo-1.aaaaaaaaonwl3zjp6cxf3kbhpyipyufhmyymdimtfelzky6r745zojytab6a"
    uk-gov-london-1  = "oci1.image.oc4.uk-gov-london-1.aaaaaaaagdq7eit7otaqpbo5tdeh2avqvrszszw3iqojva5kl5ztoxx7ypqa"
    uk-london-1      = "oci1.image.oc1.uk-london-1.aaaaaaaamnz6jzdyj7yyfeh6vyoydjw4e6eigus6qnwuwh2ugu7agbnnvr5a"
    us-ashburn-1     = "ocid1.image.oc1.iad.aaaaaaaa4zmhh435fbohrt6cwwomyfkcnrrr3ce2czs2qs52eadlu7mr45va"
    us-gov-ashburn-1 = "oci1.image.oc3.us-gov-ashburn-1.aaaaaaaask3s2dqo632wkaiwxzzhnrdpfhcdzjc4xu7nos4msasbutd5ct6q"
    us-gov-chicago-1 = "oci1.image.oc3.us-gov-chicago-1.aaaaaaaadgg6aqmf5daphzbhcimv2hs3gxgaigflkcvmi64wwcqmqa7p3rjq"
    us-gov-phoenix-1 = "oci1.image.oc3.us-gov-phoenix-1.aaaaaaaalqzdesgljdqnauzgbttxlnpp4ejyrcq5tj4gj36ehnd7xncc6y6q"
    us-langley-1     = "oci1.image.oc2.us-langley-1.aaaaaaaa2krdwhl7pbjgjbg45ucjzfjxcn4yaesaf25ydtwbyr6noxogx7fa"
    us-luke-1        = "oci1.image.oc2.us-luke-1.aaaaaaaaqkuvnbqhahsw3dgz76pjirutaluumajwai3rhwzubiuijccna4iq"
    us-phoenix-1     = "oci1.image.oc1.phx.aaaaaaaagxjw52zc22yyyqtid5737elillsqt2vxokj5wdnvhvswhyol74qq"
  }
}

