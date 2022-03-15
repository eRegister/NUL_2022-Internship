#! /usr/bin/python3

import glob
import os
from datetime import datetime
from os import path

from graph_onedrive import OneDriveManager


def main() -> None:
    """Create a OneDrive instance using a config file, and then upload
    a file to a folder in the top level of my OneDrive."""

    # Find the latest backup file
    list_of_files = glob.glob('backups/*')  # * means all if need specific format then *.csv
    latest_file = max(list_of_files, key=os.path.getctime)

    # Initialize zip file variable
    zipped_file = ""

    # Check if file is zipped,if not, zip it
    if latest_file.endswith((".gz", ".xz", ".zip")) or latest_file.endswith(".7z"):
        zipped_file = latest_file
    elif latest_file.endswith(".sql"):
        zip_file = "gzip " + latest_file
        os.system(zip_file)
        zipped_file = latest_file + ".gz"
    else:
        print("There is no backup file!")

    #send zipped file to onedrive
    if zipped_file != "":
        # Say we have a folder in our OneDrive root level (top level) called "My Photos"
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
                file_path=zipped_file, parent_folder_id=dest_folder_id, verbose=True
            )

        print(
            f"{zipped_file} uploaded to OneDrive folder {dest_folder_name}, and now has the id {new_file_id}."
        )
    else:
        print("The is no file to be uploaded in the backups/ directory")

if __name__ == "__main__":
    main()
