package org.example.project

import App
import android.os.Bundle
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.tooling.preview.Preview

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val linearLayout = LinearLayout(this)
        setContentView(
            linearLayout.apply {
                orientation = LinearLayout.VERTICAL
            },
        )

        val composeView = ComposeView(this)
        composeView.setContent {
            App()
            // Your Compose UI content here (e.g., Text, Button, etc.)
        }

// Add composeView to your layout or view hierarchy
        linearLayout.addView(composeView)
        linearLayout.addView(
            TextView(this).apply {
                text = "TextView"
                textSize = 100.0f
            },
        )

//        setContent {
//            App()
//        }
        val findViewById = findViewById<ViewGroup>(android.R.id.content)
        findViewById.setBackgroundColor(getColor(android.R.color.holo_red_dark))
//        findViewById.addView()
    }
}

@Preview
@Composable
fun AppAndroidPreview() {
    App()
}
