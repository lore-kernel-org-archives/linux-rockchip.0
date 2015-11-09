From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Mon, 09 Nov 2015 17:39:25 +0800
Message-ID: <564069CD.2070102@rock-chips.com>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com> <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Liviu Dudau <Liviu.Dudau@arm.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, Russell King <rmk+kernel@arm.linux.org.uk>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 2015=E5=B9=B410=E6=9C=8819=E6=97=A5 23:07, Liviu Dudau wrote:
> A lot of component based DRM drivers use a variant of the same code
> as the probe function. They bind the crtc ports in the first iteratio=
n
> and then scan through the child nodes and bind the encoders attached
> to the remote endpoints. Factor the common code into a separate
> function called drm_of_component_probe() in order to increase code
> reuse.
>
> Cc: David Airlie <airlied@linux.ie>
> Signed-off-by: Liviu Dudau <Liviu.Dudau@arm.com>
> ---
>   drivers/gpu/drm/drm_of.c | 88 +++++++++++++++++++++++++++++++++++++=
+++++++++++
>   include/drm/drm_of.h     | 13 +++++++
>   2 files changed, 101 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index be38840..493c05c 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -1,3 +1,4 @@
> +#include <linux/component.h>
>   #include <linux/export.h>
>   #include <linux/list.h>
>   #include <linux/of_graph.h>
> @@ -61,3 +62,90 @@ uint32_t drm_of_find_possible_crtcs(struct drm_dev=
ice *dev,
>   	return possible_crtcs;
>   }
>   EXPORT_SYMBOL(drm_of_find_possible_crtcs);
> +
> +/**
> + * drm_of_component_probe - Generic probe function for a component b=
ased master
> + * @dev: master device containing the OF node
> + * @compare_of: compare function used for matching components
> + * @master_ops: component master ops to be used
> + *
> + * Parse the platform device OF node and bind all the components ass=
ociated
> + * with the master. Interface ports are added before the encoders in=
 order to
> + * satisfy their .bind requirements
> + * See Documentation/devicetree/bindings/graph.txt for the bindings.
> + *
> + * Returns zero if successful, or one of the standard error codes if=
 it fails.
> + */
> +int drm_of_component_probe(struct device *dev,
> +			   int (*compare_of)(struct device *, void *),
> +			   const struct component_master_ops *m_ops)
> +{
> +	struct device_node *ep, *port, *remote;
> +	struct component_match *match =3D NULL;
> +	int i;
> +
> +	if (!dev->of_node)
> +		return -EINVAL;
> +
> +	/*
> +	 * Bind the crtc's ports first, so that drm_of_find_possible_crtcs(=
)
> +	 * called from encoder's .bind callbacks works as expected
> +	 */
> +	for (i =3D 0; ; i++) {
> +		port =3D of_parse_phandle(dev->of_node, "ports", i);
> +		if (!port)
> +			break;
> +
> +		if (!of_device_is_available(port->parent)) {
> +			of_node_put(port);
> +			continue;
> +		}
> +
> +		component_match_add(dev, &match, compare_of, port);
Hi Liviu
       Rockchip drm can't work with drm_of_component_probe function now=
,

       At drm_of_component_probe:
             component_match_add(dev, &match, compare_of, port);
       And original rockchip drm use:
             component_match_add(dev, &match, compare_of, port->parent)=
;

      That different "port" and "port->parent" cause crtc device node=20
always mis-match.

      I'm confused that rockchip use same dts node map as imx drm=20
driver, but it works
for imx drm, not work on rockchip drm.

> +		of_node_put(port);
> +	}
>
-- =EF=BC=ADark Yao
