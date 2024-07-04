import androidx.compose.runtime.ExperimentalComposeApi
import androidx.compose.ui.window.ComposeUIViewController

@ExperimentalComposeApi
fun MainViewController() =
    ComposeUIViewController(configure = {
        opaque = false
    }) { App() }
