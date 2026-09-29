# Adders synthesis experiment

Target: Waveshare/CoreEP2C5, Cyclone II `EP2C5T144C8`.

The 50 MHz constrained compile completed successfully with 0 errors.

| Result | Value |
|---|---:|
| Logic elements | 35 / 4,608 (<1%) |
| Pins | 35 / 89 (39%) |
| Slow setup slack | +14.102 ns |
| Slow hold slack | +1.150 ns |
| Fast setup slack | +18.109 ns |
| Fast hold slack | +0.355 ns |

The experiment uses [`adders.sdc`](adders.sdc), with a 20 ns clock on `clock`. Reports and the SOF are under [`experiments/50MHz`](experiments/50MHz). External input/output delays are not specified, so this is internal-register timing rather than a complete board I/O closure.

## Clock sweep

| Constraint | Slow setup | Slow hold | Fit |
|---:|---:|---:|:---:|
| 40 MHz | +19.102 ns | +1.150 ns | Pass |
| 50 MHz | +14.102 ns | +1.150 ns | Pass |
| 60 MHz | +10.769 ns | +1.150 ns | Pass |
| 75 MHz | +7.435 ns | +1.150 ns | Pass |
| 100 MHz | +4.603 ns | +1.149 ns | Pass |

All tested constraints fit. The experiments are in `experiments/clk_*MHz`.
