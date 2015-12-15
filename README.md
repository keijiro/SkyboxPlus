SkyboxPlus
==========

*SkyboxPlus* is a collection of skybox shaders for Unity.

Cubemap
-------

![inspector](http://40.media.tumblr.com/33e6a3b7e825f37e809e0e48f6554526/tumblr_nx4j4aJ6HQ1qio469o1_400.png)

*Cubemap* is a basic cubemapped skybox shader. In this shader, the cubemap can
be rotated not only around the Y-axis but also around the X/Z-axis. It also has
the saturation property, which is used for adjusting the colorfulness of the
cubemap.

Hemisphere
----------

*Hemisphere* is a basic gradient skybox shader. It only has three color values
(color at north pole, on equator and at south pole), and linearly interpolate
between them.

Gradients
---------

*Gradients* is an additive gradient skybox shader. Each gradient has a direction
vector and a color value, and it interpolate from black to the specified color.
The shape of the gradient can be adjusted with the exponent property. Up to four
gradients can be specified at the same time.

License
-------

Copyright (C) 2015 Keijiro Takahashi

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
