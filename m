Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33AAECA9EDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 12:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CXIRXaqXvHZmhXIkgfnqPF27yL2pfF3M5i0Yd0tLkWg=; b=bHP1g0pG6Icm5cKjtIhEOpGocp
	TBFGMyWXSe8abZKb/dtm9euIu1CidTfMhAnlG+Bs77isC0Kad3EZde8Cn7i9StO5hCQDj7gYx56Q/
	ge7t5vl7bWg9+QF41IjlkE4fqPDA8UhZYzUm+z+ztFBooD/3C0h+IztOxbzsTaj5uYelmhTiYedAZ
	s59jq0zVUAp91kZflJJN2owpZRFiLLg29KVu2OgmWmneoShA+4TWXKCvrJ2GI4mhyt51pYYPqCI5Y
	rfoGcXBHKPibh5K8/bq+Jdq0AGd6Gu0zn8LZ2zrDZ2TfBtv/uccEkz6eGf9PtZlBgwXjTHTCg9eB9
	4rAmxz4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd61I-0000000BKpD-11TD;
	Fri, 26 Jun 2026 12:50:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd61G-0000000BKp0-21yf;
	Fri, 26 Jun 2026 12:50:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 410C160098;
	Fri, 26 Jun 2026 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 558761F000E9;
	Fri, 26 Jun 2026 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782478253;
	bh=6/EMO4Xkqp5EWfNibLrVgkVHrXeObxmVUQOZpRPdNsM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kFciZu6i07zWeKKDY/50OS1OI70Cj4lvWkQFfSD5XtViJd2eByvBcu8aj3KWP+Ukv
	 X+eTj5TV3Gir4AshCO3pgdC3PnxPVcZD4iuwQ/SFGACct9WvG+7U4Tv6GD6UtvG0Nu
	 bWKQPx38vfASM1850IT1mVI5Uh4QH2/cGIC6CEogxc2zpihNmpqdMHrCiDYFjYojxW
	 n3NKX6j//1QPW4WtjNvvl+Bpzewi0M35lQFCC4LKi9sAoFmAfIwVWzHYgThOmzjymG
	 8IHHNECFegf/L0PxcMHB2ONFWTonLZDRneFleG5rAvwrYXU836B4fEp0NwM/MWpETy
	 Ci7qg7FbfYPGA==
Date: Fri, 26 Jun 2026 14:50:50 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Albert Esteve <aesteve@redhat.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, Lucas Stach <l.stach@pengutronix.de>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Paul Cercueil <paul@crapouillou.net>, Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>, 
	Stefan Agner <stefan@agner.ch>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Yannick Fertre <yannick.fertre@foss.st.com>, Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Philippe Cornu <philippe.cornu@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Jyri Sarha <jyri.sarha@iki.fi>, 
	Jingoo Han <jingoohan1@gmail.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Alison Wang <alison.wang@nxp.com>, Paul Kocialkowski <paulk@sys-base.io>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-samsung-soc@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 3/5] drm/panel: make *find_panel*() return a counted
 reference
Message-ID: <20260626-successful-badger-from-neptune-ae2bc6@houat>
References: <20260626-drm_refcount_wiring-v1-0-cca1a7b3bdef@redhat.com>
 <20260626-drm_refcount_wiring-v1-3-cca1a7b3bdef@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260626-drm_refcount_wiring-v1-3-cca1a7b3bdef@redhat.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5171650721983749588=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5171650721983749588==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="7zohsnv3e6hz33ls"
Content-Disposition: inline


--7zohsnv3e6hz33ls
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/5] drm/panel: make *find_panel*() return a counted
 reference
MIME-Version: 1.0

