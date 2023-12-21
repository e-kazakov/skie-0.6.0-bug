plugins {
    alias(libs.plugins.kotlin.multiplatform) apply false
    alias(libs.plugins.skie) apply false
}

version = project.property("VERSION").toString()
group = project.property("GROUP").toString()

tasks.register("clean", Delete::class) {
    delete(rootProject.layout.buildDirectory)
}
