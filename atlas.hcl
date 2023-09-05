env "local" {
  src = "./schema.hcl"
  dev = "docker://mysql/8/dev"
  migration {
    dir = "file://migrations"
  }
  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}

variable "token" {
  type    = string
  default = getenv("TURSO_TOKEN")
}

env "turso" {
  src = "file://schema.hcl"
  url     = "libsql+wss://deployci-rotemtam.turso.io?authToken=${var.token}"
  exclude = ["_litestream*"]
}

