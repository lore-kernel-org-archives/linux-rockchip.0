Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4052CC48291
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 15:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aBEP6fkfKjD9QrPz404ISiwxm8mqtH8k3zJL824NAmk=; b=PHPSYoxbFF53S8LnQi3BBOWbnk
	KMk345MnYC8zf8rZ/OAA34+pdMGY0Y17iYnOrdOhyHIggNf9jH2BuTlvAbBeOUm6Swwu8P6bcED0s
	Hli1I6KuNj1oP+VZLE7YaSMfHWxFXMDC88T+2toNinH84McAiBUNEUignRUqfnyoUc/sPiIgz9wnX
	1wbshWW57vyWUXqL/Aw5MAu1q9yQu+LfcOuTmxo2QGTAod+CyiOHFu/WdmElT3HZWrEoVv2VPZ03S
	vagVOVIHfReLvC3j/f/s1gLEuBnbPyQXtUOj6Kfyyu9Q5fTXWmirNypCkP7WQAC4uZhyb8k44n7rN
	MqRj7ciA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvxA-0000000C9VZ-32gZ;
	Fri, 02 Feb 2024 15:59:44 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvx6-0000000C9Ru-19vd;
	Fri, 02 Feb 2024 15:59:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2D879CE29C7;
	Fri,  2 Feb 2024 15:59:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF4B4C433F1;
	Fri,  2 Feb 2024 15:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706889576;
	bh=NeFFADYXbSKDmrGxCWJn52cB3UzPfQUhTWEHOnSrQZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HTDaz0RYlhUret3nyLqzvt6R8k6VsimfwHqO1yl3uS9kIgBDturoT/SzAOrkJmL0D
	 gby8DoOSYxkckwhawpNZGiKhJZAA/FYdwsgnDQqfvz3dMDCU/HO5WY8xz2FHu9Kr8L
	 daPvZmGo4bFFcHgIrkr2mcbFtdg9New0ZyzGfphKcNJO3eDiwJkoGdhHoc6hntlGeH
	 lerkU+3sB1Fb0yguYyLd2yDxiGP4NzJ3nhUkBgGk+/hfGOKRyXS6Ek/g7K6aW5+Ln+
	 wxu2+c68gmL0w0uwr/TJaeDRR3RtaEQeDvUyu6v/v1+AmIcFFDLpsTN9Vxh4MaHkrk
	 8PWHWdcqKrMlQ==
Date: Fri, 2 Feb 2024 16:59:30 +0100
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
Subject: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
MIME-Version: 1.0
In-Reply-To: <Zb0M_2093UwPXK8y@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_075941_900899_F4D97EF7 
X-CRM114-Status: GOOD (  35.07  )
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
Content-Type: multipart/mixed; boundary="===============5904919299203846739=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5904919299203846739==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nkbwqjl5lzj6skqt"
Content-Disposition: inline


--nkbwqjl5lzj6skqt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> > > > >  /**
> > > > >   * DOC: HDMI connector properties
> > > > >   *
> > > > > + * Broadcast RGB
> > > > > + *      Indicates the RGB Quantization Range (Full vs Limited) u=
sed.
> > > > > + *      Infoframes will be generated according to that value.
> > > > > + *
> > > > > + *      The value of this property can be one of the following:
> > > > > + *
> > > > > + *      Automatic:
> > > > > + *              RGB Range is selected automatically based on the=
 mode
> > > > > + *              according to the HDMI specifications.
> > > > > + *
> > > > > + *      Full:
> > > > > + *              Full RGB Range is forced.
> > > > > + *
> > > > > + *      Limited 16:235:
> > > > > + *              Limited RGB Range is forced. Unlike the name sug=
gests,
> > > > > + *              this works for any number of bits-per-component.
> > > > > + *
> > > > > + *      Drivers can set up this property by calling
> > > > > + *      drm_connector_attach_broadcast_rgb_property().
> > > > > + *
> > > >=20
> > > > This is a good time to document this in more detail. There might be=
 two
> > > > different things being affected:
> > > >=20
> > > > 1. The signalling (InfoFrame/SDP/...)
> > > > 2. The color pipeline processing
> > > >=20
> > > > All values of Broadcast RGB always affect the color pipeline proces=
sing
> > > > such that a full-range input to the CRTC is converted to either ful=
l- or
> > > > limited-range, depending on what the monitor is supposed to accept.
> > > >=20
> > > > When automatic is selected, does that mean that there is no signall=
ing,
> > > > or that the signalling matches what the monitor is supposed to acce=
pt
> > > > according to the spec? Also, is this really HDMI specific?
> > > >=20
> > > > When full or limited is selected and the monitor doesn't support the
> > > > signalling, what happens?
> > >=20
> > > Forgot to mention: user-space still has no control over RGB vs YCbCr =
on
> > > the cable, so is this only affecting RGB? If not, how does it affect
> > > YCbCr?
> >=20
> > So I dug a bit into both the i915 and vc4 drivers, and it looks like if
> > we're using a YCbCr format, i915 will always use a limited range while
> > vc4 will follow the value of the property.
>=20
> The property is literally called "Broadcast *RGB*".
> That should explain why it's only affecting RGB.

Right. And the limited range option is called "Limited 16:235" despite
being usable on bpc > 8 bits. Naming errors occurs, and history happens
to make names inconsistent too, that's fine and not an argument in
itself.

> Full range YCbCr is a much rarer beast so we've never bothered
> to enable it.

vc4 supports it.

> Eg. with DP it only became possible with the introduction of the VSC
> SDP (and I don't recall if there's additional capability checks that
> are also required). With DP MSA signalling full range YCbCr is not
> possible at all.

This is for HDMI only.

> I don't recall right now what the HDMI requirements are.

HDMI has supported it for a while, and it's defined (for example) in the
HDMI 1.4 spec in Section 6.6 - Video Quantization Ranges. It supports
limited and full range on both RGB and YCbCr, as long as the EDIDs state
so and the Infoframes signal it.

Maxime

--nkbwqjl5lzj6skqt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZb0RYgAKCRDj7w1vZxhR
xaFMAPwPX00aGuZMcwT8+4307ZfdO5OyFc7WAkZEWUBovapBWAD/d9+niBWsPvl3
otXPVDwd1PFHbq4/qGvzqn443KiCiQA=
=rMjR
-----END PGP SIGNATURE-----

--nkbwqjl5lzj6skqt--


--===============5904919299203846739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5904919299203846739==--

