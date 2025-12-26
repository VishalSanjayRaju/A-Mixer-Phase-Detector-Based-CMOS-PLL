A MIXER PHASE DETECTOR BASED CMOS PLL

This project presents the design and schematic-level verification of a CMOS Phase-Locked Loop (PLL) inspired by Razavi’s mixer-based architecture. The PLL was analyzed using transient simulations to verify lock behavior and control voltage convergence, with a measured lock time of approximately 28 ns. Frequency-domain verification was performed by exporting steady-state time-domain samples and computing the output spectrum in MATLAB, confirming stable operation around 15.8 GHz. Robustness of the design was evaluated through PVT (Process, Voltage, and Temperature) analysis, examining lock behavior, output frequency variation, and power consumption across multiple corners. The PLL consumes approximately 227 µW at 1.2 V under nominal conditions. This work focuses on functional validation at the schematic level, with post-layout and noise analysis planned as future extensions.


SCHEMATIC DIAGRAM

<img width="1725" height="592" alt="Ckt diagram PLL" src="https://github.com/user-attachments/assets/e44587b8-b4c1-455b-895d-49e5e19c0df4" />


TRANSIENT ANALYSIS


<img width="1918" height="671" alt="Transient analysis 15 86GHz zoomed steady state analysis" src="https://github.com/user-attachments/assets/b3c3d601-2685-48e6-a301-844d073aac51" />



<img width="1918" height="675" alt="Transient analysis 15 86GHz" src="https://github.com/user-attachments/assets/dd19f288-72fc-4d82-9689-61cd3ab0a815" />


FREQUENCY SPECTRUM 


<img width="1920" height="926" alt="Freq_Spectrum_Plot" src="https://github.com/user-attachments/assets/ec1e0911-49e0-4d55-8b75-d2dfafe75d0f" />


PVT ANALYSIS


<img width="428" height="150" alt="Process variations" src="https://github.com/user-attachments/assets/61971a27-9bab-4031-879a-29670e2c623b" />



<img width="392" height="145" alt="Temp variations" src="https://github.com/user-attachments/assets/eab63382-90b9-41f5-8797-e416e31d5219" />



<img width="1920" height="926" alt="Voltage vs Freq" src="https://github.com/user-attachments/assets/aa8e0a87-d20a-4186-aeda-15ef9b7d8058" />


REFERENCES

Razavi, Behzad et al. “A 3-ghz 25-mw Cmos Phase-locked Loop.” Proceedings of 1994 IEEE Symposium on VLSI Circuits (1994)

