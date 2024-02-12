Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 244CCC4829B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 10:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5u9JwyO6nlzGx+MKcz/1FXtc0oZzunDTW29ms8rFzeE=; b=NhYYFJ8VVe6bdatmHBrXOldErB
	RHYOvYFU7lEcUiOmakSI2arNZnN+dzx+B97dUM/NKY5zNK9/zS3vWrHna/fSMNLnUxHkm3z+yIJ3o
	zE/T93u+ugcemQC2oHMqVmYBOqs3O5zSGZyAWoLnZnoI11k+J1Nl/x3K3pHIL6H22hkx3qUnaNQr2
	+TxCvEUuwUUSBJptISUT+CufZCnGdqBgI2syRiYckxDLyVKRNZilJBDO/5taUYGY+42drEtCY8LJf
	yXzJAY6LulwC+XLbANolzz9n8VRzxbMQrBEiJt5pQ5fQvzCA10UFCxcljCP2Zpad5PnTBMVY2i1hP
	CNxjnKdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZT7k-00000004oDG-1rt9;
	Mon, 12 Feb 2024 10:01:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZT7g-00000004oBu-2DLi;
	Mon, 12 Feb 2024 10:01:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 886C5CE0FC8;
	Mon, 12 Feb 2024 10:01:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76253C433F1;
	Mon, 12 Feb 2024 10:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707732069;
	bh=ZV4pECgPYcbYpTFYE/HHDZCGaJXwRLM519uxPcGBl0I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vRdcfGdNCOnmnB8/dcuM1aTGBkhnZCU+s8sdi2HDhKo1bAM9sweGpXpaiAluc56DU
	 6M+uTI+N44afTG92KjSZS06Cfpa3OKXGNfTgQHDL2jFuLI3Rng7DXh+ZJI3cWNlsJS
	 BrKiT9j7VQH3iQOQrybjasLvm2WVuEaU0eflNduPT/sjhtKqTrydzL3flueiwkwNlu
	 f/aJmEAyfDnbIhycldNE2lW71I6zwId6r2BydT7BXebgkkBpsQreTcUL1iJlcsiVx/
	 1f3nRZU3Jb4tGQY9zd4Z/FxH4FKFD7uYhtz7fG5gF60eK1onGRgp31xxYoRYOP9X6S
	 MgypK9eU7VjMA==
Date: Mon, 12 Feb 2024 11:01:07 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add
 Broadcast RGB property
Message-ID: <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
MIME-Version: 1.0
In-Reply-To: <20240209203435.GB996172@toolbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_020112_949084_D2C3E8EF 
X-CRM114-Status: GOOD (  45.94  )
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
Content-Type: multipart/mixed; boundary="===============5747061070748320498=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5747061070748320498==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jve3saefgwx6cqdm"
Content-Disposition: inline


