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

![fist eq1](https://drive.google.com/file/d/1jTiwr7Us_jX2OLjXwhSB7nyT3Zk1av9F/view?usp=sharing)

Note that, the total phase angle,
![](https://drive.google.com/file/d/1_YQAb_d9FxRVfFemrtU-4LsfcE1V_V-1/view?usp=sharing)
; the instantaneous frequency is
given by,

![](https://drive.google.com/file/d/1d2lAfN7wF4GxgYFVHWKA4jVPrDPpUGzC/view?usp=sharing)

Which is linearly dependent on the message signal m(t). Moreover, theoretically, the bandwidth
(BW) of an FM signal is infinity, but considering the effective portion of the power spectral density
of FM signal, Carson defined an approximate BW of FM signal by the following formula,

![](https://drive.google.com/file/d/1_5Zg_h7q8Axno6ShnW2Iy6fYwiaFgn1s/view?usp=sharing)
