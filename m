Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC60BC77B76
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 14:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4BKHAJxaJmuTr1VHY2hJveWHdb3awka/ekG4FcnT5ig=; b=KoqyoXIDw+D2oooXqn+BUpof0W
	dwTyRtPlP2vaQ3HkpGuW2dSioug6MjuU4NDSWOXskHmRAs1c10oHg/CZvcsmQ/2aoFi7x7ecc8zqD
	Xbh082cJP7WUmPtWW8538peJgabsbiyzkGFO7mU4MkpZNyftcykIu5i1/37D+5pgbb4ELnSDLzd1Q
	6VoeiyrYwKgR32T+LX9ncxUeK0U6iPf3v0OWp7UBaMgpi6DY+fKJMUxqUm/QZKa/0uK8tfbx06dle
	cbRZ1RWp/ji+K3inZBuHsJIZY5Pu2kLDrxHsvnHJxUpVGim7C/kKLvK5Frti51DW3qzxcKFUEHIwI
	C59E/NuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKHl-009nrn-1W;
	Fri, 14 Apr 2023 14:20:21 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKHh-009nq7-2p
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Apr 2023 14:20:20 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 180301BF20E;
	Fri, 14 Apr 2023 14:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1681482012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Endbai5Wtr/9vuFfP6fUW/UnSHOPzkJ5+aimTNOZOxw=;
	b=hMTPPdbfZaB9+acnifekGW0jRfzKK7bjGLTlElyEb9SY+hHftJquSHeaZPIxjR290reCla
	MXyp2dgblj7PTn9ncfgJ9ruHbGKwgSM383sCCkxU3c0xuk0ltkS/m6UQNQB7cvxM+pXr/F
	eDZDt2fqVhf97tn3C9gkgGXVBit8iOiKOmAG0Dn0wy7xgXIFPBztJ5BtcDbo1mpwsvkbx/
	rkflB5Z/wFeE26zAqdW4rVXz24B8uDHAFkcBleb3CiodLmOeJxPAA2EyHN2MjRqy3mRkw8
	aWs7eeZrjk6l4prMfbWBAkpqqd2Z0CoN7raluPrIfRMTDOEx0h7eij++FlGoXQ==
Date: Fri, 14 Apr 2023 16:20:10 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
	=?utf-8?B?S8O2cnk=?= Maincent <kory.maincent@bootlin.com>,
	Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, stable@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: fix suspend/resume
Message-ID: <ZDlhGv0seSoxFlJ5@aptenodytes>
References: <20230413144347.3506023-1-s.hauer@pengutronix.de>
 <64381f5b.050a0220.1533e.41e2@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <64381f5b.050a0220.1533e.41e2@mx.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_072018_329775_88C74213 
X-CRM114-Status: GOOD (  30.42  )
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
Content-Type: multipart/mixed; boundary="===============6250857351289187117=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6250857351289187117==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="F/Caj+68jhUiV1a5"
Content-Disposition: inline


--F/Caj+68jhUiV1a5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 13 Apr 23, 10:27, Chris Morgan wrote:
> On Thu, Apr 13, 2023 at 04:43:47PM +0200, Sascha Hauer wrote:
> > During a suspend/resume cycle the VO power domain will be disabled and
> > the VOP2 registers will reset to their default values. After that the
> > cached register values will be out of sync and the read/modify/write
> > operations we do on the window registers will result in bogus values
> > written. Fix this by re-initializing the register cache each time we
> > enable the VOP2. With this the VOP2 will show a picture after a
> > suspend/resume cycle whereas without this the screen stays dark.

I was actually tracking the very same bug this week!

Thanks a lot for fixing this, it would certainly have taken me a while to
think about regmap cache maintenance. Good thinking :)

Your patch fixes the issue on my side but I have a suggestion below:

> > Fixes: 604be85547ce4 ("drm/rockchip: Add VOP2 driver")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu=
/drm/rockchip/rockchip_drm_vop2.c
> > index ba3b817895091..d9daa686b014d 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > @@ -215,6 +215,8 @@ struct vop2 {
> >  	struct vop2_win win[];
> >  };
> > =20
> > +static const struct regmap_config vop2_regmap_config;
> > +
> >  static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crt=
c)
> >  {
> >  	return container_of(crtc, struct vop2_video_port, crtc);
> > @@ -839,6 +841,12 @@ static void vop2_enable(struct vop2 *vop2)
> >  		return;
> >  	}
> > =20
> > +	ret =3D regmap_reinit_cache(vop2->map, &vop2_regmap_config);
> > +	if (ret) {
> > +		drm_err(vop2->drm, "failed to reinit cache: %d\n", ret);
> > +		return;
> > +	}

It seems that regmap has regcache_mark_dirty() for this purpose, which is
perhaps more adapted than reinitializing cache (unless I'm missing somethin=
g).
Note that I haven't tested it at this point.

Cheers,

Paul

> >  	if (vop2->data->soc_id =3D=3D 3566)
> >  		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
> > =20
> > --=20
> > 2.39.2
> >=20
>=20
> I confirmed this works on my Anbernic RG353P which uses the rk3566 SOC.
> Before applying the patch I displayed a color pattern with modetest
> before suspend and it appeared correctly. Then I suspended and resumed
> the device, attempted to display the same color pattern, and only got
> a single pixel on an otherwise blank display. After applying the patch
> I performed the same test and the color pattern appeared correctly
> both before and after suspend (and the display was no longer blank
> after resume from suspend).
>=20
> Tested-by: Chris Morgan <macromorgan@hotmail.com>

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--F/Caj+68jhUiV1a5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmQ5YRoACgkQ3cLmz3+f
v9HdZQgAmtDCuSSWB0Bgv4bn8Ph09JaLozvmj9xSRJJG9H0RozDSKbfDm8UT+FtP
c8MIfxRr+Y9UH1/VoNuII0l0cdVEQ370/Fu3uAUGkw04+rthZIdB9YK+EeJfBzsX
Xp7JhOzmHjA0tmgAxQ2/d4fe3uMowS+R8dfssURA4eWjjSezPIeF8Obv/Qofm/93
1+iq6KzPSTUHVlrseEN1ULWU7m3ZVul6B1CKhuKdEJZ+0vgZC32ieEOciwH/V9G0
+d6RwA0MqbuPtduj1vXyCk2jQ9xeOPgRiNMUaT4YE0CXc5+L0OjFK1SBIVjB0bsw
jr/LZxrwHNIxuq9BCtAemQBDgbpimg==
=iJZJ
-----END PGP SIGNATURE-----

--F/Caj+68jhUiV1a5--


--===============6250857351289187117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6250857351289187117==--

