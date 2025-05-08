CREATE TABLE IF NOT EXISTS mocks (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  date DATE NOT NULL
);

INSERT INTO mocks (title, content, date) VALUES
  ('Note about API', 'Discussed REST API endpoints and authentication.', '2023-01-10'),
  ('Frontend Refactor', 'Refactored components for better reusability.', '2023-01-15'),
  ('Database Migration', 'Ran migration scripts for schema update.', '2023-01-20'),
  ('Bug Report', 'Found and logged a UI rendering bug.', '2023-01-25'),
  ('Performance Test', 'Benchmarked backend response times.', '2023-02-01'),
  ('Deployment', 'Deployed latest build to staging environment.', '2023-02-05'),
  ('Code Review', 'Reviewed pull requests and left comments.', '2023-02-10'),
  ('Meeting Notes', 'Summarized weekly team meeting.', '2023-02-15'),
  ('Feature Planning', 'Outlined requirements for new feature.', '2023-02-20'),
  ('Documentation', 'Updated README and API docs.', '2023-02-25'),
  ('Security Audit', 'Checked for vulnerabilities in dependencies.', '2023-03-01'),
  ('Testing', 'Wrote unit and integration tests.', '2023-03-05'),
  ('User Feedback', 'Collected and categorized user feedback.', '2023-03-10'),
  ('Hotfix', 'Patched a production issue.', '2023-03-15'),
  ('Analytics', 'Analyzed user engagement metrics.', '2023-03-20'),
  ('Design Update', 'Applied new color scheme to UI.', '2023-03-25'),
  ('Changelog', 'Compiled changes for the latest release.', '2023-03-30'),
  ('Integration', 'Integrated third-party payment gateway.', '2023-04-04'),
  ('Cleanup', 'Removed deprecated code and files.', '2023-04-09'),
  ('Retrospective', 'Documented sprint retrospective notes.', '2023-04-14');

