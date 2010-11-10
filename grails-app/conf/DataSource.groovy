dataSource {
        pooled = true
        driverClassName = "org.hsqldb.jdbcDriver"
        username = "sa"
        password = ""
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
        development {
                dataSource {
                             pooled = true
         driverClassName = "com.mysql.jdbc.Driver"
          dbCreate =    "create-drop"   //   "create-drop"
          username = "root"
          password = "44x1s"
          url = "jdbc:mysql://localhost/test"
                }
        }
        test {
                dataSource {
          pooled = true
         driverClassName = "com.mysql.jdbc.Driver"
             dbCreate =    "create-drop"   //   "create-drop"
          username = "root"
          password = "44x1s"
          url = "jdbc:mysql://localhost/test"


                }
        }
        production {
                dataSource {
         pooled = true
         driverClassName = "com.mysql.jdbc.Driver"
             dbCreate =    "update"   //   "update"
         username = "xaymaca"
         password = "44x1s"
         url = "jdbc:mysql://localhost/vinxstudios"
                }
        }
}
