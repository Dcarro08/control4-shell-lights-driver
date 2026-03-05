# API Reference for Control4 Shell Lights Driver

## Driver Commands

### `setLights`
- **Description:** Sets the state of the lights.
- **Parameters:**
  - `lightID`: The ID of the light to control.
  - `state`: The desired state (on/off).

### `getLightsStatus`
- **Description:** Retrieves the current status of the lights.
- **Parameters:**
  - `lightID`: Optional. The ID of the light to check. If not provided, returns status for all lights.

## Driver Properties

### `brightness`
- **Type:** Number
- **Description:** Represents the brightness level (0-100).

### `color`
- **Type:** String
- **Description:** Represents the color of the light in hexadecimal format.

## Events

### `lightStateChanged`
- **Description:** Triggered when the state of any light changes.
- **Parameters:**
  - `lightID`: The ID of the light that changed state.
  - `newState`: The new state of the light (on/off).