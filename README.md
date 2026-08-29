# S.C.A.L.E - Smart Classroom Assistant Learning Engine

A desktop app for managing a classroom that also does the boring part of teaching for you: give it a lecture PDF and it pulls out the key points and builds a quiz (MCQs, True/False, Short Answer) on its own. No API keys, no GPT calls — it's all done with TF-IDF and cosine similarity.

Built with Python, CustomTkinter and MySQL.

## What it does

**Admin/Faculty side**
- Manage departments, courses, faculty and students (add/edit/delete, searchable tables)
- Upload a lecture PDF -> auto-generates notes + a full questionnaire
- Review or regenerate the AI output before students see it
- Track quiz activity across all students, export to CSV

**Student side**
- Dashboard with enrolled courses and progress
- View/download lecture PDFs
- Take auto-generated quizzes, get graded instantly
- View past attempts with a full breakdown of each answer

## How the AI part actually works

No external AI/LLM is used. It's a self-built pipeline:

1. `Pdf_Extractor.py` - pulls text out of the PDF (PyMuPDF)
2. `text_preprocessor.py` - splits into sentences, cleans them, drops stopwords
3. `notes_generator.py` - turns every sentence into a TF-IDF vector, finds the average vector for the whole lecture, and keeps the sentences closest to it (cosine similarity) as the "important notes"
4. `question_generator.py` - finds top keywords by TF-IDF weight and builds questions from them:
   - MCQ: blanks out a keyword, picks 3 wrong options using cosine similarity between term vectors
   - True/False: shows a sentence as-is, or swaps the keyword for a similar one to make it false
   - Short Answer: asks the student to explain a keyword, stores the sentence that defines it as the reference answer
5. `quiz_evaluator.py` - grades it. MCQ/True-False is an exact match, Short Answer is graded by cosine similarity against the reference answer (>= 0.30 counts as correct), so a paraphrased answer still passes

## Tech stack

Python · CustomTkinter/Tkinter · MySQL (pymysql) · scikit-learn · NumPy · PyMuPDF

## Project structure

```
main_navigator.py     - entry point, launches the app
connection.py          - MySQL connection

admin_login.py, adminDashboard.py, add_admin.py, manage_admin.py,
add_dept.py, manage_dept.py, add_courses.py, manage_courses.py,
add_user.py, manage_user.py, add_lecture.py, viewlecture.py,
viewquestions.py, veiwnotes.py, veiwquizadmin.py, edit_profile.py,
change_pass.py                                          - admin side

user_login.py, user_dashboard.py, student_courses.py,
student_lectures.py, attempt_quiz.py, quizresult.py,
quizhistory.py, edit_user.py, user_pass.py               - student side

ai_pipeline.py, Pdf_Extractor.py, text_preprocessor.py,
notes_generator.py, question_generator.py, quiz_evaluator.py  - AI core

lecturePdf/            - uploaded PDFs get stored here
```

## Setup

1. Install Python 3.9+ and MySQL.

2. Install dependencies:
```
pip install customtkinter pymysql pymupdf scikit-learn numpy CTkMessagebox
```

3. Create a MySQL database called `class_assistant` with tables for: admin, students, department, courses, lectures, notes, questions, quiz_attempts, quiz_answers.

4. `connection.py` currently has the DB password hardcoded. Pull it out into an environment variable before you push this anywhere public:
```python
import os, pymysql

def connect():
    return pymysql.connect(
        host=os.environ.get("DB_HOST", "localhost"),
        user=os.environ.get("DB_USER", "root"),
        port=int(os.environ.get("DB_PORT", 3306)),
        password=os.environ["DB_PASSWORD"],
        database=os.environ.get("DB_NAME", "class_assistant"),
    )
```
Set `DB_PASSWORD` (and the others if needed) as environment variables, and add `.env` to `.gitignore` if you're using one.

5. Run it:
```
python main_navigator.py
```

## Notes / things to add later
- requirements.txt
- proper DB schema file (schema.sql)
- attendance/timetable feature (currently a placeholder)
- screenshots
