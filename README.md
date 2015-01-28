# Umeyama for Matlab

Shinji Umeyama presented in 1991 a quick and simple algorithm [1] to estimate the rotation and translation of a point cloud to match corresponding points. This is very useful for image registration tasks or calibration of two coordinate systems using measurements in boths frames. The paper can be downloaded from Stanford University [2].

This repository contains a straight-forward implementation of the algorithm as a Matlab function. It is linked on the Mathworks Matlab Central platform. 

## Usage
Simply add the file to your Matlab path and call it using your point sets in format [3xn]. Please note that the point correspondences are based on the order of the two point sets; thus both matrices must have the same dimension. The output is a [3x3] rotation matrix and a [3x1] transformation vector:
- **[R, t] = umeyama(X, Y)** *Transformation estimation to match points Y to points X*
- **[R, t] = umeyama(X, Y, true)** *Same output, but additional figure will open to plot the result*

### License
Free to use and adapt in any way you like; for official purposes please use MIT license.

## References
[1] Umeyama S. Least-squares estimation of transformation parameters between two point patterns. IEEE Trans Pattern Anal Mach Intell. 1991;13:376-380. doi:10.1109/34.88573.

[2] http://web.stanford.edu/class/cs273/refs/umeyama.pdf
