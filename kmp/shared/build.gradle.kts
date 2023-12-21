import org.jetbrains.kotlin.gradle.plugin.mpp.apple.XCFramework
import co.touchlab.skie.configuration.FlowInterop
import co.touchlab.skie.configuration.SuspendInterop

plugins {
    alias(libs.plugins.kotlin.multiplatform)
    alias(libs.plugins.skie)
}

skie {
    analytics {
        disableUpload.set(true)
    }

   features {
       group {
           SuspendInterop.Enabled(false)
       }
   }
}

kotlin {
    jvm()

    val xcf = XCFramework()
    val iosTargets = listOf(iosX64(), iosArm64(), iosSimulatorArm64())

    iosTargets.forEach {
        it.binaries.framework {
            baseName = "shared"
            xcf.add(this)
        }
    }
}
