schema "main" {}

table "users" {
  schema = schema.main
  column "id" {
    type = int
  }
}