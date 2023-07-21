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
  #Note: Free-Tier is confined to availability domain 1.  There is no constraint on the Flex Tier
  default = 1
}

variable "instance_shape" {
  # Free-Tier is VM.Standard.E2.1.Micro
  # Flex-Tier (Free) is VM.Standard.A1.Flex
  default = "VM.Standard.E2.1.Micro"
}
#variable "instance_shape_config_memory_in_gbs" {
#  default = "24"
#}
#variable "instance_shape_config_ocpus" {
#  default = "4"
#}


variable "instance_image_ocid" {
  type = map

  default = {
    # See https://docs.oracle.com/en-us/iaas/images/image/8df1aee6-ff21-4000-8290-0a67379182d9/
    # Oracle-provided image "Canonical-Ubuntu-22.04-Minimal-2022.06.19-0"
    af-johannesburg-1	= "ocid1.image.oc1.af-johannesburg-1.aaaaaaaaiugobzudpdrvmdj7vhf7imwbcqvk75xa7kzd3kd73d7hbhbdwmwa"
    ap-chuncheon-1	  = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaapwvxtauc2sajtqwn3m64zgxyn36qnzlrl7sopj3y2y22jqvparza"
	  ap-hyderabad-1	  = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaajjhuqr2lb4fr7rvpyjplldrkhgje5d4rs5g7ywhjahxtwmyxrn7q"
	  ap-melbourne-1	  = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaawcjyzswmtjzaklf3krbsk3jqa2pahepirpbugt7g27f5kcvdzqsa"
  	ap-mumbai-1	      = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaailmyxiyjjxjshc7ipd322inpyqd6pajbacj64ukiql4kagicjvoq"
	  ap-osaka-1	      = "ocid1.image.oc1.ap-osaka-1.aaaaaaaaoypofsm5ndbptu2xb5te33ph44sdcm2ecowj767dghhxexvzbybq"
	  ap-seoul-1	      = "ocid1.image.oc1.ap-seoul-1.aaaaaaaa4vg3ux7cdy2r7njdymrknj7w3sm46qyzfsszuevcysbvqwdyfrra"
	  ap-singapore-1	  = "ocid1.image.oc1.ap-singapore-1.aaaaaaaacot4tceqbzqgspfzrzvyawcmkyytlj7hc4youeh5gmmfrcuuvvcq"
	  ap-sydney-1	      = "ocid1.image.oc1.ap-sydney-1.aaaaaaaaxpkfq5onugqj4zrh3qniktnaw5gk2bgrtgg64q2awmir5nlkqmqa"
	  ap-tokyo-1	      =  "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaujexdiiybgjpta5czn6qzkjhdmzvrt64m6dngpny7yoqy23dwf2a"
	  ca-montreal-1	    = "ocid1.image.oc1.ca-montreal-1.aaaaaaaatorxo3mpswbruc2wk24lgv5znagzpqczhh3gwunt2ljiq2dsovgq"
	  ca-toronto-1	    = "ocid1.image.oc1.ca-toronto-1.aaaaaaaac52yuec55vat2che3dhwagoi6nnsxufctjqxxhxoacr6oz7w54za"
	  eu-amsterdam-1	  = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaa5jnianfpmvc7gv4g6mi3iukc6qnzunjon25wm4gb3papjeckutrq"
	  eu-frankfurt-1	  = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaf7nfsg56na6qq76pt7khlhdyoda6ocn2d2lfs2i4y2qgg4nkwfqq"
	  eu-marseille-1	  = "ocid1.image.oc1.eu-marseille-1.aaaaaaaae4dahq5mm2payyecoxtgljqkhendlkqu7h2nvjmvral6kydn5fja"
	  eu-milan-1	      = "ocid1.image.oc1.eu-milan-1.aaaaaaaaolrnq6vejdpeqgj6rkdo2lcip3lfkzi4th7xahdc4bvr7j4aypga"
	  eu-stockholm-1	  = "ocid1.image.oc1.eu-stockholm-1.aaaaaaaaf436tf573vw4dmeeffuvs32kyyh5ahrd5rnlapxua6ijpnnppa6a"
	  eu-zurich-1	      = "ocid1.image.oc1.eu-zurich-1.aaaaaaaa3byoxjzsc4x3nzgrmcgtfl73esvrxqxetpnhb7qnrsljh2od37pq"
	  il-jerusalem-1	  = "ocid1.image.oc1.il-jerusalem-1.aaaaaaaagidb6pmblmdzh3jrh7n4p2izwhje722fpv5j35mbxxbmolfjyn4q"
	  me-abudhabi-1	    = "ocid1.image.oc1.me-abudhabi-1.aaaaaaaadzddt7wbjcpusgyy6a2hc6gwcsr4sk7jlgszxvjcvw2qm6ipngbq"
	  me-dubai-1	      = "ocid1.image.oc1.me-dubai-1.aaaaaaaao3kxqpfy4llb5tdq2jm34rveavzbkr2xkkxwkz2a4kvf2bj73uhq"
	  me-jeddah-1	      = "ocid1.image.oc1.me-jeddah-1.aaaaaaaattndzmwqgwbpmguffi2lxsvzdabppqe7u2pskbjcr4tgece7uz4q"
	  sa-santiago-1	    = "ocid1.image.oc1.sa-santiago-1.aaaaaaaap25sga3z7vuiixymnjpmxn3kdvoxhcewccunogm4gkhs44c7jneq"
	  sa-saopaulo-1	    = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaakfgz2izwirg2eggteaxyya4qi4mndsvnfzljixyn3cwxtoby3p3a"
	  sa-vinhedo-1	    = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaafeebizahjbcty5j2zj43g7nksxbejaua6t4hdtt4szxakqk5j5wq"
	  uk-cardiff-1	    = "ocid1.image.oc1.uk-cardiff-1.aaaaaaaaanee5mumyhnxed4bgiywt4xzj6vka6jxafgramc77t4vac6wbzca"
	  uk-london-1	      = "ocid1.image.oc1.uk-london-1.aaaaaaaapjxds2saa75y4omgjantrlufeyqxqa42ptdmeok2bj73anj6g37q"
  	us-ashburn-1	    = "ocid1.image.oc1.iad.aaaaaaaa2uqsnlxswtgp7ebqfqxi6jvwulu6vzzznbyqc5ywx7fdbzqkz5ya"
	  us-phoenix-1	    = "ocid1.image.oc1.phx.aaaaaaaajt3mtkf44rodsgil3nvovcray4md3rbb7zqiwkggzp7qccptqu4q"
	  us-sanjose-1	    = "ocid1.image.oc1.us-sanjose-1.aaaaaaaavi3y4op4cnorqmg6kds3wrclunwmfb7ivzumi4vkzbf6qn7763bq"
  }
}

