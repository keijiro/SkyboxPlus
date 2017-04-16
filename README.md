SkyboxPlus
==========

**SkyboxPlus** is a collection of skybox shaders for Unity.

System Requirements
-------------------

Unity 5.5 or later versions.

Installation
------------

Download one of the unitypackage files from the [Releases] page and import it
to a project.

[Releases]: https://github.com/keijiro/SkyboxPlus/releases

Cubemap
-------

![screenshot](http://i.imgur.com/wTbTH68.png)

**Cubemap** is a basic cubemapped skybox shader. The main difference from the
standard skybox shader is that it can be rotated not only around the Y-axis but
also around the X/Z-axis. It also has a saturation slider that can be used for
adjusting the colorfulness of the cubemap.

### MIP Level property

The **MIP Level** property controls the blurriness of the cubemap. It can be
used for mimicking bokeh-like blur effects on the background.

![screenshot](http://i.imgur.com/K4DSGjh.png)

To make this option effective, it’s required to turn on the Glossy Reflection
(pre-convolution for glossy reflection) switch in the texture importer
settings. Also it’s recommended to use the [Skybox component] to apply
different MIP levels to the camera background and lighting (reflection).

[Skybox component]: http://docs.unity3d.com/ScriptReference/Skybox.html

Hemisphere
----------

![screenshot](http://i.imgur.com/JdNZLeH.png)

**Hemisphere** is a basic gradient skybox shader. It only has three color
properties: color at the north pole, on the equator and at the south pole. The
shader linearly interpolates between them.

Gradients
---------

![screenshot](http://i.imgur.com/pkSZG2O.png)

**Gradients** is an additive gradient skybox shader. Each gradient has a
direction vector and a color value. The shader interpolates along the vector,
from black to the given color. The shape of the gradient can be adjusted with
the exponent property. Up to four gradients can be given at the same time.

License
-------

[MIT](LICENSE.md)
