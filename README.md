[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/545oUMxH)

## 1. Project Title and Description
    - Title: This is the Musify, it replicates many music app projects
    - Description: For the Backend, we have collected datas from PostgresSQL and then pushed into Supabase, which is the online database that we can access to the Front-end like Mongoose or MongoDB Atlas. Our Frontend is declared with Django(Using Python as URL, API and render logic, while HTML for website sheet)
## 2. Installation
    - Dependencies: Download supabase_py, django extension, and dj_database_url
    - Installation Instructions: Provide step-by-step instructions on how to install and set up your project.
## 3. Usage
    - Examples: 
        1. Start by downloading Django and Supabase_py newest version by using pip install
        2. pip install django
        3. pip install dj-database-url
        4. pip install psycopg
        5. pip install supabase_py
        6. pip install gunicorn
        7. Run the server by "python3 manage.py runserver"
## 4. Features
    1. Fetch_supabase_data (Frontend - Fetching the data and then print into HTML by using Python syntaxes)
    2. Insert_data_to_supabase (Backend - Inserting the data and Supabase will automatically receive newest data)
    3. Sorting Wrapper Function (To sort the newest album for each Artist)
    4. Get Data by selecting Table (To get all data from Django Python File)
    5. Declare Testing Function (To make sure all the HTML and Python file can run correctly)
## 5. Contributing
    - We want to implement your favorite Album, Artist or Song. 
    _ Click on Backend and then you can add your newest data that you want to upload
    
    ```
    def insert_artist(artistid, name, artistimg, followers):
    data = {
        "artistid": int(artistid),
        "name": name,
        "artistimg": artistimg, 
        "followers": int(followers)
    }
    response = supabase.table("artist").insert(data).execute()  

    if 'status' in response and response['status'] in [200, 201]:
        print('Artist successfully added:', response)
    else:
        print('Failed to add artist. Error:', response)
    ```
        
## 6. Credits
    - Project Leader, Full Stack Developer: Cris Huynh
    - Assistant Leader, Backend Developer: Sukhman Hara
## 7. License
    - This is Musify project, don't disclaim 
## 8. Additional Sections (Optional)
    - N/A

## Markdown Formatting Tips
  - Use headings (#, ##, ###, etc.) to structure your document.
  - Utilize lists (- or 1.) for easy-to-read information.
  - Include links to relevant resources or documentation.
  - Add code blocks using triple backticks (```) for code snippets.
  - Use images or diagrams to enhance understanding where applicable.
