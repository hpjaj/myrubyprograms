# Returns the path to the current working directory, 
# in the form of a string
Dir.getwd


# Creates a new working directory entitled 'tmp' within 
# the current directory
Dir.mkdir("tmp")


# Changes the working directory to '/tmp'
Dir.chdir(File.join(Dir.getwd, "/tmp"))


# Alternate method to get the current working directory
Dir.pwd


# Go backwards one directory
Dir.chdir("..")


# Delete the 'tmp' directory
Dir.delete('tmp')