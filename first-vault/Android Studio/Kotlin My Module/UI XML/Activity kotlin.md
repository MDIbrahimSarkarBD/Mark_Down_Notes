```kotlin
package com.example.myapplication  
  
import android.net.Uri  
import android.os.Bundle  
import android.view.View  
  
import android.widget.ImageButton  
import android.widget.MediaController  
import android.widget.SeekBar  
import android.widget.TextView  
import android.widget.VideoView  
import androidx.activity.enableEdgeToEdge  
import androidx.appcompat.app.AppCompatActivity  
import java.util.*  
  
  
class MainActivity : AppCompatActivity() {  
    private lateinit var videoView: VideoView  
    private lateinit var videoPlayPause: ImageButton  
    private lateinit var txtTotalTime: TextView  
      
    private lateinit var txtcurentTime: TextView  
    private lateinit var mediaController: MediaController  
    private lateinit var videoDurationSeekBar: SeekBar  
    private lateinit var counterTextView: TextView  
    private var counter = 0  
    private lateinit var timer: Timer  
  
    override fun onCreate(savedInstanceState: Bundle?) {  
        super.onCreate(savedInstanceState)  
        setContentView(R.layout.activity_main)  
  
        videoView = findViewById(R.id.videoView)  
        videoPlayPause = findViewById(R.id.btnPlayPause)  
        txtTotalTime = findViewById(R.id.txtTotalTime)  
        txtcurentTime = findViewById(R.id.txtCurrentTime)  
        videoDurationSeekBar = findViewById(R.id.videoDurationSeekBar)  
  
        mediaController = MediaController(this)  
        mediaController.setAnchorView(videoView)  
        videoView.setMediaController(mediaController)  
  
  
  
        // <--- Schedule Time Count  
        counterTextView = findViewById(R.id.counterTextView)  
        timer = Timer()  
  
        // Schedule a TimerTask to increment the counter every second  
        timer.scheduleAtFixedRate(object : TimerTask() {  
            override fun run() {  
                runOnUiThread {  
                    incrementCounter()  
                }  
            }  
        }, 3000, 1000) // Delay of 1000ms (1 second), and repeat every 1000ms (1 second)  
  
        fun countTimeStart(){  
            // Schedule a TimerTask to increment the counter every second  
            timer.scheduleAtFixedRate(object : TimerTask() {  
                override fun run() {  
                    runOnUiThread {  
                        incrementCounter()  
                    }  
                }  
            }, 0, 1000)  
        }  
        fun countTimeContinue(){  
            // Schedule a TimerTask to increment the counter every second  
            timer.scheduleAtFixedRate(object : TimerTask() {  
                override fun run() {  
                    runOnUiThread {  
                        counter = counter  
                        incrementCounter()  
                    }  
                }  
            }, 0, 1000)  
        }  
        fun countTimerPause() {  
            counter = counter;  
            timer.cancel() // Cancel the timer to stop incrementing the counter  
        }  
  
        fun countTimerClear() {  
            counter = 0;  
            timer.cancel() // Cancel the timer to stop incrementing the counter  
        }  
  
        // --- Schedule Time Count --->  
  
  
        val videoUri = Uri.parse("android.resource://" + packageName + "/" + R.raw.video)  
        videoView.setVideoURI(videoUri)  
  
  
        videoView.setOnPreparedListener {  
            txtTotalTime.setText(formatTimeString(videoView.duration.toLong()))  
  
            videoDurationSeekBar.max = videoView.duration  
  
            // videoView.start()  
            incrementCounter();  
        }  
  
  
  
  
        videoPlayPause.setOnClickListener {  
  
            if (videoView.isPlaying) {  
                videoView.pause()  
                // playButton.text = "Play"  
                videoPlayPause.setImageResource(android.R.drawable.ic_media_pause)  
  
            } else {  
  
                videoPlayPause.setImageResource(R.drawable.baseline_play_circle_24)  
                videoView.start()  
                //playButton.text = "Pause"  
            }  
        }  
  
        // SeekBar listener for seeking video  
        videoDurationSeekBar.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {  
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {}  
  
            override fun onStartTrackingTouch(seekBar: SeekBar?) {}  
  
            override fun onStopTrackingTouch(seekBar: SeekBar?) {  
                seekBar?.let {  
                    videoView.seekTo(it.progress)  
                    val currentTime = videoView.currentPosition  
                    txtcurentTime.text = formatTimeString(currentTime.toLong())  
                }  
            }  
        })  
  
  
  
    } // this onCreate end code  
  
    // Function to handle pause button click    fun onPauseClicked(view: android.view.View) {  
        if (videoView.isPlaying) {  
            videoView.pause()  
        }  
    }  
  
  
    // Function to update SeekBar progress  
    fun incrementCounter() {  
        counter++  
        updateCounterText()  
    }  
  
    fun decrementCounter() {  
        if (counter > 0) {  
            counter--  
            updateCounterText()  
        }  
    }  
    private fun updateCounterText() {  
        counterTextView.text = "Counter: $counter"  
    }  
  
    fun formatTimeString(durationInMillis: Long): String {  
        val hours = durationInMillis / (1000 * 60 * 60)  
        val minutes = (durationInMillis % (1000 * 60 * 60)) / (1000 * 60)  
        val seconds = ((durationInMillis % (1000 * 60 * 60)) % (1000 * 60)) / 1000  
  
        return if(hours >= 1){  
            String.format("%02d:%02d:%02d", hours, minutes, seconds)  
        }else{  
            String.format("%02d:%02d",  minutes, seconds)  
        }  
  
  
    }  
  
  
  
  
    override fun onDestroy() {  
        // Remove the callback to avoid memory leaks when the activity is destroyed  
  
        super.onDestroy()  
    }  
  
  
}
```