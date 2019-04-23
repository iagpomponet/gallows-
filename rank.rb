def read_rank
  content = File.read("rank.txt")
  content.split "\n"
end
def save_rank(total_points,name)
    content = "#{name}\n#{total_points}"
    File.write "rank.txt", content
end
