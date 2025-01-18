plugins {
    id("java")
}

group = "com.ruslanlomaka"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

var h2Version="2.3.232"
var slf4jVersion ="2.0.16"
var logbackVersion= "1.4.12"
dependencies {
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    implementation("com.h2database:h2:$h2Version")
    implementation("org.slf4j:slf4j-api:$slf4jVersion")
    implementation ("ch.qos.logback:logback-classic:$logbackVersion")
}

tasks.test {
    useJUnitPlatform()
}