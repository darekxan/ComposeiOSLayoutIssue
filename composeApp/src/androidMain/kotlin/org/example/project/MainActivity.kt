package org.example.project

import App
import android.os.Bundle
import android.view.ViewGroup
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            App()
        }
        val findViewById = findViewById<ViewGroup>(android.R.id.content)
        findViewById.setBackgroundColor(getColor(android.R.color.holo_blue_bright))
    }
}

@Preview
@Composable
fun AppAndroidPreview() {
    App()
}