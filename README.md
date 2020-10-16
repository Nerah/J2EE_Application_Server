J2EE Application - FastColis
=====================

##### A web application with J2EE. Works with a Wildfly Server.

---------------------

## 🔥 Getting started

#### 🚴 Installing

``git clone https://github.com/Nerah/J2EE_Application_Server.git``

You will need a [**Wildfly**](https://www.wildfly.org/downloads/) server.

Once you have configure it and deploy it, you will find the project there:

``http://localhost:8080/``

---------------------

#### 👍 Understanding the architecture

Some stuff needs to be understood.

```
src/main/java                # server side (ejb, jpa, servlet)

src/main/webapp              # client side
src/main/webapp/components   # called by pages - dynamic components
src/main/webapp/fragments    # called by pages - static components (footer, header)
src/main/webapp/pages        # main jsp pages
src/main/webapp/WEB-INF      # configuration (urls, ...) + tags

```

---------------------

#### 🔗 Attributions

No attribution yet...

---------------------

#### 📚 Contributors

Some people have contributed to the project.

* [🧑 Alexandre Ascenci](https://gitlab.com/alascenci)
* [👩 Sabrina Khelifi](https://github.com/Sabri-na00)
