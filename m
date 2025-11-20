Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14047CF8875
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 15:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1SwMSdaXPvR9kKBXiOnNuK7gRWxGA0lNadlTne86uqg=; b=EnnAZsfogHHYi6Cj//favR2BRd
	ayTuSAZu3IwAZX7TnMyrnzZtbe+rL0zqkJWNNd2QedbHTrPFm3qee1/3NWA55oJqUiVgshDKtUyjO
	mAqf84//IyaH9+uGo9LJLgNXJ1HMGhPAlYkSyCAFNasddOo6R5beLfk3C7Rmi67mHA1Q2ReCyzlSL
	lWeha1ME819+wyy0VYER50XDOPT2v3rvbrQOay5r6uDmmbNH8feV0K06Qib/pQp25RradPfTr+Iab
	hHNIjg/E8EdkkBx0giBnXL31MBV2LbEo5o1s35M0sIPfjUYEtXbGxICIiUU+fGapcLKV5mYlhinXY
	miAFG/sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6zR-00000006xCO-0RRm;
	Thu, 20 Nov 2025 15:54:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6zO-00000006xBh-46uT;
	Thu, 20 Nov 2025 15:54:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8C5EC442C6;
	Thu, 20 Nov 2025 15:54:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCA87C4CEF1;
	Thu, 20 Nov 2025 15:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763654069;
	bh=03wWAsaF2p66SA+8tzLL46Iahcv1zn29Tz5R4bnU5cU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jlbg60rDJnba7Ff0KTxPv2DPwljI87BGbXxW78s1405lTXn1j/RsPhWbbr3YQNPUM
	 ne1J21WQeFM31F374+o9av6JukMFAPr4xtj2n5/T5JtJWmq8KHlzUGiiya3MzHazti
	 iAY54xqr3CPTsEwXfAEhQrPSjppkSdk3h5LhBGb69UC2lkBlCCm0FHb2v3IZimqg2e
	 MesnRnvc6o8sfLCXADjE94dmCljtYeTBr9VDxqt9ZYAS/9Z1EplMHopGIyDEabbIpM
	 6uVOYGt2uBLsfIGU3jyEbmUg0ZipPBbQLIdkYkaKmdP2bvpLJZQaz38jzzF7vTYiWE
	 x17Q1RmsQ5SKQ==
Date: Thu, 20 Nov 2025 16:54:25 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, 
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, kernel@collabora.com, 
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 07/10] drm/display: hdmi-state-helper: Act on color
 format DRM property
Message-ID: <nbrdnftrsybpowsu2f6me3jumdeodg45x4quouzlzd5jo7xrux@4pny3aiverzn>
References: <20251117-color-format-v4-0-0ded72bd1b00@collabora.com>
 <20251117-color-format-v4-7-0ded72bd1b00@collabora.com>
 <4wt5dbvseauo2bvi66ohtk445zsfjtpjwgvochwwlyk4uugcmy@5ubwtkxyy2ax>
 <7179523.lOV4Wx5bFT@workhorse>
MIME-Version: 1.0
In-Reply-To: <7179523.lOV4Wx5bFT@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_075431_079932_C7D1F342 
X-CRM114-Status: GOOD (  27.78  )
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
Content-Type: multipart/mixed; boundary="===============4037125358344143260=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4037125358344143260==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="4alnfwchsomlml4z"
Content-Disposition: inline


--4alnfwchsomlml4z
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 07/10] drm/display: hdmi-state-helper: Act on color
 format DRM property
MIME-Version: 1.0

On Wed, Nov 19, 2025 at 01:41:18PM +0100, Nicolas Frattaroli wrote:
> On Wednesday, 19 November 2025 10:09:12 Central European Standard Time Ma=
xime Ripard wrote:
> > Hi,
> >=20
> > On Mon, Nov 17, 2025 at 08:11:51PM +0100, Nicolas Frattaroli wrote:
> > > With the introduction of the "color format" DRM property, which allows
> > > userspace to request a specific color format, the HDMI state helper
> > > should implement this.
> > >=20
> > > Implement it by checking whether the property is set and set to
> > > something other than auto. If so, pass the requested color format, and
> > > otherwise set RGB.
> > >=20
> > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > > ---
> > >  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/driver=
s/gpu/drm/display/drm_hdmi_state_helper.c
> > > index a561f124be99..add0d51fce33 100644
> > > --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > > +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > > @@ -650,9 +650,15 @@ hdmi_compute_config(const struct drm_connector *=
connector,
> > >  				       conn_state->max_bpc,
> > >  				       8, connector->max_bpc);
> > >  	int ret;
> > > +	enum hdmi_colorspace hdmi_colorspace;
> > > +
> > > +	if (conn_state->color_format && conn_state->color_format !=3D DRM_C=
OLOR_FORMAT_AUTO)
> > > +		hdmi_colorspace =3D color_format_to_hdmi_colorspace(conn_state->co=
lor_format);
> > > +	else
> > > +		hdmi_colorspace =3D HDMI_COLORSPACE_RGB;
> > > =20
> > >  	ret =3D hdmi_compute_format_bpc(connector, conn_state, mode, max_bp=
c,
> > > -				      HDMI_COLORSPACE_RGB);
> > > +				      hdmi_colorspace);
> >=20
> > I don't think we want the fallback to yuv420 for anything but auto, so
>=20
> Okay. Changing all the non-hdmi-state-helper drivers (amdgpu, i915)
> to do this as well would require some more work however, especially
> in the case of amdgpu where the code flow is not always obvious.

Yeah, I think we want to be consistent here, the whole point of the HDMI
state helpers was to be consistently consistent with Intel's behaviour
anyway :)

> > I'd rather have something like
> >=20
> > if (conn_state->color_format !=3D DRM_COLOR_FORMAT_AUTO)
> >    return hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc,
> >                                   color_format_to_hdmi_colorspace(conn_=
state->color_format))
> >=20
> > We'll also need unit tests.
>=20
> Sure, am I guessing correctly that they'd go in
> drm_hdmi_state_helper_test.c?

Yes

Maxime

--4alnfwchsomlml4z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaR85rAAKCRAnX84Zoj2+
dv6UAX9b0ty0vhrPxBcqaoWJddkNvIG7owUS7e5lljmKMtX9SeDNbFLRDL44gdvr
YZMxKF4Bf08i85DvKTyHG/luF+TnRXuESfkJdU9q1iykKJz21hcyXghzIupe9hKW
0WFpzuh7CA==
=NkNa
-----END PGP SIGNATURE-----

--4alnfwchsomlml4z--


--===============4037125358344143260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4037125358344143260==--

