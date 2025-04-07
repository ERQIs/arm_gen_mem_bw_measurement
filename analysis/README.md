## Analysis Module Overview

These scripts process, analyze, and visualize memory bandwidth data collected by different measurement methods. There is no strict execution order among them.

---

### `analyze_average_all_methods`
- Computes average bandwidth across all measurement methods.
- Used for comparing overall consistency.

### `analyze_average_rw`
- Calculates average read/write bandwidth from the Watch Point method.
- Helps assess R/W balance.

### `analyze_cmn_mc`
- Visualizes real-time bandwidth measured via `cmn_mc`.
- Good for trend inspection.

### `analyze_diff_cmn_mc`
- Compares `cmn_mc` vs. `dmc_620` using DTW alignment.
- Measures accuracy/timing deviation.

### `analyze_diff_watch_point`
- DTW-based comparison: `watch_point` vs. `dmc_620`.
- Checks for fidelity of watch point method.

### `analyze_diff_wp_up&down`
- DTW alignment of `watch_point` read/write bandwidth vs. `dmc_620`.
- Splits error source into R/W sides.

### `analyze_dmc_620_read_write`
- Visualizes real-time read/write bandwidth via `dmc_620`.
- Useful for load pattern insight.

### `analyze_dmc_620`
- Plots real-time bandwidth from `dmc_620`.
- Acts as the ground truth baseline.

### `analyze_watch_point`
- Plots real-time bandwidth from the Watch Point method.
- Used for visual comparison with other methods.

### `analyze_wp_up&down`
- Shows read vs. write bandwidth from Watch Point method.
- Helpful for debugging or performance modeling.

### `draw_cancatened_draing`
- Combines average bandwidth across methods into one view.
- Fast way to compare and spot anomalies.
