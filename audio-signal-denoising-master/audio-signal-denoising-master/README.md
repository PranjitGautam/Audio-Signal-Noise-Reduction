# Audio Signal Denoising using Discrete Fourier Transform

An Octave script that performs noise reduction on audio signals using the Discrete Fourier Transform through the in-built fft module of GNU Octave. The idea is to identify the main frequencies present in the audio sample through DFT and then zero out everything apart from those main frequencies by using a low/high pass filter depending on the sample. The project was developed as a part of my freshman year Linear Algebra & Vector Calculus course with the help of my groupmates.

# Overview
![Original Audio Signal in Time Domain](plots/original_audio_signal_time.png?raw=true "Original Audio Signal in Time Domain")
![Original Audio Signal in Frequency Domain](plots/original_audio_signal_frequency.png?raw=true "Original Audio Signal in Frequency Domain")
![Modified Audio Signal in Frequency Domain](plots/modified_audio_signal_frequency.png?raw=true "Modified Audio Signal in Frequency Domain")
![Modified Audio Signal in Time Domain](plots/modified_audio_signal_time.png?raw=true "Modified Audio Signal in Time Domain")

More on Discrete Fourier Transform: http://www.robots.ox.ac.uk/~sjrob/Teaching/SP/l7.pdf
