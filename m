Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D98E9C48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 17:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vo6jn6if3fqWGNaSxVmaW47MoZ93UVuPtd3i9VjpFpE=; b=qWKn6AUnFh1HD6M4WuwxbfrRJQ
	NVFtHwUJjPJiXRm3/eL8Ogjim95okIrw/6iLDol1DT7uoMOY0Sr1CJpVkxzXFhFYCk6xH/pUdFQE6
	52YEaChutnZLYBqmVwL31piVbI9TgkTwqdNyS4WSqrYIEpFpUwf0i9fH/doN/jICHlPkZMlJ4AJ0y
	agl3/gQHaOKht3ohpm0o7ancDvRK2E3Kvw1B6oEbav1kvFS984+PciEM0L8CwKskf1aVUo/g39wNs
	B0OcNaM+MHfP3ATgFQ5aVjLkhzbzUirxXcnGPkJ3LN5d9OlwzuUFpynr2KyhuOhF9Sd7DSeda35uj
	K7ka1VOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZfR-00000006I0S-0Bko;
	Mon, 12 Feb 2024 17:00:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZfN-00000006Hy8-33KB;
	Mon, 12 Feb 2024 17:00:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A1B4261011;
	Mon, 12 Feb 2024 17:00:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CECCC433C7;
	Mon, 12 Feb 2024 17:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707757224;
	bh=23GlKxi6SKbpymZhKOpPvd4nx5AbJXoryqiHUnQ4NF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NAfT1NMF+9MYK69hpLPvnDCPl9nEvJg85QJOzhzex5/YilIHgA2eKwGh6mJOae6qx
	 0eOYGUXEVM9jNZG+Za9BoqHaQG357dUXfo1y0DfcGq/ywouu+DppEThV8M6I0iBV3B
	 YHPTJiUvBY6RBi6bQkDiyAp/tKT4wPj6bd67HuY/cvi9GRt8uNujpqm02lBztqyphW
	 oOGdyohruG0O3gwqjUKl7iztdlh7JMc9W8ORxu/2Y6u+qYQHhQIT3rwNqlBM1hVG/L
	 o8mE1+5v0tjxqZYpecpv+jaPxRmRuunEom3+Y5tOTsGSBfQKBo44Ln26d3RFMGjMAE
	 ARn9QETaWYJig==
Date: Mon, 12 Feb 2024 18:00:21 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	Sebastian Wick <sebastian.wick@redhat.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <tb6yqictmlpwokeihyyh4wxabrp6xs3zgvfpxjeulkmoxloysa@caqtn5fyc7cs>
References: <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
 <0b3e31e6-34ae-46e3-a43d-bc4895542d8a@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <0b3e31e6-34ae-46e3-a43d-bc4895542d8a@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_090025_882560_8F3BE307 
X-CRM114-Status: GOOD (  41.13  )
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
Content-Type: multipart/mixed; boundary="===============6800277319370308644=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6800277319370308644==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rgxaisih3zxhrtkb"
Content-Disposition: inline


--rgxaisih3zxhrtkb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 05:39:03PM +0100, Hans Verkuil wrote:
> On 12/02/2024 16:49, Ville Syrj=E4l=E4 wrote:
> > On Mon, Feb 12, 2024 at 11:01:07AM +0100, Maxime Ripard wrote:
> >> On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wrote:
> >>> On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wrote:
> >>>> On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4l=E4 wrote:
> >>>>> On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wrote:
> >>>>>> On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=E4 wrote:
> >>>>>>> On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wrote:
> >>>>>>>> Hi,
> >>>>>>>>
> >>>>>>>> On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> >>>>>>>>>>>  /**
> >>>>>>>>>>>   * DOC: HDMI connector properties
> >>>>>>>>>>>   *
> >>>>>>>>>>> + * Broadcast RGB
> >>>>>>>>>>> + *      Indicates the RGB Quantization Range (Full vs Limite=
d) used.
> >>>>>>>>>>> + *      Infoframes will be generated according to that value.
> >>>>>>>>>>> + *
> >>>>>>>>>>> + *      The value of this property can be one of the followi=
ng:
> >>>>>>>>>>> + *
> >>>>>>>>>>> + *      Automatic:
> >>>>>>>>>>> + *              RGB Range is selected automatically based on=
 the mode
> >>>>>>>>>>> + *              according to the HDMI specifications.
> >>>>>>>>>>> + *
> >>>>>>>>>>> + *      Full:
> >>>>>>>>>>> + *              Full RGB Range is forced.
> >>>>>>>>>>> + *
> >>>>>>>>>>> + *      Limited 16:235:
> >>>>>>>>>>> + *              Limited RGB Range is forced. Unlike the name=
 suggests,
> >>>>>>>>>>> + *              this works for any number of bits-per-compon=
ent.
> >>>>>>>>>>> + *
> >>>>>>>>>>> + *      Drivers can set up this property by calling
> >>>>>>>>>>> + *      drm_connector_attach_broadcast_rgb_property().
> >>>>>>>>>>> + *
> >>>>>>>>>>
> >>>>>>>>>> This is a good time to document this in more detail. There mig=
ht be two
> >>>>>>>>>> different things being affected:
> >>>>>>>>>>
> >>>>>>>>>> 1. The signalling (InfoFrame/SDP/...)
> >>>>>>>>>> 2. The color pipeline processing
> >>>>>>>>>>
> >>>>>>>>>> All values of Broadcast RGB always affect the color pipeline p=
rocessing
> >>>>>>>>>> such that a full-range input to the CRTC is converted to eithe=
r full- or
> >>>>>>>>>> limited-range, depending on what the monitor is supposed to ac=
cept.
> >>>>>>>>>>
> >>>>>>>>>> When automatic is selected, does that mean that there is no si=
gnalling,
> >>>>>>>>>> or that the signalling matches what the monitor is supposed to=
 accept
> >>>>>>>>>> according to the spec? Also, is this really HDMI specific?
> >>>>>>>>>>
> >>>>>>>>>> When full or limited is selected and the monitor doesn't suppo=
rt the
> >>>>>>>>>> signalling, what happens?
> >>>>>>>>>
> >>>>>>>>> Forgot to mention: user-space still has no control over RGB vs =
YCbCr on
> >>>>>>>>> the cable, so is this only affecting RGB? If not, how does it a=
ffect
> >>>>>>>>> YCbCr?
> >>>>>>>>
> >>>>>>>> So I dug a bit into both the i915 and vc4 drivers, and it looks =
like if
> >>>>>>>> we're using a YCbCr format, i915 will always use a limited range=
 while
> >>>>>>>> vc4 will follow the value of the property.
> >>>>>>>
> >>>>>>> The property is literally called "Broadcast *RGB*".
> >>>>>>> That should explain why it's only affecting RGB.
> >>>>>>
> >>>>>> Right. And the limited range option is called "Limited 16:235" des=
pite
> >>>>>> being usable on bpc > 8 bits. Naming errors occurs, and history ha=
ppens
> >>>>>> to make names inconsistent too, that's fine and not an argument in
> >>>>>> itself.
> >>>>>>
> >>>>>>> Full range YCbCr is a much rarer beast so we've never bothered
> >>>>>>> to enable it.
> >>>>>>
> >>>>>> vc4 supports it.
> >>>>>
> >>>>> Someone implemented it incorrectly then.
> >>>>
> >>>> Incorrectly according to what documentation / specification? I'm sor=
ry,
> >>>> but I find it super ironic that i915 gets to do its own thing, not
> >>>> document any of it, and when people try to clean things up they get =
told
> >>>> that we got it all wrong.
> >>>
> >>> FWIW, this was an i915 property and if another driver uses the same
> >>> property name it must have the same behavior. Yes, it isn't standardi=
zed
> >>> and yes, it's not documented (hence this effort here) but it's still =
on
> >>> vc4 to make the property compatible.
> >>
> >> How is it not compatible? It's a superset of what i915 provides, but
> >> it's strictly compatible with it.
> >=20
> > No it is not. Eg. what happens if you set the thing to full range for
> > RGB (which you must on many broken monitors), and then the kernel
> > automagically switches to YCbCr (for whatever reason) but the monitor
> > doesn't support full range YCbCr? Answer: you get crap output.
>=20
> The Broadcast RGB setting is really specific to RGB output. That's where
> you need it, since due to messed up standards in the past it is common to
> have to override this.
>=20
> For YCbCr it is not needed since it is always limited range in practice.
> If there is ever a need to support full range YCbCr, then a new "Broadcas=
t YCbCr"
> setting should be created.

We can't implement that, really. The userspace has no way to tell if RGB
or YUV is going to be used, so it wouldn't have an idea of what property
it needs to set.

Maxime

--rgxaisih3zxhrtkb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZcpOpQAKCRDj7w1vZxhR
xZRhAQDgzOvjHtEk87wVFNGYJRmh3AbgAKmVCVK3kTQhu5goyQEA0NrHid0moGG/
UQF/sR6UvF75IRKOMVufzYXvhc19ow8=
=0KDO
-----END PGP SIGNATURE-----

--rgxaisih3zxhrtkb--


--===============6800277319370308644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6800277319370308644==--

