# Vehicle Theft Detection Script for FiveM

## Overview

This script is designed to detect vehicle thefts in a FiveM server. It automatically triggers a dispatch notification when a player steals a vehicle. The notification includes detailed information about the vehicle, such as the license plate, color, and brand/model. The dispatch is then sent to police job players, who can respond to the theft.

## Features

- Detects vehicle thefts when a player enters a vehicle owned by an NPC or another player.
- Sends a dispatch notification to police job players with:
  - Player's gender.
  - Vehicle's license plate (SPZ).
  - Vehicle's color (with human-readable names).
  - Vehicle's brand/model.
  - The street location of the theft.

## Installation

1. **Clone or Download** this repository to your FiveM server's `resources` directory.
   
2. **Ensure the required dependencies**:
   - `cd_dispatch`: This script relies on the `cd_dispatch` resource for sending notifications. Ensure that this resource is installed and properly configured on your server.

3. **Add the resource to your server configuration**:
   - Open your `server.cfg` file.
   - Add the following line to ensure the script starts with your server:
     ```
     ensure vehicle-theft-detection
     ```

4. **Configure the script (if necessary)**:
   - By default, the script is configured to work out-of-the-box. However, you can adjust the `GetVehicleOwner` function in `client.lua` to better match your server's vehicle ownership logic.

5. **Start your server** to begin using the vehicle theft detection script.

## Usage

Once the script is installed and running, it will automatically monitor players attempting to enter vehicles. If a player successfully enters a vehicle they do not own (either driven by an NPC or parked), the script will:

1. Gather information about the player and the vehicle.
2. Trigger a dispatch notification to the police job players, which will include:
   - A title indicating a vehicle theft (e.g., "10-60 - Vehicle Theft").
   - A message detailing the player's gender, the vehicle's license plate, color, brand/model, and the street name where the theft occurred.
   - A blip on the map for police players to follow.

### Example Notification

A typical notification might read:

