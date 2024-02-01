Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04574C4828F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 16:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wq55DPa4oSSsTg3MKdTb9fHvj+FZbYkHtJDv1SeBLFc=; b=N6y75wJ29JU22uNpS7+K/xHZ88
	pV0XeOPwhMqLCzcfpNzbH1us7QzULMDUWOfykTmx0Pr5IzMouO9y3PiKMMUcGfuXeUmDyiN5Bbodd
	cZT4Ao+6AM+S80MIL8IwB3bleFkphaC33PQNkfSOVn+7st4XFOgq8dAdxmwyNcGcsvXaL4/arRLHh
	8OOEh4MZZcDPDjnZRSK5MBFiEE/hx++QfPwAaQx/osce6iQI2ku4cZqE89ACcCZjQPvKF4XcxQv8K
	Bf8GNDROdKPcuDk4RDklMnyfkVkxJhx9e+CJNSneipmfwPKdDMZy41/8RwDCgLNFNB6ts3ThV3G0U
	NOhF0yXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVaGT-00000008h5R-3Y42;
	Thu, 01 Feb 2024 16:50:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVaGR-00000008h40-0I8X;
	Thu, 01 Feb 2024 16:50:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 811D961F9D;
	Thu,  1 Feb 2024 16:50:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 896B7C433C7;
	Thu,  1 Feb 2024 16:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706806209;
	bh=tOF6dvF9mpcgfY2pG3oXqVYb2x1RXJ2H4D5i85BCkio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TMOPg8h30sL7VC9mMIdrMyHzRyRdT8UU6z6NrwEbuK5YEouKuiljSFCz1wRGX7Yx7
	 lzomvGIaR3jn3rk+KkYxben1YOlz3kjwyWpHQgBEjVxrb6vhRE0EUlosw+Qrv93ght
	 hBhPyiknjoBmQfFwXvwLinPwYlr3CWM4/hIrmYRcriLgWxqyeppuEAZUH20P5MZbOz
	 G1XV2kRQRAtMJ5w4IXlJpXPKK1i9LvFWY+jgRB+LLevoAO6Uy1GYbWVTh4HoqHIOOJ
	 SipgFjpQILc1j3yVNyg4yAEnh+NsXMTK5w0A2rNaT7i542TMV0ptN6rRfvJhwaS0p0
	 Pu9a6WJPGqblA==
Date: Thu, 1 Feb 2024 17:50:07 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: Re: [PATCH v5 15/44] drm/connector: hdmi: Compute bpc and
 format automatically
Message-ID: <vydlftxen23kd2odwegxbtpaz73sy2lgpv7nlynfjr3p2xvc2b@7lkdkaw3gp5q>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-15-6538e19d634d@kernel.org>
 <CAPY8ntBQ+qY9441-rMzq_JAoYAaY_r+E-ADv7Wry0tJNTzKpwg@mail.gmail.com>
 <jlkoofv7nszj2uqmo2672yo4wjd3yjqarge2l2hxofixcchu6a@j72pa4iybitd>
 <CAPY8ntAmXyKtebMeM7rLtgRR+QwL1H+UCwSO=bLBQN4TsgwsDg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPY8ntAmXyKtebMeM7rLtgRR+QwL1H+UCwSO=bLBQN4TsgwsDg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_085011_225594_D79AE0F2 
X-CRM114-Status: GOOD (  33.96  )
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
Content-Type: multipart/mixed; boundary="===============6048815399651449285=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6048815399651449285==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j5ozu7iwnqfrstbx"
Content-Disposition: inline


