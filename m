From: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 09/12] drm/rockchip: lvds: Add PX30 support
Date: Mon, 16 Dec 2019 12:14:36 +0100
Message-ID: <20191216111436.wzoq33gvt42w6gqj@gilmour.lan>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-10-miquel.raynal@bootlin.com>
 <20191216105827.rxkfbwemkqw446jx@gilmour.lan>
 <20191216120312.4aa478da@xps13>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4177131168762963870=="
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191216120312.4aa478da@xps13>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============4177131168762963870==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qqehoburp6qkbata"
Content-Disposition: inline


--qqehoburp6qkbata
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:03:12PM +0100, Miquel Raynal wrote:
> Maxime Ripard <maxime@cerno.tech> wrote on Mon, 16 Dec 2019 11:58:27 +0100:
> > Hi,
> >
> > On Fri, Dec 13, 2019 at 07:10:48PM +0100, Miquel Raynal wrote:
> > > +static int px30_lvds_grf_config(struct drm_encoder *encoder,
> > > +				struct drm_display_mode *mode)
> > > +{
> > > +	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
> > > +	u8 nhsync = !(mode->flags & DRM_MODE_FLAG_PHSYNC);
> > > +	u8 nvsync = !(mode->flags & DRM_MODE_FLAG_PVSYNC);
> > > +	u8 ndclk = !(mode->flags & DRM_MODE_FLAG_PCSYNC);
> > > +	int ret;
> > > +
> > > +	if (lvds->output != DISPLAY_OUTPUT_LVDS) {
> > > +		DRM_DEV_ERROR(lvds->dev, "Unsupported display output %d\n",
> > > +			      lvds->output);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	if (nhsync ^ nvsync) {
> > > +		DRM_DEV_ERROR(lvds->dev, "Unsupported Hsync/Vsync polarity\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	/* Set format */
> > > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
> > > +				 PX30_LVDS_FORMAT(lvds->format),
> > > +				 PX30_LVDS_FORMAT(lvds->format));
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* Control Hsync/Vsync polarity */
> > > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> > > +				 PX30_LVDS_TIE_CLKS(1),
> > > +				 PX30_LVDS_TIE_CLKS(1));
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* Set Hsync/Vsync polarity */
> > > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> > > +				 PX30_LVDS_INVERT_CLKS(1),
> > > +				 PX30_LVDS_INVERT_CLKS(nhsync));
> > > +	if (ret)
> > > +		return ret;
> >
> > I don't know the hardware but it seems pretty weird to me. hsync and
> > vsync in LVDS are not clocks (or even signals), they're a bit in the
> > payload. Is there any explanation in the datasheet (or even a
> > datasheet in the first place)?
>
> There is no explanation about this in the PX30 TRM part 1 (public). But
> you are right the naming is weird. Could the "tie clocks" thing above
> mean something to you/people knowing the LVDS world?

I have no idea what that could mean :)

Maxime

--qqehoburp6qkbata
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdnHAAKCRDj7w1vZxhR
xZyOAQDhVHd0nWPr1azNDyQKN7iIgKm2Ki+H9zu+7Qomae56GgD/XQNyQoHH9Lfw
mc376rXeaH4JqVQjDhawWMIIG6U/dAw=
=keFX
-----END PGP SIGNATURE-----

--qqehoburp6qkbata--


--===============4177131168762963870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4177131168762963870==--
