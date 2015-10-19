From: Liviu Dudau <Liviu.Dudau@arm.com>
Subject: Re: [RFC PATCH v2 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Mon, 19 Oct 2015 14:02:58 +0100
Message-ID: <20151019130258.GU3394@e106497-lin.cambridge.arm.com>
References: <1445257313-7147-1-git-send-email-Liviu.Dudau@arm.com>
 <1445257313-7147-2-git-send-email-Liviu.Dudau@arm.com>
 <20151019122537.GZ32532@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20151019122537.GZ32532@n2100.arm.linux.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, Mark Yao <mark.yao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Oct 19, 2015 at 01:25:37PM +0100, Russell King - ARM Linux wrot=
e:
> On Mon, Oct 19, 2015 at 01:21:50PM +0100, Liviu Dudau wrote:
> > A lot of component based DRM drivers use a variant of the same code
> > as the probe function. They bind the crtc ports in the first iterat=
ion
> > and then scan through the child nodes and bind the encoders attache=
d
> > to the remote endpoints. Factor the common code into a separate
> > function called drm_of_component_probe() in order to increase code
> > reuse.
> >=20
> > Cc: David Airlie <airlied@linux.ie>
> > Signed-off-by: Liviu Dudau <Liviu.Dudau@arm.com>
> > ---
> >  drivers/gpu/drm/drm_of.c | 92 ++++++++++++++++++++++++++++++++++++=
++++++++++++
> >  include/drm/drm_of.h     | 12 +++++++
> >  2 files changed, 104 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > index be38840..cf16240 100644
> > --- a/drivers/gpu/drm/drm_of.c
> > +++ b/drivers/gpu/drm/drm_of.c
> > @@ -1,3 +1,4 @@
> > +#include <linux/component.h>
> >  #include <linux/export.h>
> >  #include <linux/list.h>
> >  #include <linux/of_graph.h>
> > @@ -61,3 +62,94 @@ uint32_t drm_of_find_possible_crtcs(struct drm_d=
evice *dev,
> >  	return possible_crtcs;
> >  }
> >  EXPORT_SYMBOL(drm_of_find_possible_crtcs);
> > +
> > +/**
> > + * drm_of_component_probe - Generic probe function for a component=
 based master
> > + * @dev: master device containing the OF node
> > + * @compare_of: compare function used for matching components
> > + * @master_ops: component master ops to be used
> > + *
> > + * Parse the platform device OF node and bind all the components a=
ssociated
> > + * with the master. Interface ports are added before the encoders =
in order to
> > + * satisfy their .bind requirements
> > + * See Documentation/devicetree/bindings/graph.txt for the binding=
s.
> > + *
> > + * Returns zero if successful, or one of the standard error codes =
if it fails.
> > + */
> > +int drm_of_component_probe(struct device *dev,
> > +			   int (*compare_of)(struct device *, void *),
> > +			   const struct component_master_ops *master_ops)
> > +{
> ...
> > +	ret =3D dma_set_coherent_mask(dev, DMA_BIT_MASK(32));
> > +	if (ret)
> > +		return ret;
>=20
> Please don't move this into here, it's completely inappropriate.  Jus=
t
> because something makes use of this does not mean they only support
> 32-bit DMA.  Besides, this has nothing to do with whether or not it's
> OF-based or not.

Understood. My thinking process was that component-based drivers are al=
l
OF-enabled (how else do you make use of the framework?) and 32-bit DMA =
is
present in 2 out of 3 drivers that are converted, so it looks to be com=
mon
enough that adding it to armada would not hurt. It was all done in the =
name of
collecting common code in a single function.

> > +
> > +	return component_master_add_with_match(dev, master_ops, match);
> > +}
> > +EXPORT_SYMBOL(drm_of_component_probe);
> > diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> > index 2441f71..7c0c05b 100644
> > --- a/include/drm/drm_of.h
> > +++ b/include/drm/drm_of.h
> > @@ -1,18 +1,30 @@
> >  #ifndef __DRM_OF_H__
> >  #define __DRM_OF_H__
> > =20
> > +struct component_master_ops;
> > +struct device;
> >  struct drm_device;
> >  struct device_node;
> > =20
> >  #ifdef CONFIG_OF
> >  extern uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> >  					   struct device_node *port);
> > +extern int drm_of_component_probe(struct device *dev,
> > +				  int (*compare_of)(struct device *, void *),
> > +				  const struct component_master_ops *master_ops);
> >  #else
> >  static inline uint32_t drm_of_find_possible_crtcs(struct drm_devic=
e *dev,
> >  						  struct device_node *port)
> >  {
> >  	return 0;
> >  }
> > +
> > +static inline int drm_of_component_probe(struct device *dev,
> > +					int (*compare_of)(struct device *, void *),
> > +					 const struct component_master_ops *master_ops)
>=20
> Some of these lines will fail checkpatch.  It would be nice to avoid
> lines longer than 80 columns.

I'm torn between following the 80 columns rule, aligning parameters to =
the
opening brace, keeping the return value on the same line as the functio=
n name
and having this high res monitor that can make code more readable by go=
ing to
86 columns. :)

I will update the patch to trim down the line width, thanks for reviewi=
ng it!

Best regards,
Liviu

>=20
> --=20
> FTTC broadband for 0.8mile line: currently at 9.6Mbps down 400kbps up
> according to speedtest.net.
>=20

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    =C2=AF\_(=E3=83=84)_/=C2=AF
