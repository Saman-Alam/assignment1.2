## Overview

This project contains a Bash script named `FileManager.sh` that automates common Linux file and directory operations.

The script accepts command-line arguments to perform operations such as:

* Creating directories
* Deleting directories
* Creating files
* Managing file content
* Displaying file content
* Copying files
* Moving files
* Clearing file content
* Deleting files

---

## Project Structure

```text
Assignment1/
├── FileManager.sh
├── README.md
└── Problem-Statement
```

---

## Getting Started

### 1. Give Execute Permission

Give execute permission to the `FileManager.sh` script:

```bash
chmod +x FileManager.sh
```

<img width="624" height="135" alt="image" src="https://github.com/user-attachments/assets/8058757b-afa7-442d-a99a-f62e019684ab" />

### 2. Run the Script

Use the following syntax:

```bash
./FileManager.sh <operation> <arguments>
```

### Example

```bash
./FileManager.sh addDir /tmp/test dir1
```

---
# Directory Operations

The script supports the following directory operations:

* Create Directory
* Delete Directory
* List Files
* List Directories
* List All Contents

## Create Directories

```bash
./FileManager.sh addDir /tmp/test dir1
./FileManager.sh addDir /tmp/test dir2
./FileManager.sh addDir /tmp/test dir3
```

### Output

<img width="498" height="130" alt="image" src="https://github.com/user-attachments/assets/b11e6038-22dc-4f76-8a5f-d754833d73bb" />

## List and Delete Directories

```bash
./FileManager.sh listFiles /tmp/test
```
### Output

<img width="490" height="48" alt="image" src="https://github.com/user-attachments/assets/323d5bbc-c530-47ec-8d27-90aa2333f102" />


```bash
./FileManager.sh listDirs /tmp/test
```
### Output

<img width="617" height="207" alt="image" src="https://github.com/user-attachments/assets/a5badfb5-1e13-4a06-9671-483ab3de265b" />



```bash
./FileManager.sh listAll /tmp/test
```
### Output

<img width="625" height="309" alt="image" src="https://github.com/user-attachments/assets/3be160fb-6c01-4e98-a04f-5dcb6eae13f6" />



```bash
./FileManager.sh deleteDir /tmp/test dir3
```

### Output

<img width="564" height="93" alt="image" src="https://github.com/user-attachments/assets/749cbc2a-57dd-4134-8c6a-51d07a07e20d" />

# File Creation and Content Operations

The script supports the following file operations:

* Create File
* Create File with Initial Content
* Append Content to File
* Add Content at the Beginning of File

## Create a File

```bash
./FileManager.sh addFile /tmp/dir1 file1.txt
```

### Output
<img width="625" height="88" alt="image" src="https://github.com/user-attachments/assets/1399fbbc-7567-47ff-a8ec-06165cbe6dd6" />


## Add and Modify File Content

### Append Content to a File

```bash
./FileManager.sh addContentToFile /tmp/dir1 file1.txt "Initial Content"
```

### Output

<img width="624" height="84" alt="image" src="https://github.com/user-attachments/assets/1ac9557c-b067-4b31-b482-ffe62e81dc24" />

```bash
./FileManager.sh addContentToFile /tmp/dir1 file1.txt "Additional Content"
```

### Output

<img width="623" height="76" alt="image" src="https://github.com/user-attachments/assets/50e25ed5-80e1-4b44-a7ba-491073b2dd39" />


### Add Content at the Beginning

```bash
./FileManager.sh addContentToFileBegining /tmp/dir1 file1.txt "Additional Content"
```

### Output

<img width="624" height="70" alt="image" src="https://github.com/user-attachments/assets/0c2e9d6e-4c3c-4a75-8dc4-babb2a415261" />


# Reading File Content

The script provides multiple operations for reading specific portions of a file:

* Show First N Lines
* Show Last N Lines
* Show Content at a Specific Line
* Show Content for a Line Range

## Examples

### Show First N Lines

```bash
./FileManager.sh showFileBeginingContent /tmp/dir1 file1.txt 3
```

<img width="624" height="106" alt="image" src="https://github.com/user-attachments/assets/2d44ce92-b543-4b37-89aa-a5a78aed9a4e" />


### Show Last N Lines

```bash
./FileManager.sh showFileEndContent /tmp/dir1 file1.txt 2
```

<img width="623" height="104" alt="image" src="https://github.com/user-attachments/assets/f3ba1c26-6201-472a-b1bc-9077185e1682" />


### Show Content for a Line Range

```bash
./FileManager.sh showFileContentForLineRange /tmp/dir1 file1.txt 5 10
```

### Output


<img width="620" height="110" alt="image" src="https://github.com/user-attachments/assets/7a17349a-54c0-499a-8472-8df2db5bebf6" />
---

# Move and Copy Operations

The script also supports moving, copying, clearing, and deleting files.

## Examples

### Move a File

```bash
./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir2/
```
### Output

<img width="630" height="342" alt="image" src="https://github.com/user-attachments/assets/f6f5c46a-24df-4c1f-b1f7-85f89bd01acb" />


### Copy a File

```bash
./FileManager.sh copyFile /tmp/dir2/file1.txt /tmp/dir1/
```
### Output

<img width="620" height="250" alt="image" src="https://github.com/user-attachments/assets/1311cfbd-c96f-4dab-8716-304b588a6d91" />


### Clear File Content

```bash
./FileManager.sh clearFileContent /tmp/dir1 file1.txt
```
### Output

<img width="632" height="94" alt="image" src="https://github.com/user-attachments/assets/ef6a3885-5b85-4348-ad30-1a0f2741a241" />



### Delete a File

```bash
./FileManager.sh deleteFile /tmp/dir1 file1.txt
```
### Output

<img width="560" height="113" alt="image" src="https://github.com/user-attachments/assets/0f42b07b-87f5-45e6-ab24-4efb35303615" />


### Delete a Directory

```bash
./FileManager.sh deleteDir /tmp dir3
```

### Output



