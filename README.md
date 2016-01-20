SkyboxPlus
==========

*SkyboxPlus* is a collection of skybox shaders for Unity.

Cubemap
-------

![screenshot](http://40.media.tumblr.com/c6a7829cae1bcf87dbfa53ef393f4ef6/tumblr_o197gdneNg1qio469o1_400.png)

*Cubemap* is a basic cubemapped skybox shader. The main difference from the
standard skybox shader is that it can be rotated not only around the Y-axis
but also around the X/Z-axis. It also has a saturation slider, which is used
for adjusting the colorfulness of the cubemap.

### MIP level option

The MIP level option controls the blurriness of the cubemap. It can be used
for reproducing a bokeh-like blur effect on the background.

![screenshot](http://36.media.tumblr.com/7d198e141cc716834701c3dcfede35c8/tumblr_o196zt39Yv1qio469o1_400.png)

To make this option effective, it’s required to turn on the “Glossy
Reflection” (pre-convolution for glossy reflection) switch in the texture
importer settings. Also, it’s recommended to use the [Skybox component]
[skybox] to apply different MIP levels to the camera (background) and
lighting (reflection).

[skybox]: http://docs.unity3d.com/ScriptReference/Skybox.html


Hemisphere
----------

![screenshot](https://36.media.tumblr.com/eea5f88746194b86bff8cb4831e14a15/tumblr_nzegxnM5Tm1qio469o2_400.png)

*Hemisphere* is a basic gradient skybox shader. It only has three color values
(color at north pole, on equator and at south pole). The shader linearly
interpolates between them.

Gradients
---------

![screenshot](https://41.media.tumblr.com/c84320dbb7c7f0d892ec0908f40a52ff/tumblr_nzegxnM5Tm1qio469o1_400.png)

*Gradients* is an additive gradient skybox shader. Each gradient has a direction
vector and a color value. The shader interpolates along the vector, from black to
the given color. The shape of the gradient can be adjusted with the exponent
property. Up to four gradients can be given at the same time.

License
-------

Copyright (C) 2015, 2016 Keijiro Takahashi

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
