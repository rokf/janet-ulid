(declare-project
  :name "janet-ulid"
  :author "Rok Fajfar <hi@rokf.dev>"
  :description "A Janet ULID implementation"
  :license "MIT"
  :version "0.0.1"
  :url "https://github.com/rokf/janet-ulid"
  :repo "git+https://github.com/rokf/janet-ulid"
  :dependencies [])

(declare-source
  :prefix "ulid"
  :source ["src/init.janet"])
