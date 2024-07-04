import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.onSizeChanged
import org.jetbrains.compose.ui.tooling.preview.Preview

@Composable
@Preview
fun App(onSizeChanged: ((Int) -> Unit)? = null) {
    MaterialTheme {
        var greeting by remember { mutableStateOf(Greeting().greet()) }
        Column(
            Modifier
                .onSizeChanged { newSize ->
                    onSizeChanged?.invoke(newSize.height)
                }.fillMaxWidth()
                .background(Color.Green),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Button(onClick = { greeting += Greeting().greet() }) {
                Text("Click me!")
            }
            Column(Modifier.fillMaxWidth(), horizontalAlignment = Alignment.CenterHorizontally) {
                Text(greeting)
            }
        }
    }
}
