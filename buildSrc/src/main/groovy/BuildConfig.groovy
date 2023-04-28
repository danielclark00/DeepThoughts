plugins {
    id 'com.vanniktech.maven.publish' version '0.19.0'
}

allprojects {
    plugins.withId('com.vanniktech.maven.publish') {
        mavenPublish {
            sonatypeHost = 'S01'
        }
    }
}
