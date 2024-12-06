Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 639E9E77179
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 14:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:Date:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fGN/IoMUZjqRmNMaDkIWKsPSYlwxfXzCP/D1q6cSkok=; b=gtas35FmicLGBOkQfLApFgk4qG
	VZzF1izL7C9OQb/Gj1ayDv2YFQsHI1iOFHu+UWPMeEMUdDJ6JW/X7uzLVbVfFXfV9Jf5nzt3WifFo
	rmlL+L/eTnP7zInx2pV6HPBrfZoc6K8PxjCz3qoO7GhIfHbMSsAJIyrYcMlTsfYWfFOck0oNh18Lo
	sMxIUsiP3TOftWg5Ur7l6wc+urGtYnTczYPgd9xHHuzP+oyskPsxXg8JNMtmugmGo04WNUxT2IFjn
	3tqWk7DNLtG9w3UL95YWJ55eV9M6Avt6zW8pmQl4S62hNCsHZEBy1+bXri4OaLRaoNoCNUuqMiYyS
	1gfcPncg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZFa-00000001r8u-1ZJM;
	Fri, 06 Dec 2024 14:24:10 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZEX-00000001qyL-2faS;
	Fri, 06 Dec 2024 14:23:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 983CBA4423C;
	Fri,  6 Dec 2024 14:21:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6CA8C4CED1;
	Fri,  6 Dec 2024 14:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733494984;
	bh=KjGZ7RXzGwqZiqmHjguEh0tDh9nP5DfFrBU9SfrU15k=;
	h=From:Date:To:Cc:Subject:References:In-Reply-To:From;
	b=i7NRQ6jUNAOhb8w7aT8pqsBU9WQagCvkU0JqfRg0P0mqaGYTO0EQmBBoiAvjpgccQ
	 LSlSazpccXfaqiFOsccfqWJpQzhrgjKyCmWiso/EoKZCbnNKFWT2vNFjaSUTbrZ0NV
	 wEF0gdbsmXHAlU6dMNfRBtdodwqxIlCMnsEShU8hn0BF23K1qzYmHmJFG5KgEfh4DO
	 SPdfTFtl3NP5xzTS6Dq3t9R2GJaXe5upAcVClaEQLdi0Y0eLXtodBv7+OCkWCKEMOq
	 GFlgLzCM2OuFqbfzaLgQsxlpcn+ZYBjY63ZN9UmlE/MZ+vcIYWiHGLkkOZ+zuK9rIx
	 PzEhxJg6u+Kiw==
From: mripard@kernel.org
Date: Fri, 6 Dec 2024 15:23:01 +0100
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Phong LE <ple@baylibre.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 9/9] drm/vc4: hdmi: use
 drm_atomic_helper_connector_hdmi_update_edid()
Message-ID: <20241206-speedy-beaver-from-asgard-dbed9c@houat>
HFrom: Maxime Ripard <mripard@kernel.org>
References: <20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org>
 <20241201-drm-bridge-hdmi-connector-v5-9-b5316e82f61a@linaro.org>
 <20241202-married-bald-raven-7acd83@houat>
 <ae24x2bo736jpzi77l34hybejawwe4rp47v2idedga344ye6zr@bxsxz34dwrd2>
MIME-Version: 1.0
In-Reply-To: <ae24x2bo736jpzi77l34hybejawwe4rp47v2idedga344ye6zr@bxsxz34dwrd2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_062305_802166_B40A3286 
X-CRM114-Status: GOOD (  38.98  )
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
Content-Type: multipart/mixed; boundary="===============0402551957070337329=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0402551957070337329==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="dycgynhhneeoioiz"
Content-Disposition: inline


--dycgynhhneeoioiz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 9/9] drm/vc4: hdmi: use
 drm_atomic_helper_connector_hdmi_update_edid()
MIME-Version: 1.0

On Tue, Dec 03, 2024 at 02:27:44PM +0200, Dmitry Baryshkov wrote:
> On Mon, Dec 02, 2024 at 02:27:49PM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Sun, Dec 01, 2024 at 02:44:13AM +0200, Dmitry Baryshkov wrote:
> > > Use the helper function to update the connector's information. This
> > > makes sure that HDMI-related events are handled in a generic way.
> > > Currently it is limited to the HDMI state reporting to the sound syst=
em.
> > >=20
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4=
_hdmi.c
> > > index d0a9aff7ad43016647493263c00d593296a1e3ad..d83f587ab69f4b8f7d5c3=
7a00777f11da8301bc1 100644
> > > --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> > > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > > @@ -401,13 +401,16 @@ static void vc4_hdmi_handle_hotplug(struct vc4_=
hdmi *vc4_hdmi,
> > >  	 */
> > > =20
> > >  	if (status =3D=3D connector_status_disconnected) {
> > > +		drm_atomic_helper_connector_hdmi_update_edid(connector, NULL);
> > >  		cec_phys_addr_invalidate(vc4_hdmi->cec_adap);
> > >  		return;
> > >  	}
> > > =20
> > >  	drm_edid =3D drm_edid_read_ddc(connector, vc4_hdmi->ddc);
> > > =20
> > > -	drm_edid_connector_update(connector, drm_edid);
> > > +	// TODO: use drm_atomic_helper_connector_hdmi_update() once it gains
> > > +	// CEC support
> > > +	drm_atomic_helper_connector_hdmi_update_edid(connector, drm_edid);
> >=20
> > So, it's not just about EDID, and I think we shouldn't really focus on
> > that either.
> >=20
> > As that patch points out, even if we only consider EDID's, we have
> > different path depending on the connector status. It shouldn't be up to
> > the drivers to get this right.
> >=20
> > What I had in mind was something like a
> > drm_atomic_helper_connector_hdmi_hotplug function that would obviously
> > deal with EDID only here, but would expand to CEC, scrambling, etc.
> > later on.
>=20
> I thought about it, after our discussion, but in the end I had to
> implement the EDID-specific function, using edid =3D=3D NULL as
> "disconnected" event. The issue is pretty simple: there is no standard
> way to get EDID from the connector. The devices can call
> drm_edid_read(), drm_edid_read_ddc(connector->ddc) or (especially
> embedded bridges) use drm_edid_read_custom().

And that's fine, it's to be expected.

> Of course we can go with the functional way and add the
> .read_edid(drm_connector) callback to the HDMI funcs. Then the
> drm_atomic_helper_connector_hdmi_hotplug() function can read EDID on its
> own.

Yep, that's definitely what we should do. And then we can make a
get_modes helper too that would also use it.

> Also the function that you proposed perfectly fits the HPD notification
> callbacks, but which function should be called from the .get_modes()?
> The _hdmi_hotplug() doesn't fit there. Do we still end up with both
> drm_atomic_helper_connector_hdmi_hotplug() and
> drm_atomic_helper_connector_hdmi_update_edid()?

I'd say both a get_modes helper and a hotplug helper, both using that
read_edid hook under the hood.

Maxime

--dycgynhhneeoioiz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ1MIxQAKCRAnX84Zoj2+
do5xAX4k6mKW4Bt7ybI5RhlLw9sJEo4pfcA2eh2x5DRMpHOkyzon0k434uDMFRng
2KdcU8gBgK08VG9rHNa3FQR0uOvG+ivNuzpw60Z3iQTfDrl9j6ufNMx2bCeo7pR2
LTKnOXxxkg==
=7iA8
-----END PGP SIGNATURE-----

--dycgynhhneeoioiz--


--===============0402551957070337329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0402551957070337329==--

