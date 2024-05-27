# Stripe Payment Integration in Flutter

To integrate Stripe payments into your Flutter project, follow these steps to set up the necessary configurations:

1. Use Android 5.0 (API level 21) and above.

2. Use Kotlin version 1.5.0 and above in `android/build.gradle`:
    ```groovy
    buildscript {
        ext.kotlin_version = '1.8.10'
        repositories {
            google()
            mavenCentral()
        }

        dependencies {
            classpath 'com.android.tools.build:gradle:8.1.3'
            classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
        }
    }
    ```

3. Requires Android Gradle plugin 8 and higher.

4. Using a descendant of `Theme.AppCompat` for your activity in `android/app/src/main/res/values/styles.xml`:
    ```xml
    <style name="NormalTheme" parent="Theme.MaterialComponents">
    ```
    Make the same change in `android/app/src/main/res/values-night/styles.xml`.

5. Use an up-to-date Android gradle build tools version and the corresponding Gradle version.

6. Update `MainActivity.kt` to use `FlutterFragmentActivity`:
    ```kotlin
    // android/app/src/main/kotlin/com/flutter/stripe/example/MainActivity.kt
    import io.flutter.embedding.android.FlutterFragmentActivity

    class MainActivity: FlutterFragmentActivity() {
    }
    ```

7. Add the following rules to your `proguard-rules.pro` file in `android/app/proguard-rules.pro`:
    ```pro
    -dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivity$g
    -dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Args
    -dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Error
    -dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter
    -dontwarn com.stripe.android.pushProvisioning.PushProvisioningEphemeralKeyProvider
    ```

8. Rebuild the app, as the above changes don't update with hot reload.
