Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72461C52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 21:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yt9apAWqI8+QzQBrH7hKOCO+QJBAoS8wpJgffbfn6lU=; b=sbfe+8QJCdZC7xcy5UC6OqZ0A0
	N5Mh3XskTiwP98kDkhCjRG6i7RS2zE0WRlb51daybxwyIJERLarSXJWgPjR1/ivJONV145FBWA6L8
	xOUeVmaEvkQTmGcikMMeX6xPnHI/iNxBCUkcsmOV6N3GQlu3kFomdqQL5tP5ihTNXuFaZ98xwu+od
	NjlfO4Y17A3I3mmzvCGM8zrpD1KKbGZk5XSpgJaMjrhxbgkPVX9W5T7LMThaQWfxE6NZwrJTB2t7K
	oQ0cWZBKg+XxTiLV9vJXdtv6U/Kw3kVIQCKnwB553oD7Xo2bsIZrYGloX4wqMF8vxWX+H7NeiJL6V
	oPu5+TVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgstq-0000000APNd-0Efg;
	Wed, 21 Aug 2024 21:29:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgst6-0000000APGi-2Kls;
	Wed, 21 Aug 2024 21:29:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9B58060B31;
	Wed, 21 Aug 2024 21:29:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F244C4AF0E;
	Wed, 21 Aug 2024 21:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724275742;
	bh=xwtLdO+9ktMGuZdX5L6kQk2F65PMSUAnAVNlH9Yrj1c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NxLmgo2bIzm6idMoy0ugAby9PScIkxhyj4rOxXv6SDq/K4EZ/ZdbtDXV318P0kbrH
	 F5lVgKTx31+98B6wmNHwt6SsVSBrqICsNFv25Bd1RR8dGhIj+SZlbMHICgEAlUJhQx
	 GKNQxD7peoQvKXl0zstMxgt6QPXPmhKyoMd8U/oFzwfb/g+D8mt4iXaJlTgGkNwLEE
	 +ZzzZ9h+d2os376V68LB7GWY+kSCt2bUaMdkzAvrsmje6PTL8LjKMlq6D3vvmcj5wP
	 U5SB/YFq0/uALUVDk2W+TE0Wjz7e2JMJVkSiKsZTUen0LY1dt95spWtAFmS+qRvxYi
	 Mb5HMnCTxA+uA==
Date: Wed, 21 Aug 2024 22:28:55 +0100
From: Conor Dooley <conor@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Yao <markyao0591@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
	Luis de Arquer <ldearquer@gmail.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
Message-ID: <20240821-stretch-scam-09d7adc08a4c@spud>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <20240819-b4-rk3588-bridge-upstream-v4-3-6417c72a2749@collabora.com>
 <20240819-bobbing-purplish-99e48baa2304@spud>
 <ec84bc0b-c4c2-4735-9f34-52bc3a852aaf@collabora.com>
 <20240820-tropics-hunchback-6fdcd0b37f91@spud>
 <038073d0-d4b9-4938-9a51-ea2aeb4530f6@collabora.com>
 <20240821-evoke-mop-fb09ceef3597@spud>
 <5813cea2-4890-4fa9-8826-19be5bf3e161@collabora.com>
MIME-Version: 1.0
In-Reply-To: <5813cea2-4890-4fa9-8826-19be5bf3e161@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_142904_751535_6AF2D8DF 
X-CRM114-Status: GOOD (  25.28  )
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
Content-Type: multipart/mixed; boundary="===============0433974802525337590=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0433974802525337590==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/pKw8PjfkiYpJUBC"
Content-Disposition: inline


--/pKw8PjfkiYpJUBC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Cristian, Heiko,

On Wed, Aug 21, 2024 at 11:38:01PM +0300, Cristian Ciocaltea wrote:
> On 8/21/24 6:07 PM, Conor Dooley wrote:
> > On Tue, Aug 20, 2024 at 11:12:45PM +0300, Cristian Ciocaltea wrote:
> >> On 8/20/24 7:14 PM, Conor Dooley wrote:
> >>> On Tue, Aug 20, 2024 at 03:37:44PM +0300, Cristian Ciocaltea wrote:
> >>>> On 8/19/24 7:53 PM, Conor Dooley wrote:
> >>>>> On Mon, Aug 19, 2024 at 01:29:30AM +0300, Cristian Ciocaltea wrote:
> >>>>>> +  rockchip,grf:
> >>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
> >>>>>> +    description:
> >>>>>> +      Most HDMI QP related data is accessed through SYS GRF regs.
> >>>>>> +
> >>>>>> +  rockchip,vo1-grf:
> >>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
> >>>>>> +    description:
> >>>>>> +      Additional HDMI QP related data is accessed through VO1 GRF=
 regs.
> >>>>>
> >>>>> Why are these required? What prevents you looking up the syscons by
> >>>>> compatible?
> >>>>
> >>>> That is for getting the proper instance:
> >>>
> >>> Ah, that makes sense. I am, however, curious why these have the same
> >>> compatible when they have different sized regions allocated to them.
> >>
> >> Good question, didn't notice.  I've just checked the TRM and, in both
> >> cases, the maximum register offset is within the 0x100 range.  Presuma=
bly
> >> this is nothing but an inconsistency, as the syscons have been added in
> >> separate commits.
> >=20
> > Is that TRM publicly available? I do find it curious that devices sound
> > like they have different contents have the same compatible. In my view,
> > that is incorrect and they should have unique compatibles if the
> > contents (and therefore the programming model) differs.
>=20
> Don't know if there's an official location to get it from, but a quick
> search on internet shows a few repos providing them, e.g. [1].
>=20
> Comparing "6.14 VO0_GRF Register Description" at pg. 777 with "6.15 VO1_G=
RF
> Register Description" at pg. 786 (from Part1) reveals the layout is mostly
> similar, with a few variations though.

Page references and everything, thank you very much. I don't think those
two GRFs should have the same compatibles, they're, as you say, similar
but not identical. Seems like a bug to me!

Heiko, what do you think?

> [1] https://github.com/FanX-Tek/rk3588-TRM-and-Datasheet
>=20
> >>
> >>>> 	vo0_grf: syscon@fd5a6000 {
> >>>> 		compatible =3D "rockchip,rk3588-vo-grf", "syscon";
> >>>> 		reg =3D <0x0 0xfd5a6000 0x0 0x2000>;
> >>>> 		clocks =3D <&cru PCLK_VO0GRF>;
> >>>> 	};
> >>>>
> >>>> 	vo1_grf: syscon@fd5a8000 {
> >>>> 		compatible =3D "rockchip,rk3588-vo-grf", "syscon";
> >>>> 		reg =3D <0x0 0xfd5a8000 0x0 0x100>;
> >>>> 		clocks =3D <&cru PCLK_VO1GRF>;
> >>>> 	};
> >

--/pKw8PjfkiYpJUBC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsZcFgAKCRB4tDGHoIJi
0pWIAP4jFPCzxz/BuUKmSHkK/1MnQP5/ja+ucOIadjCDNiPuRAD9GF1a9MOn5TEw
SHbcMsCq/ZXQHJOY+b0OzSipkqvSPgg=
=BBdG
-----END PGP SIGNATURE-----

--/pKw8PjfkiYpJUBC--


--===============0433974802525337590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0433974802525337590==--

