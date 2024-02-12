Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F6E4C4829B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 09:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2axptiuLfjhZ3k2OOxu86k3rQZxF3Wfcg37/C0zoe3E=; b=rPt0LlDSH+dFGNwB/jCvAyLjvB
	678i8g7KC1Sq1LwdMXi0ib4oI21Yu9cwWQv+hKnQRG/zyTS5xTyLCd9fDcHZ+wLnhIq+NF7zqX5Jn
	NhlTbfEJsCnKhos4QVe2ZiN9UVh0iWTeFbMIID8cxzs5dO/BgvB875l9D/f4mH/HjVZ1LfesZO6Im
	9RFNzVelKe50NP50Txfkew4IrV1hu0I2ueL+k8lZHfyq9Cp2bnYqo+lK4vd+bm7ZnQvIsGLIeKwaM
	YV9kSoir0ErAPO6Ngk0a2BfdNGvCllOiCAfn9n5yscYVRIGW046oEJe3nUV+twV4asSpGFLegtq8k
	aHeoOU7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZT2P-00000004mxy-0X0w;
	Mon, 12 Feb 2024 09:55:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZT2J-00000004muQ-0HZv;
	Mon, 12 Feb 2024 09:55:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 11696CE0FE8;
	Mon, 12 Feb 2024 09:55:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 596F5C43390;
	Mon, 12 Feb 2024 09:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707731734;
	bh=HK3iN31Pdycw3MOndavpvQN/41z5gCD2Ck3qqfmyiTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pFNq4/4IdY9eJyoHNAwY5F9Id/Ux8i6kjVF+JRKTg6rQknYC8wuz2aFCFY+hK4ZZ6
	 njuc8tqL2aDz3mWhZzl1w65nMHCnez1weC5BUMOmNmU88ZDqQoek6wNSTwGAWFsqKF
	 QwDyl3+WfEAOPKih8vspHwOsxGX873v/QJWwqoSH2FRgARQa4/D3vMmmiK423muhQl
	 7Uyas/g7GVxrnyEVbKKS8cpGKbqlSooxsjmop/L0AbjHqQ0PSnFn/mclIUKw8eA+xL
	 OZ3oSB4BbVMzmbpapZljzKSU18kT6Rk7iHRc20M4BpNfRQOON1gQLiQICaRK2PsxIP
	 I3XJ1K8595Lfw==
Date: Mon, 12 Feb 2024 10:55:32 +0100
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
Subject: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <uplclresnokchsgutsd27ihv4422sob77reobw6ygx3c3cqnti@hjmrhut7l5r5>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <niqn7eql5neyfp5ficdfisdpmlwrprovqn5g7lgcfwoe74ds23@7fr4yv2miqe7>
 <20240209203046.GA996172@toolbox>
MIME-Version: 1.0
In-Reply-To: <20240209203046.GA996172@toolbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_015539_498491_DAE98659 
X-CRM114-Status: GOOD (  28.04  )
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
Content-Type: multipart/mixed; boundary="===============2159139584963329405=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2159139584963329405==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="la6nsuu6qrx5qt32"
Content-Disposition: inline


--la6nsuu6qrx5qt32
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 09, 2024 at 09:30:46PM +0100, Sebastian Wick wrote:
> On Fri, Feb 02, 2024 at 04:49:04PM +0100, Maxime Ripard wrote:
> > Hi Sebastian,
> >=20
> > On Mon, Jan 15, 2024 at 03:33:08PM +0100, Sebastian Wick wrote:
> > > >  /**
> > > >   * DOC: HDMI connector properties
> > > >   *
> > > > + * Broadcast RGB
> > > > + *      Indicates the RGB Quantization Range (Full vs Limited) use=
d.
> > > > + *      Infoframes will be generated according to that value.
> > > > + *
> > > > + *      The value of this property can be one of the following:
> > > > + *
> > > > + *      Automatic:
> > > > + *              RGB Range is selected automatically based on the m=
ode
> > > > + *              according to the HDMI specifications.
> > > > + *
> > > > + *      Full:
> > > > + *              Full RGB Range is forced.
> > > > + *
> > > > + *      Limited 16:235:
> > > > + *              Limited RGB Range is forced. Unlike the name sugge=
sts,
> > > > + *              this works for any number of bits-per-component.
> > > > + *
> > > > + *      Drivers can set up this property by calling
> > > > + *      drm_connector_attach_broadcast_rgb_property().
> > > > + *
> > >=20
> > > This is a good time to document this in more detail. There might be t=
wo
> > > different things being affected:
> > >=20
> > > 1. The signalling (InfoFrame/SDP/...)
> > > 2. The color pipeline processing
> > >=20
> > > All values of Broadcast RGB always affect the color pipeline processi=
ng
> > > such that a full-range input to the CRTC is converted to either full-=
 or
> > > limited-range, depending on what the monitor is supposed to accept.
> > >=20
> > > When automatic is selected, does that mean that there is no signallin=
g,
> > > or that the signalling matches what the monitor is supposed to accept
> > > according to the spec? Also, is this really HDMI specific?
> > >=20
> > > When full or limited is selected and the monitor doesn't support the
> > > signalling, what happens?
> >=20
> > Leaving the YCbCr vs RGB discussion aside, would this be better ?
>=20
> Yes, it is. Thanks.

Great, it'll be in the next version.

> We do have to resolve the YCbCr vs RGB issue though.
>=20
> >  * Broadcast RGB (HDMI specific)
> >  *      Indicates the Quantization Range (Full vs Limited) used. The co=
lor
> >  *      processing pipeline will be adjusted to match the value of the
>=20
> Ah, another thing no note here is that the CRTC as configured by user
> space must always produce full range pixels.

Added too

Thanks

--la6nsuu6qrx5qt32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZcnrEwAKCRDj7w1vZxhR
xdDpAQCDVmx87SVGeVycmXmU4sk+7XyYR3FCEEqCdeOHZuh2qQD/YieE0hT/nf54
5ulv0+EGxYyUNUob/q6HmPUhR3V7pQ8=
=P7ka
-----END PGP SIGNATURE-----

--la6nsuu6qrx5qt32--


--===============2159139584963329405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2159139584963329405==--

