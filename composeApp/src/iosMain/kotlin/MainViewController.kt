import androidx.compose.runtime.ExperimentalComposeApi
import androidx.compose.ui.window.ComposeUIViewController

@ExperimentalComposeApi
fun MainViewController(onSizeChanged: ((Int) -> Unit)?) =
    ComposeUIViewController(configure = {
        opaque = false
    }) { App(onSizeChanged = onSizeChanged) }
