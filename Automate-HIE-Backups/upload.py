#! /usr/bin/python3

import glob
import os
from datetime import datetime
from os import path
import sys

sys.path.append('/home/mojau_p/.local/bin/graph-onedrive')

from graph_onedrive import OneDriveManager


def main() -> None:
    """Create a OneDrive instance using a config file, and then upload
    a file to a folder in the top level of my OneDrive."""

    # bash_cmd = '/home/mojau_p//Documents/ICAP/NUL_2022-Internship/Automate-HIE-Backups/backup.sh'
    # os.system(bash_cmd)

    # Find the latest backup file
    list_of_files = glob.glob('/home/mojau_p/backup/*')  # * means all
    # latest_file = max(list_of_files, key=os.path.getctime)

    # Say we have a folder in our OneDrive root level"
    dest_folder_name = "eregister_backups"


    # Use the context manager to manage a session instance
    with OneDriveManager(config_path="config.json", config_key="onedrive") as my_drive:

	# Get the details of all the items in the root directory
	items = my_drive.list_directory()

	# Search through the root directory to find the file
	dest_folder_id = None
	for item in items:
	    if "folder" in item and item.get("name") == dest_folder_name:
	        dest_folder_id = item["id"]
	        break

	# Raise an error if the folder is not found
	if dest_folder_id is None:
	    raise Exception(
	        f"Could not find a folder named {dest_folder_name} in the root of the OneDrive"
	    )

	# Upload the file
	new_file_id = my_drive.upload_file(
	    file_path=latest_file, parent_folder_id=dest_folder_id, verbose=True
	)
 
    print(
	f"{latest_file} uploaded to OneDrive folder {dest_folder_name}, and now has the id {new_file_id}."
    )

if __name__ == "__main__":
main()
