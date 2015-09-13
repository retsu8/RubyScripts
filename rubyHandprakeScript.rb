def get_base_name(video)
 
  video[0, video.index(".avi")]
end
 
Dir.glob("*.avi") do |input_video|
 
  base_name = get_base_name input_video
 
  output_video_med = "../#{base_name}.mp4"
 
  settings = "-e x264 -2 -f mp4 -m -4 -s --subtitle-forced"
 
  picture_med = "-w 720 --modulus 16 --loose-anamorphic"
 
  command_med = "HandBrakeCLI -i #{input_video} -o #{output_video_med} #{settings} #{picture_med}"
 
  puts `#{command_med}`
 
end