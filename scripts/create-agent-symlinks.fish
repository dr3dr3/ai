#!/usr/bin/env fish

# Create symlinks of all files in /agents into .claude/agents folder

# Use /workspace directory (set in devcontainer)
set workspace_dir /workspace

# Define source and target directories
set source_dir "$workspace_dir/agents"
set target_dirs "$workspace_dir/.claude/agents" "$workspace_dir/.copilot/agents"

# Create target directories if they don't exist
for target_dir in $target_dirs
    mkdir -p $target_dir
end

# Create symlinks for all files in the agents directory
for file in $source_dir/*
    if test -f $file
        set filename (basename $file)
        
        # Create symlinks in each target directory
        for target_dir in $target_dirs
            set target_link "$target_dir/$filename"
            
            # Remove existing symlink or file if it exists
            if test -e $target_link; or test -L $target_link
                rm $target_link
                echo "Removed existing: $filename in "(basename $target_dir)
            end
            
            # Create the symlink
            ln -s $file $target_link
            echo "Created symlink: $filename in "(basename (dirname $target_dir))"/"(basename $target_dir)
        end
    end
end

echo "Done! All agent files symlinked to .claude/agents/ and .copilot/agents/"
