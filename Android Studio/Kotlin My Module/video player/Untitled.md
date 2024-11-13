```kotlin
package com.example.myapplication  
  
import android.content.Context  
import android.content.Intent  
import android.net.Uri  
import android.view.LayoutInflater  
import android.view.View  
import android.view.ViewGroup  
import android.widget.TextView  
import androidx.recyclerview.widget.RecyclerView  
  
class VideoListAdapter(private val context: Context) :  
    RecyclerView.Adapter<VideoListAdapter.VideoViewHolder>() {  
  
    private val videos: MutableList<VideoItem> = mutableListOf()  
  
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VideoViewHolder {  
        val view = LayoutInflater.from(parent.context).inflate(R.layout.item_video, parent, false)  
        return VideoViewHolder(view)  
    }  
  
    override fun onBindViewHolder(holder: VideoViewHolder, position: Int) {  
        val video = videos[position]  
        holder.bind(video)  
        holder.itemView.setOnClickListener {  
            // Handle item click here  
            playVideo(video.path)  
        }  
    }  
  
    override fun getItemCount(): Int = videos.size  
  
    fun addVideo(videoItem: VideoItem) {  
        videos.add(videoItem)  
        notifyItemInserted(videos.size - 1)  
    }  
    private fun playVideo(videoPath: String) {  
        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(videoPath))  
        intent.setDataAndType(Uri.parse(videoPath), "video/*")  
        context.startActivity(intent)  
    }  
  
    inner class VideoViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {  
  
        private val nameTextView: TextView = itemView.findViewById(R.id.nameTextView)  
        private val durationTextView: TextView = itemView.findViewById(R.id.durationTextView)  
  
  
        fun bind(videoItem: VideoItem) {  
  
            nameTextView.text = videoItem.name  
            durationTextView.text = formatTimeString(videoItem.duration)  
        }  
  
  
    }  
  
    fun formatTimeString(durationInMillis: Long): String {  
        val hours = durationInMillis / (1000 * 60 * 60)  
        val minutes = (durationInMillis % (1000 * 60 * 60)) / (1000 * 60)  
        val seconds = ((durationInMillis % (1000 * 60 * 60)) % (1000 * 60)) / 1000  
  
        return if(hours >= 1){  
            String.format("%02d:%02d:%02d", hours, minutes, seconds)  
        }else{  
            return if(minutes >= 1){  
                String.format("%02d:%02d",  minutes, seconds)  
            }else{  
                String.format("%02d",   seconds)  
  
            }  
        }  
  
  
    }  
}  
interface OnItemClickListener {  
    fun onItemClick(videoItem: VideoItem)  
}
```