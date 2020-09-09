# Frequency-Phase-Modulation
Here, discuss about the basic theory of Frequency &amp; Phase Modulation (FM, PM). And also understand the waveform and frequency spectrum of Frequency &amp; Phase Modulation (FM, PM) using Matlab and python.

## Theory:

When the message is modulated into the angle portion of the carrier signal, Angle Modulation or
Exponential Modulation (EM) takes place. FM and PM signals are two special cases of this Angle
Modulation.

## Frequency Modulation:

Frequency modulation (FM) is a process in which the frequency of the carrier is varied directly by
the instantaneous voltage of the modulating signal i.e., the instantaneous frequency of the output
signal is directly proportional to the voltage of the input modulating signal. Direct FM modulation
is obtained by directly giving the modulating signal as an input to the voltage-controlled oscillator
or VCO. Indirect generation of FM is governed by the Armstrong method which is quite similar
to AM generation. If the carrier signal 𝑐(𝑡) = 𝐴𝑐 cos 𝜔𝑐 𝑡 and message is 𝑚(𝑡), the FM signal is
given as,

![alt txt](https://latex.codecogs.com/gif.latex?S_%7BFM%7D%20%3D%20A_%7Bc%7D%20COS%28%5Comega%20_%7Bc%7Dt%20&plus;%20k_%7Bf%7D%5Cint_%7B-%5Cinfty%20%7D%5E%7Bt%7D%20m%28%5Ctau%20%29d%5Ctau%20%29)

Note that, the total phase angle, ![](https://latex.codecogs.com/gif.latex?%5Ctheta%20%28t%29%20%3D%20%5Comega%20_%7Bc%7Dt%20&plus;%20k_%7Bf%7D%5Cint_%7B-%5Cinfty%20%7D%5E%7Bt%7D%20m%28%5Ctau%20%29d%5Ctau); the instantaneous frequency is
given by,

![](https://latex.codecogs.com/gif.latex?%5Comega%20_%7Bi%7D%28t%29%20%3D%20%5Cfrac%7Bd%5Ctheta%20%28t%29%7D%7Bdt%7D%20%3D%20%5Comega%20_%7Bc%7D%20&plus;%20k_%7Bf%7Dm%28t%29)

Which is linearly dependent on the message signal m(t). Moreover, theoretically, the bandwidth
(BW) of an FM signal is infinity, but considering the effective portion of the power spectral density
of FM signal, Carson defined an approximate BW of FM signal by the following formula,

![](https://drive.google.com/file/d/1_5Zg_h7q8Axno6ShnW2Iy6fYwiaFgn1s/view?usp=sharing)
