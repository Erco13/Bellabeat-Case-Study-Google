# How to upload this project to GitHub (step‑by‑step, Windows)

## A. Prepare your files
1. Unzip the folder you downloaded from ChatGPT.
2. Put your **cleaned Excel/CSV files** into: `data/processed/`
3. In Excel, **export your charts** to images (PNG). Save them into: `reports/figures/`
4. Open `reports/summary/EXEC_SUMMARY.md` and write your one‑page story (see template).

## B. Upload using GitHub website (easiest)
1. Open your GitHub repo (e.g., https://github.com/YourUser/Bellabeat-Case-Study)
2. Click **Add file → Upload files**
3. In File Explorer, select everything **inside** your unzipped project folder and drag them into the upload area
   - GitHub will **keep the folders** (data/processed, reports/figures, etc.)
4. Scroll down → type a short message like: `init: add cleaned data, figures, and summary`
5. Click **Commit changes**

> Tip: If you need to create a folder from the web interface, use **Add file → Create new file**, and type a path like `data/processed/README.md` (GitHub will create the folder).

## C. Upload using Git (optional, for local work)
1. Open **Command Prompt** or **PowerShell**
2. Navigate to your Downloads (example):  
   `cd "C:\Users\YOURUSERNAME\Downloads\Bellabeat-Case-Study-Junior"`
3. Initialize and connect to your repo:
   ```bash
   git init
   git branch -M main
   git remote add origin https://github.com/YourUser/Bellabeat-Case-Study.git
   git add .
   git commit -m "init: add my bellabeat case study"
   git push -u origin main
   ```

## D. Verify
- Refresh your repo page — you should see **data**, **reports**, **SQL**, **R** folders.
- Open `reports/summary/EXEC_SUMMARY.md` in GitHub to preview your write‑up.
- Add a short repo description and tags (e.g., `data-analysis`, `excel`, `capstone`).

## E. Keep committing as you improve
- When you change something locally:
  ```bash
  git add .
  git commit -m "docs: update executive summary with findings"
  git push
  ```
