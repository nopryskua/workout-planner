# High Level

- GET /v1/workouts - lists all workouts for the user with pagination
- GET /v1/workouts/{id} - gets workout by ID
- GET /v1/workouts/current - the pending workout or null (since at most one per user)
- POST /v1/workouts {"prompt": "upper body 45 minutes"} - generates a workout and marks any pending workout as superseded
- POST /v1/workouts/{id}/adjust {"prompt": "no squads"} - updates the workout based on the prompt
- POST /v1/workouts/{id}/complete {"prompt": "it felt good"} - updates the workout based on the prompt and changes the status to completed
- POST /v1/workouts/{id}/abandon - marks the workout as deleted and updates the superseded workout to pending (if any)