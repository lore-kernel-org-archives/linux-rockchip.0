Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76AF9C4828F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 13:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h0iJ+PF93tc51RPBmMpBMmL7OgKNW5v+TEaDi/tlsrA=; b=zqmYgwsmkHfbUkr5d6rRkAE6vQ
	DJ3TW5/SQ0M3WWK9TEj91hpMb90GqKIubbiys36CWmVRzqEeSzeIX0qNjKiY7mcOig5Zo8bmwJhCZ
	5DnL2KUnkdysVpXB/zigRQhptyFPxCwBwruqSSFLi7yNg46gnV0yHe2aCZMoTIgjks7SFqFnYkcVo
	BAYq4w/UVyTD6YkPofrkP1nvYIeLUmh4DYb0cKCWlDfTRB6CR9inZnsOcD+5XsG0+9ZmNIFK0s5wv
	IdHpUZWrf7pSuND2NtciISo+kLOQzXfqXZOp6Krf8ecViUWP2SaEZuaaygVu0Uo6wdW5QGNcXHyHS
	GsiPOZfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVtAy-0000000BY3h-14fz;
	Fri, 02 Feb 2024 13:01:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVtAu-0000000BY1G-2oCu;
	Fri, 02 Feb 2024 13:01:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 961B162559;
	Fri,  2 Feb 2024 13:01:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9E34C433F1;
	Fri,  2 Feb 2024 13:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706878902;
	bh=ZjGVUgcdYqjFELWbtS5Tz+gafK6SLtjIYXwEYo18YXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rk52/yefcJ7xC9MuTUP9sVCJC4n6DX/+ofLVOsiOkeAH60dIBnk2fZXv9ByUydBSm
	 DtqxnIWw/Mom3yYSOahogiwlITZbO6GPKqH6MT9Kdr8LoJYR+meY7ea3x86U/vmdK4
	 jRDsbJiXrCZxHBdA/8os4Npi7r/i1RsmqZO0HydLSMRy0rWgj6ua7CH416PSWMz9pG
	 0eAtdr7brPlRIP4fC1N9uM9JlSNyxx5dHaPSkw9vVrEL5j6Xw4EmSZSGqLZYN6CIUl
	 apPnlO5ZVBPs/+JA5YylF5MM9Ainw7YQkJYQDn356jUppnedKDWil6gE6ptW+ae8v4
	 30Y4ACuH/ziuw==
Date: Fri, 2 Feb 2024 14:01:39 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
MIME-Version: 1.0
In-Reply-To: <20240115143720.GA160656@toolbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_050144_831952_BC9B5B3F 
X-CRM114-Status: GOOD (  27.95  )
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
Content-Type: multipart/mixed; boundary="===============6163958433320618534=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6163958433320618534==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6dznigm7bfdw265q"
Content-Disposition: inline


--6dznigm7bfdw265q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> > >  /**
> > >   * DOC: HDMI connector properties
> > >   *
> > > + * Broadcast RGB
> > > + *      Indicates the RGB Quantization Range (Full vs Limited) used.
> > > + *      Infoframes will be generated according to that value.
> > > + *
> > > + *      The value of this property can be one of the following:
> > > + *
> > > + *      Automatic:
> > > + *              RGB Range is selected automatically based on the mode
> > > + *              according to the HDMI specifications.
> > > + *
> > > + *      Full:
> > > + *              Full RGB Range is forced.
> > > + *
> > > + *      Limited 16:235:
> > > + *              Limited RGB Range is forced. Unlike the name suggest=
s,
> > > + *              this works for any number of bits-per-component.
> > > + *
> > > + *      Drivers can set up this property by calling
> > > + *      drm_connector_attach_broadcast_rgb_property().
> > > + *
> >=20
> > This is a good time to document this in more detail. There might be two
> > different things being affected:
> >=20
> > 1. The signalling (InfoFrame/SDP/...)
> > 2. The color pipeline processing
> >=20
> > All values of Broadcast RGB always affect the color pipeline processing
> > such that a full-range input to the CRTC is converted to either full- or
> > limited-range, depending on what the monitor is supposed to accept.
> >=20
> > When automatic is selected, does that mean that there is no signalling,
> > or that the signalling matches what the monitor is supposed to accept
> > according to the spec? Also, is this really HDMI specific?
> >=20
> > When full or limited is selected and the monitor doesn't support the
> > signalling, what happens?
>=20
> Forgot to mention: user-space still has no control over RGB vs YCbCr on
> the cable, so is this only affecting RGB? If not, how does it affect
> YCbCr?

So I dug a bit into both the i915 and vc4 drivers, and it looks like if
we're using a YCbCr format, i915 will always use a limited range while
vc4 will follow the value of the property.

I guess the best way to reconcile that would be to state that it also
controls the YCbCr range, and i915 can choose to reject/adjust the
configurations it can't support.

Does that make sense?

Maxime

--6dznigm7bfdw265q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZbznsgAKCRDj7w1vZxhR
xY65AP4thN3Jypd+NMHjCI2DGcLcaa/6C19RZkReczuElu+gZwEA4x7ld5E6OIjM
5nF1e+nTxH1f21uOqX5xJzdswy85Rw8=
=NO9C
-----END PGP SIGNATURE-----

--6dznigm7bfdw265q--


--===============6163958433320618534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6163958433320618534==--