--j5ozu7iwnqfrstbx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 01, 2024 at 03:33:24PM +0000, Dave Stevenson wrote:
> Hi Maxime
>=20
> On Thu, 1 Feb 2024 at 12:51, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Thu, Dec 14, 2023 at 03:10:43PM +0000, Dave Stevenson wrote:
> > > > +static bool
> > > > +sink_supports_format_bpc(const struct drm_connector *connector,
> > > > +                        const struct drm_display_info *info,
> > > > +                        const struct drm_display_mode *mode,
> > > > +                        unsigned int format, unsigned int bpc)
> > > > +{
> > > > +       struct drm_device *dev =3D connector->dev;
> > > > +       u8 vic =3D drm_match_cea_mode(mode);
> > > > +
> > > > +       if (vic =3D=3D 1 && bpc !=3D 8) {
> > > > +               drm_dbg(dev, "VIC1 requires a bpc of 8, got %u\n", =
bpc);
> > > > +               return false;
> > > > +       }
> > > > +
> > > > +       if (!info->is_hdmi &&
> > > > +           (format !=3D HDMI_COLORSPACE_RGB || bpc !=3D 8)) {
> > > > +               drm_dbg(dev, "DVI Monitors require an RGB output at=
 8 bpc\n");
> > > > +               return false;
> > > > +       }
> > > > +
> > > > +       if (!(connector->hdmi.supported_formats & BIT(format))) {
> > > > +               drm_dbg(dev, "%s format unsupported by the connecto=
r.\n",
> > > > +                       drm_hdmi_connector_get_output_format_name(f=
ormat));
> > > > +               return false;
> > > > +       }
> > > > +
> > > > +       switch (format) {
> > > > +       case HDMI_COLORSPACE_RGB:
> > > > +               drm_dbg(dev, "RGB Format, checking the constraints.=
\n");
> > > > +
> > > > +               if (!(info->color_formats & DRM_COLOR_FORMAT_RGB444=
))
> > > > +                       return false;
> > >
> > > We've dropped this check from vc4 in our downstream kernel as it stops
> > > you using the prebaked EDIDs (eg drm.edid_firmware=3Dedid/1024x768.bi=
n),
> > > or any other EDID that is defined as an analog monitor.
> > > The EDID parsing bombs out at [1], so info->color_formats gets left a=
t 0.
> >
> > Right, but it only does so if the display isn't defined as a digital di=
splay...
> >
> > > RGB is mandatory for both DVI and HDMI, so rejecting it seems overly =
fussy.
> >
> > ... which is required for both DVI and HDMI.
> >
> > And sure enough, if we decode that EDID:
> >
> > edid-decode (hex):
> >
> > 00 ff ff ff ff ff ff 00 31 d8 00 00 00 00 00 00
> > 05 16 01 03 6d 23 1a 78 ea 5e c0 a4 59 4a 98 25
> > 20 50 54 00 08 00 61 40 01 01 01 01 01 01 01 01
> > 01 01 01 01 01 01 64 19 00 40 41 00 26 30 08 90
> > 36 00 63 0a 11 00 00 18 00 00 00 ff 00 4c 69 6e
> > 75 78 20 23 30 0a 20 20 20 20 00 00 00 fd 00 3b
> > 3d 2f 31 07 00 0a 20 20 20 20 20 20 00 00 00 fc
> > 00 4c 69 6e 75 78 20 58 47 41 0a 20 20 20 00 55
> >
> > ----------------
> >
> > Block 0, Base EDID:
> >   EDID Structure Version & Revision: 1.3
> >   Vendor & Product Identification:
> >     Manufacturer: LNX
> >     Model: 0
> >     Made in: week 5 of 2012
> >   Basic Display Parameters & Features:
> >     Analog display
> >     Signal Level Standard: 0.700 : 0.000 : 0.700 V p-p
> >     Blank level equals black level
> >     Sync: Separate Composite Serration
> >     Maximum image size: 35 cm x 26 cm
> >     Gamma: 2.20
> >     DPMS levels: Standby Suspend Off
> >     RGB color display
> >     First detailed timing is the preferred timing
> >   Color Characteristics:
> >     Red  : 0.6416, 0.3486
> >     Green: 0.2919, 0.5957
> >     Blue : 0.1474, 0.1250
> >     White: 0.3125, 0.3281
> >   Established Timings I & II:
> >     DMT 0x10:  1024x768    60.003840 Hz   4:3     48.363 kHz     65.000=
000 MHz
> >   Standard Timings:
> >     DMT 0x10:  1024x768    60.003840 Hz   4:3     48.363 kHz     65.000=
000 MHz
> >   Detailed Timing Descriptors:
> >     DTD 1:  1024x768    60.003840 Hz   4:3     48.363 kHz     65.000000=
 MHz (355 mm x 266 mm)
> >                  Hfront    8 Hsync 144 Hback  168 Hpol N
> >                  Vfront    3 Vsync   6 Vback   29 Vpol N
> >     Display Product Serial Number: 'Linux #0'
> >     Display Range Limits:
> >       Monitor ranges (GTF): 59-61 Hz V, 47-49 kHz H, max dotclock 70 MHz
> >     Display Product Name: 'Linux XGA'
> > Checksum: 0x55
> >
> > ----------------
> >
> > Warnings:
> >
> > Block 0, Base EDID:
> >   Detailed Timing Descriptor #1: DTD is similar but not identical to DM=
T 0x10.
> >
> > EDID conformity: PASS
> >
> > So, if anything, it's the EDID that needs to be updated, not the code t=
here.
>=20
> So are these EDIDs only valid for VGA outputs and another set needs to
> be added for HDMI monitors?
>=20
> Having drm.edid_firmware=3Dedid/1024x768.bin works on an HDMI connector
> prior to this patch, so presumably drm_edid_loader needs to
> automatically switch between the existing (analog) and new (digital)
> EDIDs based on the connector type? Or are you requiring users to
> change the strings they use?

We've discussed that on IRC today. I'm not sure there was a conclusion
other than "well this doesn't seem right". I think we should at least
provide different EDIDs depending on the connector type indeed, but
there was also a few discussions that arose:

  - Is it useful to have embedded EDIDs in the kernel at all, and could
    we just get rid of it?

  - Should we expose those EDIDs to userspace, and what happens to the
    compositor when we do?

  - The current way to generate those EDIDs isn't... optimal? Should we
    get rid of that as well?

Anyway, all of those issues have been here for a while so I don't really
expect this series to fix that.

Maxime

--j5ozu7iwnqfrstbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZbvLvgAKCRDj7w1vZxhR
xSCOAP96iK948t4DHQtM0RjNfYbNEnT9IPn1B8+p9FAgrkYKMgD7BNjR2zGVhdBX
JcgARDy3OnatYKDdLcS+h0fMuxIGWgs=
=9IpS
-----END PGP SIGNATURE-----

--j5ozu7iwnqfrstbx--


--===============6048815399651449285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6048815399651449285==--

