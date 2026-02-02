# Workout States & Transitions

States: PENDING, ABANDONED, COMPLETED

At most one PENDING per user.

Transitions:
- PENDING -> ABANDONED
- PENDING -> COMPLETED

# High Level API

- GET /v1/workouts - lists all workouts for the user with pagination
- GET /v1/workouts/{id} - gets workout by ID
- GET /v1/workouts/current - returns the pending workout or status not found if no pending workout
- POST /v1/workouts {"prompt": "upper body 45 minutes"} - generates a workout or status conflict if some workout pending
- POST /v1/workouts/current/adjust {"prompt": "no squads"} - updates the workout based on the prompt or status not found if no pending workout
- POST /v1/workouts/current/complete {"prompt": "it felt good"} - updates the pending workout based on the prompt and changes the status to completed or returns status not found if no pending workout
- DELETE /v1/workouts/current - marks the pending workout as abandoned or status not found if no pending workout