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
    # See https://docs.cloud.oracle.com/en-us/iaas/images/image/f9d92aaf-d26e-4462-8907-a4a6b0ec64c0/
    # Oracle-provided image "Canonical-Ubuntu-20.04-2020.09.07-0"
    ap-chuncheon-1	 = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaa5l54f3xt2jdp63hob3462unhbwrc75q2um67pq5g33hjv2h5mnaq"
    ap-hyderabad-1	 = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaa4yh3bqitqmjxthjgt3lib7qrodmc56fjnvrvgpexn43q3m2pavga"
    ap-melbourne-1	 = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaaorqjnvwuxjuozthxvzksyuargr4u4c2nlrfc7tf2airwiqab7ttq"
    ap-mumbai-1	     = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaarwnm5rbrdi3yz4vjjhxfbolcgqjyt67vcez4tunusgv2dfnz2yfa"
    ap-osaka-1	     = "ocid1.image.oc1.ap-osaka-1.aaaaaaaaptsbl2zgongz23bjgetqxalqrrxenw23qdr6sxj3yrvt2oqidx6a"
    ap-seoul-1	     = "ocid1.image.oc1.ap-seoul-1.aaaaaaaacngrhwb77lmrzjvqlgpfml4dcgacpt43zoqr7zxoefqs6ou5u5va"
    ap-sydney-1	     = "ocid1.image.oc1.ap-sydney-1.aaaaaaaa5aspulx6esqqzukkqrt4ougbkvt5uqmvvyzasha7jn6w66xvpxxq"
    ap-tokyo-1	     = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaa3ioe7z5wmi7lfk4xyoret7tmlyr2g2jowsqzh4hz6qcd5pakdtda"
    ca-montreal-1	   = "ocid1.image.oc1.ca-montreal-1.aaaaaaaam7qm5zzfe64tgn2p4cvr5wwro2qnnvedhvtn7yq74yx4wtjdzxpa"
    ca-toronto-1	   = "ocid1.image.oc1.ca-toronto-1.aaaaaaaa4v35xfqwxfndan27kvnbvwhqkalqry5pqphao3bx4v37x4dc6j2q"
    eu-amsterdam-1	 = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaa67wbyp7bolvkojrlv24i4z6tsreff2ufvqp2jke7ffnrip4ycqpa"
    eu-frankfurt-1	 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaao4f3hgdp5jrcfcqy5u36wdljkkv3ww7tobhzstg7s5wjyxf7g6oq"
    eu-zurich-1	     = "ocid1.image.oc1.eu-zurich-1.aaaaaaaaeudh5pxmksxtik6ik3xtx6yspca772lo3svnotsbrl7gcqk3rkua"
    me-jeddah-1	     = "ocid1.image.oc1.me-jeddah-1.aaaaaaaaqgcw3i4qsz4xhknopnvy4wgrdq63fmudv6djrda7vcnxydwzbryq"
    sa-saopaulo-1	   = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa47yettqx5a2f24osslqrkh4oh2se7qzvrordnzpd5segqhotc5la"
    uk-london-1	     = "ocid1.image.oc1.uk-london-1.aaaaaaaakrcnt2mujzexzuotpvb2or4sfiweksbgjlqisu4qv335b3hwataq"
    us-ashburn-1	   = "ocid1.image.oc1.iad.aaaaaaaava52km5tsiuwrig2fgz5wzb2cz4ms3fglns6ephkotbt7zriblga"
    us-gov-ashburn-1 = "ocid1.image.oc3.us-gov-ashburn-1.aaaaaaaa7oeekfvn6ctxqhopt33kg3os47oinauvl2ku73zzc2uysdezf3ya"
    us-gov-chicago-1 = "ocid1.image.oc3.us-gov-chicago-1.aaaaaaaakjoekzplf24htgp6lj4xj5hosn64gbrcpcuf6hpjlmw5voajnmva"
    us-gov-phoenix-1 = "ocid1.image.oc3.us-gov-phoenix-1.aaaaaaaakgpswdr7pjkyec2drau72x75nictmd447fahdikchpip3fomzewa"
    us-langley-1	   = "ocid1.image.oc2.us-langley-1.aaaaaaaapphrrxq56wjzzeja7xya7v43ak6yczgkf6j7x77uhd4j3fqdou7q"
    us-luke-1	       = "ocid1.image.oc2.us-luke-1.aaaaaaaano7jy4l74hhnkesisofgzfwb4k27v2atcebyv7prdajmlj2cbxva"
    us-phoenix-1	   = "ocid1.image.oc1.phx.aaaaaaaao6hcptgplqxdm2wcocrislrmb67wdqytypw3mlzv2ivrusxnflzq"
    us-sanjose-1	   = "ocid1.image.oc1.us-sanjose-1.aaaaaaaaivxn5thli4hg332tn4xmqp2q7tysjhgs327du3djzlrsn3hqwgdq"
  }
}

