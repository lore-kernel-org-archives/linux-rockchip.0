Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD55C4829C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 16:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LZiJRimMFwatoBIgd6xotZnAyUirY2TvoZe7Jw1nHW0=; b=R5qfliiDHY3wlOGo3vjJoRblZY
	8kX0sA7+JG1NmSV4PgSY1MNbwd7/nyZt6X0uszQe9bFa/l+HIYbTcqbtNb0Qkx8ODyiKNRQrHuHbc
	vhk3H63+JbiDg6VjoX/MRgsYVBx07J3hEbESQaBjErMcgcL3DFgXkLc59WqmYl8/JuD74wYc2vYjK
	4/3sFkAQbBH3/yRK7vtgcBkVmDmfdpJQ3g/CIXJbR7XkbzmTuZHSb6B5ncZDJhI1klA9++q687syQ
	cNUCzr9TmYCRrCNo9EUPxBw2e8JGY5PbXmhUqTk5DaBIAUVADEiNwOtvRPBZYoNzVclS9lcph70Xg
	UetMxvQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZZ5-00000006FkZ-1Qw2;
	Mon, 12 Feb 2024 16:53:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZZ1-00000006FjE-3Xvm;
	Mon, 12 Feb 2024 16:53:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 129E260BAA;
	Mon, 12 Feb 2024 16:53:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FD97C433C7;
	Mon, 12 Feb 2024 16:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707756830;
	bh=YAw/HGS+6u4ljzekvMwi8YRyGpsKjAUvgKgNZYuRvSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uit7UK198EkZTPvb+3U02T6xybm5VOV43HIFuxsM2PEuVqkaqqlrN088Z5JxoUIOb
	 YPYvUWe3WP5SoozSgOXWjbp7riutRlykWkelrVM9pw1cr3A4I6oSANRnD+iw1DK+Xd
	 XfT29slnGEDRvr6k2LK6rhspEZ1CFlg8p5XMsrWoFOastw2sbk2S5cIcl1W05gUWeM
	 uVdOJC5Ckz65xWaLAfcWPaQ2Ep29orO0i+SeH4H3Yd6P6a7EmUpsH/Nv52Mr3EcuUh
	 Rb4VlfAfi7TuK3IHvBLSsdUQBUCuqWKNMe5N/SSQfariofifVFsQaaiUZTRMfYUSJy
	 NHhsrmEe0AIIg==
Date: Mon, 12 Feb 2024 17:53:48 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Sebastian Wick <sebastian.wick@redhat.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add
 Broadcast RGB property
Message-ID: <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
References: <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
MIME-Version: 1.0
In-Reply-To: <Zco-DQaXqae7B1jt@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_085352_015890_0BD9CC8E 
X-CRM114-Status: GOOD (  45.19  )
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
Content-Type: multipart/mixed; boundary="===============4879982349394280687=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4879982349394280687==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k5bjhx7cwjpixgbt"
Content-Disposition: inline


--k5bjhx7cwjpixgbt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 05:49:33PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Feb 12, 2024 at 11:01:07AM +0100, Maxime Ripard wrote:
> > On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wrote:
> > > On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wrote:
> > > > On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wrote:
> > > > > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=E4 wro=
te:
> > > > > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wrote:
> > > > > > > > Hi,
> > > > > > > >=20
> > > > > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wr=
ote:
> > > > > > > > > > >  /**
> > > > > > > > > > >   * DOC: HDMI connector properties
> > > > > > > > > > >   *
> > > > > > > > > > > + * Broadcast RGB
> > > > > > > > > > > + *      Indicates the RGB Quantization Range (Full v=
s Limited) used.
> > > > > > > > > > > + *      Infoframes will be generated according to th=
at value.
> > > > > > > > > > > + *
> > > > > > > > > > > + *      The value of this property can be one of the=
 following:
> > > > > > > > > > > + *
> > > > > > > > > > > + *      Automatic:
> > > > > > > > > > > + *              RGB Range is selected automatically =
based on the mode
> > > > > > > > > > > + *              according to the HDMI specifications.
> > > > > > > > > > > + *
> > > > > > > > > > > + *      Full:
> > > > > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > > > > + *
> > > > > > > > > > > + *      Limited 16:235:
> > > > > > > > > > > + *              Limited RGB Range is forced. Unlike =
the name suggests,
> > > > > > > > > > > + *              this works for any number of bits-pe=
r-component.
> > > > > > > > > > > + *
> > > > > > > > > > > + *      Drivers can set up this property by calling
> > > > > > > > > > > + *      drm_connector_attach_broadcast_rgb_property(=
).
> > > > > > > > > > > + *
> > > > > > > > > >=20
> > > > > > > > > > This is a good time to document this in more detail. Th=
ere might be two
> > > > > > > > > > different things being affected:
> > > > > > > > > >=20
> > > > > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > > > > 2. The color pipeline processing
> > > > > > > > > >=20
> > > > > > > > > > All values of Broadcast RGB always affect the color pip=
eline processing
> > > > > > > > > > such that a full-range input to the CRTC is converted t=
o either full- or
> > > > > > > > > > limited-range, depending on what the monitor is suppose=
d to accept.
> > > > > > > > > >=20
> > > > > > > > > > When automatic is selected, does that mean that there i=
s no signalling,
> > > > > > > > > > or that the signalling matches what the monitor is supp=
osed to accept
> > > > > > > > > > according to the spec? Also, is this really HDMI specif=
ic?
> > > > > > > > > >=20
> > > > > > > > > > When full or limited is selected and the monitor doesn'=
t support the
> > > > > > > > > > signalling, what happens?
> > > > > > > > >=20
> > > > > > > > > Forgot to mention: user-space still has no control over R=
GB vs YCbCr on
> > > > > > > > > the cable, so is this only affecting RGB? If not, how doe=
s it affect
> > > > > > > > > YCbCr?
> > > > > > > >=20
> > > > > > > > So I dug a bit into both the i915 and vc4 drivers, and it l=
ooks like if
> > > > > > > > we're using a YCbCr format, i915 will always use a limited =
range while
> > > > > > > > vc4 will follow the value of the property.
> > > > > > >=20
> > > > > > > The property is literally called "Broadcast *RGB*".
> > > > > > > That should explain why it's only affecting RGB.
> > > > > >=20
> > > > > > Right. And the limited range option is called "Limited 16:235" =
despite
> > > > > > being usable on bpc > 8 bits. Naming errors occurs, and history=
 happens
> > > > > > to make names inconsistent too, that's fine and not an argument=
 in
> > > > > > itself.
> > > > > >=20
> > > > > > > Full range YCbCr is a much rarer beast so we've never bothered
> > > > > > > to enable it.
> > > > > >=20
> > > > > > vc4 supports it.
> > > > >=20
> > > > > Someone implemented it incorrectly then.
> > > >=20
> > > > Incorrectly according to what documentation / specification? I'm so=
rry,
> > > > but I find it super ironic that i915 gets to do its own thing, not
> > > > document any of it, and when people try to clean things up they get=
 told
> > > > that we got it all wrong.
> > >=20
> > > FWIW, this was an i915 property and if another driver uses the same
> > > property name it must have the same behavior. Yes, it isn't standardi=
zed
> > > and yes, it's not documented (hence this effort here) but it's still =
on
> > > vc4 to make the property compatible.
> >=20
> > How is it not compatible? It's a superset of what i915 provides, but
> > it's strictly compatible with it.
>=20
> No it is not.

The property is compatible with i915 interpretation of it, whether you
like it or not. And that's what Sebastian was referring to.

> Eg. what happens if you set the thing to full range for RGB (which you
> must on many broken monitors), and then the kernel automagically
> switches to YCbCr (for whatever reason) but the monitor doesn't
> support full range YCbCr? Answer: you get crap output.

And that part is just moving goalposts.

Maxime

--k5bjhx7cwjpixgbt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZcpNGgAKCRDj7w1vZxhR
xfarAQD/MUJVYddtEHcYiH30WG61KUe9uuF7BBzhV9p90mi/1wEAzvvBB5NnbxJG
soV3IKAH1pMyF7MGBPFUrFyn5MdJIg8=
=tvUE
-----END PGP SIGNATURE-----

--k5bjhx7cwjpixgbt--


--===============4879982349394280687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4879982349394280687==--

