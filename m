Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97FF3C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 11:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RAw3ORBkTHAOj5GHvFJO34kcIoi+DiBtM0QchRIPClQ=; b=X9dKWjeBrJ8O1SefaVkbgsG2K3
	+fzAmkmLeQ7ShyUkI4qMJ2HvD6FFpKe8aOEavsC9zTsSzeAAXUfwSUv6xa13ADIRf/W0kqlT2vF9U
	l4zs+CRcxAoJMF0WfH30sTzI6nFIm4CLXlmdippVopyQaNFKuruDZHtm5Qt8EQym+B0jf+OhiTR4X
	2NULFzQEzziY/OQUSKDhm4FjuLyx6PdATAD4MXeGZjew1c6c0rZ3YK8+hqevDIQu19R0pUhG8MOly
	TpR69ctEnBM2cWOR9E4n55V/yOkHSpDuOC+QBqUVPkqTk7/oglKApALRVSxumAUEnv8iclR/DHdMM
	yPnsaE9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDk4l-000BUL-0k;
	Thu, 14 Dec 2023 11:40:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDk4i-000BT7-23;
	Thu, 14 Dec 2023 11:40:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 16B00621F1;
	Thu, 14 Dec 2023 11:40:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 416CDC433C8;
	Thu, 14 Dec 2023 11:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702554019;
	bh=eeDYqlwBtjHy6r69GLa780JAO3JgPSQv0n4y8NPG8k4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kggclUZoobSrHtX3pZCJgcpzhkzPgkIumB67PLvu0w7b+vQN/Rn4ov0qkm1wuSj5M
	 bwLqRbzEyzxzSoKQzwNk/yhp1YnGggkwSV0v9OaWplNq0cqda1IcUyWphu6hdjANSf
	 +Lyp9ztkvbAqGBvYwGodIK7U27aVQEgKJdgLI2BISWD76bvPBa0TZvU19c+5IzzN1b
	 hgblqst2vIshobJtSYEjPj6OYvveUEB5VRUDdZUq36N8CYXqANRDeVRPVzt0+e/B+B
	 PlwGSK3LHeHHM3v/k9Cq/vsUf53GNkn1wtNNOaQbAPL4g4j4qtb6HQNbn1vdMSTlde
	 RZCP5WTptObrw==
Date: Thu, 14 Dec 2023 12:40:16 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/11] drm/rockchip: inno_hdmi: Add basic mode validation
Message-ID: <k7ry5xsrmc5bi46pwbkphq4wo3jd5uutnezvttue2eh7sabkby@wvimbjamzg32>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-8-knaerzche@gmail.com>
 <wz4e43ateg3gb7745mz22wwyruwavevvpfbqsdxeynejcjxhzn@qbqldsnkktei>
 <1b7402b2-ec03-420b-a81b-3e6ea46e402a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1b7402b2-ec03-420b-a81b-3e6ea46e402a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_034020_755551_B36E004E 
X-CRM114-Status: GOOD (  38.52  )
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
Content-Type: multipart/mixed; boundary="===============6689270726879799218=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6689270726879799218==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wxvrbsdqrjkzgivk"
Content-Disposition: inline


--wxvrbsdqrjkzgivk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 12:17:39PM +0100, Alex Bee wrote:
> Hi Maxime,
>=20
> Am 14.12.23 um 09:05 schrieb Maxime Ripard:
> > Hi,
> >=20
> > On Wed, Dec 13, 2023 at 08:51:21PM +0100, Alex Bee wrote:
> > > As per TRM this controller supports pixelclocks starting from 25 MHz.=
 The
> > > maximum supported pixelclocks are defined by the phy configurations we
> > > have. Also it can't support modes that require doubled clocks.
> > > If there is a phy reference clock we can additionally validate against
> > > VESA DMT's recommendations.
> > > Those checks are added to the mode_valid hook of the connector and
> > > encoder's mode_fixup hook.
> > >=20
> > > Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > > ---
> > >   drivers/gpu/drm/rockchip/inno_hdmi.c | 38 +++++++++++++++++++++++++=
+--
> > >   1 file changed, 36 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/r=
ockchip/inno_hdmi.c
> > > index f7f0bec725f9..2f839ff31c1c 100644
> > > --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > @@ -38,6 +38,8 @@ struct inno_hdmi_variant {
> > >   	struct inno_hdmi_phy_config *default_phy_config;
> > >   };
> > > +#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
> > > +
> > >   struct hdmi_data_info {
> > >   	int vic;
> > >   	bool sink_has_audio;
> > > @@ -572,6 +574,34 @@ static int inno_hdmi_setup(struct inno_hdmi *hdm=
i,
> > >   	return 0;
> > >   }
> > > +static enum drm_mode_status inno_hdmi_mode_valid(struct inno_hdmi *h=
dmi,
> > > +						 struct drm_display_mode *mode)
> > > +{
> > So, mode_valid is only called to filter out the modes retrieved by
> > get_modes, but it won't be called when userspace programs a mode. That's
> > atomic_check's job.
> >=20
> > So you probably want to create a shared function between atomic_check
> > and mode_valid, and call it from both places (or call mode_valid from
> > atomic_check).
>
> This actually _is_ a shared function called in
> inno_hdmi_connector_mode_valid and inno_hdmi_encoder_mode_fixup. Yes, I=A0
> probably should use it in atomic_check _also_.

Yeah, I saw that later and forgot to rephrase.

> > > +	/* No support for double-clock modes */
> > > +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > > +		return MODE_BAD;
> > > +
> > > +	unsigned int mpixelclk =3D mode->clock * 1000;
> > Variables should be declared at the top of the function.
> Oookay ... can move them.
> > > +	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
> > > +		return MODE_CLOCK_LOW;
> > You probably want to check the max TMDS clock too?
>
> Not sure what you mean here. For the currently supported formats of this
> driver (rgb only) tmds clock and pixel clock are always the same.

I mean that your controller has a maximum TMDS rate it supports too
(probably something like 340MHz). You should also filter out the modes
that have a pixel clock higher than the one you can reach.

> > > @@ -602,7 +632,9 @@ static bool inno_hdmi_encoder_mode_fixup(struct d=
rm_encoder *encoder,
> > >   					 const struct drm_display_mode *mode,
> > >   					 struct drm_display_mode *adj_mode)
> > >   {
> > > -	return true;
> > > +	struct inno_hdmi *hdmi =3D encoder_to_inno_hdmi(encoder);
> > > +
> > > +	return inno_hdmi_mode_valid(hdmi, adj_mode) =3D=3D MODE_OK;
> > >   }
> > Why do you call mode_valid in mode_fixup?
>=20
> I'm calling the shared function you asked me to introduce
> (inno_hdmi_connector_mode_valid !=3D inno_mode_valid)

That's the mode_fixup part that I'm focused on :)

mode_fixup is the legacy function to adjust the mode to the controller
capabilities. It's optional, and you're not adjusting anything here,
just testing the same thing mode_valid did.

mode_valid has been superseeded by atomic_check anyway, so just drop
mode_valid and use your function in atomic_check like we discussed.

Maxime

--wxvrbsdqrjkzgivk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXrpoAAKCRDj7w1vZxhR
xZxNAPwKERlFJ+mgmKSaqwFc1EXHo2YbCDrDOrnV9/Dj2O0BVAEAnVL1HPgSyUs2
8k+xVUz27MAtLjLyuaEyMBgVvfYiHg4=
=w8cg
-----END PGP SIGNATURE-----

--wxvrbsdqrjkzgivk--


--===============6689270726879799218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6689270726879799218==--

