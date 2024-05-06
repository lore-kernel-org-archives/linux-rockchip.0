Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F11F9C25B5C
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 07:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZsDkVPKKSGBKvi2V+oypVIAV1EEH+vc6K0Fz2FYTB/I=; b=FFskyenuwPbS5Ef99O/4Ksxx4M
	c88bCzbm9jzuibFP7gjACdDDHUY9N7Tpk6N8Kq33SpU18zcid4cwd+rSVRagV7M+6nPRYgXXrhgvG
	w1Qa896Y/ghATCvx0szqAOrsWei5+LqrML4Lj29AgTTktFON0tBarSxdSW5Rr43BCkug/IReCDq/g
	qvS7hrv/dY5ZXunqwztpDtli2Wv8zixf9j+Zrj9sgLwJPvNICNMCCzcSbQwszhkGI0lnp8eHFpweC
	3MAShZVjhxOeHdDQ/yRcFNIinpboG5whSwavEPDjSGFfcBPX2v1/ReGkZt/lPllR742f/MKB28zOX
	+jelstQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3t6q-00000006Vfj-2wJO;
	Mon, 06 May 2024 07:50:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3t6m-00000006VeR-2DMz;
	Mon, 06 May 2024 07:50:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7643961085;
	Mon,  6 May 2024 07:49:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2080C116B1;
	Mon,  6 May 2024 07:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714981799;
	bh=PScBbjAnxeZJlVZobb9RkhFjTBeBleYHRdB7+WbwtCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=daqEwQT72wzzVhhxaadbP0J7TfhVeGtkoDLVZBhP67FR+IrIX9JHHo5CMTt+aeT2o
	 5fctJhDPhApWE6WV6FdDfuDqZFLm63Lonzwveroz2A3WUVGRjCWfv1GO6DdiUYCSbs
	 iWg8thDix9w6nDLLjKVHPRm89YVBA4CgH0uwE1o98twpcLoR4sDWHKbJwpSFoGTtmq
	 GoO1+LeN1pys+rFLW30DL8rfeo7kPYlTewsrNBRffJy23vjB7xLjIes4dwzyF78zzR
	 gP65FY8VYbf5uWYIqxCQemcDrv9wvkDIWZa8F0plLIKNXcPQoze93iXeAwJoUTo+m7
	 u0qAt/aGZx7Og==
Date: Mon, 6 May 2024 09:49:56 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v12 27/28] drm/rockchip: inno_hdmi: Switch to HDMI
 connector
Message-ID: <20240506-elated-cheetah-of-awe-bd10cb@houat>
References: <20240423-kms-hdmi-connector-state-v12-0-3338e4c0b189@kernel.org>
 <20240423-kms-hdmi-connector-state-v12-27-3338e4c0b189@kernel.org>
 <bab90a27-b742-4587-aec6-e4e1fdf2d186@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <bab90a27-b742-4587-aec6-e4e1fdf2d186@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_005000_696649_33BDE15E 
X-CRM114-Status: GOOD (  19.97  )
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
Content-Type: multipart/mixed; boundary="===============7565908544807900757=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7565908544807900757==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="5r5gd5hzylmqbla5"
Content-Disposition: inline


--5r5gd5hzylmqbla5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Apr 27, 2024 at 06:12:26PM GMT, Andy Yan wrote:
> On 4/23/24 18:45, Maxime Ripard wrote:
> > The new HDMI connector infrastructure allows to remove some boilerplate,
> > especially to generate infoframes. Let's switch to it.
> >=20
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >   drivers/gpu/drm/rockchip/Kconfig     |   1 +
> >   drivers/gpu/drm/rockchip/inno_hdmi.c | 143 +++++++++++++-------------=
---------
> >   2 files changed, 53 insertions(+), 91 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchi=
p/Kconfig
> > index 4c7072e6e34e..e2ec20c2e2eb 100644
> > --- a/drivers/gpu/drm/rockchip/Kconfig
> > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > @@ -72,10 +72,11 @@ config ROCKCHIP_DW_MIPI_DSI
> >   	  enable MIPI DSI on RK3288 or RK3399 based SoC, you should
> >   	  select this option.
> >   config ROCKCHIP_INNO_HDMI
> >   	bool "Rockchip specific extensions for Innosilicon HDMI"
> > +	depends on
>=20
> Is this supposed to be  DRM_DISPLAY_HDMI_STATE_HELPER whith you introduce=
d in PATCH 04/28?
> I couldn't find any place where  DRM_HDMI_STATE_HELPER is defined.

Yes, it was a typo indeed. I've fixed it in the next version.

Thanks!
Maxime

--5r5gd5hzylmqbla5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZjiLowAKCRAnX84Zoj2+
dhERAX4hDKKQK0zUSiy8s+7HxdEWgMiPtGfXL1zjlOPBVdxa0oBEfrdf0wSgA6ZC
GvcBlYYBfiq7TVSrJMvpZnnDzUsshI7PPYS7GaVjK5IcPqxFB7jgVDcNihybvsg/
4zQYJv8UYA==
=CFE1
-----END PGP SIGNATURE-----

--5r5gd5hzylmqbla5--


--===============7565908544807900757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7565908544807900757==--