--jve3saefgwx6cqdm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wrote:
> On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wrote:
> > On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wrote:
> > > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wrote:
> > > > > > Hi,
> > > > > >=20
> > > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> > > > > > > > >  /**
> > > > > > > > >   * DOC: HDMI connector properties
> > > > > > > > >   *
> > > > > > > > > + * Broadcast RGB
> > > > > > > > > + *      Indicates the RGB Quantization Range (Full vs Li=
mited) used.
> > > > > > > > > + *      Infoframes will be generated according to that v=
alue.
> > > > > > > > > + *
> > > > > > > > > + *      The value of this property can be one of the fol=
lowing:
> > > > > > > > > + *
> > > > > > > > > + *      Automatic:
> > > > > > > > > + *              RGB Range is selected automatically base=
d on the mode
> > > > > > > > > + *              according to the HDMI specifications.
> > > > > > > > > + *
> > > > > > > > > + *      Full:
> > > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > > + *
> > > > > > > > > + *      Limited 16:235:
> > > > > > > > > + *              Limited RGB Range is forced. Unlike the =
name suggests,
> > > > > > > > > + *              this works for any number of bits-per-co=
mponent.
> > > > > > > > > + *
> > > > > > > > > + *      Drivers can set up this property by calling
> > > > > > > > > + *      drm_connector_attach_broadcast_rgb_property().
> > > > > > > > > + *
> > > > > > > >=20
> > > > > > > > This is a good time to document this in more detail. There =
might be two
> > > > > > > > different things being affected:
> > > > > > > >=20
> > > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > > 2. The color pipeline processing
> > > > > > > >=20
> > > > > > > > All values of Broadcast RGB always affect the color pipelin=
e processing
> > > > > > > > such that a full-range input to the CRTC is converted to ei=
ther full- or
> > > > > > > > limited-range, depending on what the monitor is supposed to=
 accept.
> > > > > > > >=20
> > > > > > > > When automatic is selected, does that mean that there is no=
 signalling,
> > > > > > > > or that the signalling matches what the monitor is supposed=
 to accept
> > > > > > > > according to the spec? Also, is this really HDMI specific?
> > > > > > > >=20
> > > > > > > > When full or limited is selected and the monitor doesn't su=
pport the
> > > > > > > > signalling, what happens?
> > > > > > >=20
> > > > > > > Forgot to mention: user-space still has no control over RGB v=
s YCbCr on
> > > > > > > the cable, so is this only affecting RGB? If not, how does it=
 affect
> > > > > > > YCbCr?
> > > > > >=20
> > > > > > So I dug a bit into both the i915 and vc4 drivers, and it looks=
 like if
> > > > > > we're using a YCbCr format, i915 will always use a limited rang=
e while
> > > > > > vc4 will follow the value of the property.
> > > > >=20
> > > > > The property is literally called "Broadcast *RGB*".
> > > > > That should explain why it's only affecting RGB.
> > > >=20
> > > > Right. And the limited range option is called "Limited 16:235" desp=
ite
> > > > being usable on bpc > 8 bits. Naming errors occurs, and history hap=
pens
> > > > to make names inconsistent too, that's fine and not an argument in
> > > > itself.
> > > >=20
> > > > > Full range YCbCr is a much rarer beast so we've never bothered
> > > > > to enable it.
> > > >=20
> > > > vc4 supports it.
> > >=20
> > > Someone implemented it incorrectly then.
> >=20
> > Incorrectly according to what documentation / specification? I'm sorry,
> > but I find it super ironic that i915 gets to do its own thing, not
> > document any of it, and when people try to clean things up they get told
> > that we got it all wrong.
>=20
> FWIW, this was an i915 property and if another driver uses the same
> property name it must have the same behavior. Yes, it isn't standardized
> and yes, it's not documented (hence this effort here) but it's still on
> vc4 to make the property compatible.

How is it not compatible? It's a superset of what i915 provides, but
it's strictly compatible with it.

I would argue that i915 is the broken one since userspace could force a
full range output, but since the driver takes the YUV vs RGB decision
itself and only supports limited range for YUV, the driver would
effectively ignore that user-space property, without the user-space
being able to tell it was ignored in the first place.

> Trying to make the property handle YCbCr is very much in the "let's try
> to fix the property" territory that I want to avoid, so I'm in favor of
> adjusting vc4.

Breaking the ABI in the process. For something that is explicitly
supported by the spec, the driver, and the hardware. On a property that
never said it wasn't meant to be used that way, and with semantics based
on a driver that never provided a way to check those restrictions in the
first place.

And it's not like i915 is going to use that code anyway.

Maxime

--jve3saefgwx6cqdm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZcnsYgAKCRDj7w1vZxhR
xbXvAQCwcVIa0ZIBiFB60+Djxs5Q9r6KT+VmRcFEid+4vu5kmAD/SoSSxALs4Fec
o0UKGT8WuF+A9QWBqCkljcQ1i+X1aAA=
=q4Ag
-----END PGP SIGNATURE-----

--jve3saefgwx6cqdm--


--===============5747061070748320498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5747061070748320498==--