On Fri, Jun 26, 2026 at 02:03:25PM +0200, Albert Esteve wrote:
> Callers of of_drm_find_panel() receive a pointer with no reference
> held, creating a window where the panel device can be unregistered
> and freed between the lookup and first use (e.g., drm_panel_prepare()).
>=20
> find_panel_by_fwnode() is the fwnode counterpart of of_drm_find_panel().
> drm_panel_add_follower() worked around the missing panel kref by calling
> get_device() on the panel's underlying struct device. However, get_device=
()
> only prevents the device kobject from being freed. It does not prevent the
> panel's kzalloc()'d container memory from being released when the kref
> reaches zero.
>=20
> Fix both lookup functions by acquiring a reference with drm_panel_get()
> before returning, under panel_lock. Callers are now responsible for calli=
ng
> drm_panel_put() when they no longer need the pointer.
>=20
> Signed-off-by: Albert Esteve <aesteve@redhat.com>
> ---
>  drivers/gpu/drm/drm_panel.c | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 545fe93dc28fe..a00ae98ed0956 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -458,14 +458,17 @@ EXPORT_SYMBOL(__devm_drm_panel_alloc);
> =20
>  #ifdef CONFIG_OF
>  /**
> - * of_drm_find_panel - look up a panel using a device tree node
> + * of_drm_find_panel - look up and reference a panel by device tree node
>   * @np: device tree node of the panel
>   *
>   * Searches the set of registered panels for one that matches the given =
device
> - * tree node. If a matching panel is found, return a pointer to it.
> + * tree node. If a matching panel is found, the panel's reference count =
is
> + * incremented before returning a pointer to it. The caller must call
> + * drm_panel_put() when it no longer needs the panel pointer.
>   *
> - * Return: A pointer to the panel registered for the specified device tr=
ee
> - * node or an ERR_PTR() if no panel matching the device tree node can be=
 found.
> + * Return: A reference-counted pointer to the panel registered for the s=
pecified
> + * device tree node or an ERR_PTR() if no panel matching the device tree=
 node
> + * can be found.
>   *
>   * Possible error codes returned by this function:
>   *
> @@ -484,6 +487,7 @@ struct drm_panel *of_drm_find_panel(const struct devi=
ce_node *np)
> =20
>  	list_for_each_entry(panel, &panel_list, list) {
>  		if (panel->dev->of_node =3D=3D np) {
> +			drm_panel_get(panel);
>  			mutex_unlock(&panel_lock);
>  			return panel;
>  		}
> @@ -538,7 +542,13 @@ int of_drm_get_panel_orientation(const struct device=
_node *np,
>  EXPORT_SYMBOL(of_drm_get_panel_orientation);
>  #endif
> =20
> -/* Find panel by fwnode. This should be identical to of_drm_find_panel()=
=2E */
> +/*
> + * Find panel by fwnode, returning a counted reference.
> + *
> + * Behaves identically to of_drm_find_panel(). On success the returned
> + * pointer has been passed through drm_panel_get(); the caller must call
> + * drm_panel_put() when done with it.
> + */
>  static struct drm_panel *find_panel_by_fwnode(const struct fwnode_handle=
 *fwnode)
>  {
>  	struct drm_panel *panel;
> @@ -550,6 +560,7 @@ static struct drm_panel *find_panel_by_fwnode(const s=
truct fwnode_handle *fwnode
> =20
>  	list_for_each_entry(panel, &panel_list, list) {
>  		if (dev_fwnode(panel->dev) =3D=3D fwnode) {
> +			drm_panel_get(panel);
>  			mutex_unlock(&panel_lock);
>  			return panel;
>  		}

This part should probably be in a separate patch

> @@ -686,6 +697,7 @@ void drm_panel_remove_follower(struct drm_panel_follo=
wer *follower)
>  	mutex_unlock(&panel->follower_lock);
> =20
>  	put_device(panel->dev);
> +	drm_panel_put(panel);
>  }
>  EXPORT_SYMBOL(drm_panel_remove_follower);

together with this one?

Maxime

--7zohsnv3e6hz33ls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaj51qgAKCRAnX84Zoj2+
diwIAX4n8GVfdswI/CYfLEgOWgs6vyFmb4OyfcLhnjRxNbOAswd2I4Y6MISm2y2O
xbmkorsBgIsdJUP81eahqp4/Cdcc0U1VPZVV2ocSL3asD7KeHDuqM1tJ2aAS3RWB
swFnQal7+A==
=gMuG
-----END PGP SIGNATURE-----

--7zohsnv3e6hz33ls--


--===============5171650721983749588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5171650721983749588==--

