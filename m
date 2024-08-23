Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5127DC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 16:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=trdmiDDm8Jcb2CAHQV2ZHIvX4GAa4H4gJpeALyowbxA=; b=Mw+gOEpYgw4MujT8pr9V65/yU+
	GpakyTxRpgsVytOiKl+RA1u3wSabu1EQMUo8cAhcfmUrFan8VMwOZBv6B0a3pS/RYjlDYkVKAWb9T
	Oj+qq1JHyDyOYISvt0qMDkGwygpw9nJVEQBNUXblPmoFsD4KPm5OjDsyHLC6EtEoJZexO0DXm5OLH
	5rAgE9vUkCjkZbH2fexAtI4JwUMafX3S7SAaAb2VDzdRrRCtkqJo+VgE0MOKWAY/NJaBusx1eRLZa
	EWs68/gUDBMiedotY5YgAP1w/7TjS8RSipH00kmoNNFcFbLCNOdpisfcbc/uF9JMSLZn86cNWZq9p
	pR9FuT+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWjR-0000000HRRk-2xb9;
	Fri, 23 Aug 2024 16:01:45 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWha-0000000HQt3-0JcV;
	Fri, 23 Aug 2024 15:59:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9BD3BA400FF;
	Fri, 23 Aug 2024 15:59:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB49C32786;
	Fri, 23 Aug 2024 15:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724428789;
	bh=O2lMKlPvm5xBpbj9dv2BdmqyLIQ1zrOWY1a1YXHnZ4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hjr83euPg8IQyUwMQjvhJt/F2p/Xm//W9sjhrdpUOO1ypRA/Q3y9ykqKAyQSM0mt0
	 gFLYHGWSDx977PfXdpwWFoclJKsI3jzvnCumGBzR7YneezFvQZhpfX7HaWTyhO5Zzu
	 FJsJVPS7yEq1ZCRSe2l/VIDRhjYsyIpWGkDncX22DhmbV3pZ/49v5Z0F15o7HkQ45p
	 bQF3L/W2u1sKpSXxwPlTX/zaU8t5ixzuGpw358NOsyt3pYyeuZzFqgainiMRUd1saX
	 hgf6N7FDQMvGVorz5WKf7Y8gH0gAhMkcF+EqGTYTFgYqT0Y7yZVuYFOx5KhBEFX3WB
	 /SOcJpfarUVLQ==
Date: Fri, 23 Aug 2024 16:59:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
Message-ID: <20240823-lunar-esteemed-a727b6de8cbe@spud>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <4167579.6PsWsQAL7t@diego>
 <20240822-pushchair-premises-f4055779216a@spud>
 <3137870.U3zVgo479M@diego>
MIME-Version: 1.0
In-Reply-To: <3137870.U3zVgo479M@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_085950_267809_35B7F8F9 
X-CRM114-Status: GOOD (  28.48  )
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
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luis de Arquer <ldearquer@gmail.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandre ARNOUD <aarnoud@me.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Yao <markyao0591@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: multipart/mixed; boundary="===============0627174488079028872=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0627174488079028872==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hV0DDwkOk4FQlrs4"
Content-Disposition: inline


--hV0DDwkOk4FQlrs4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2024 at 12:47:50PM +0200, Heiko St=FCbner wrote:
> Am Donnerstag, 22. August 2024, 10:41:10 CEST schrieb Conor Dooley:
> > On Thu, Aug 22, 2024 at 09:01:34AM +0200, Heiko St=FCbner wrote:
> > > @Conor: just for me, did some shift happen in our understanding of dt-
> > > best-practices in terms of syscon via phandle vs. syscon via compatib=
le?
> > >=20
> > > Because Rockchip boards are referencing their GRFs via phandes forever
> > > but similar to the soc vs non-soc node thing, I'd like to stay on top=
 of
> > > best-practices ;-)
> >=20
> > If IP blocks, and thus drivers, are going to be reused between devices,
> > using the phandles makes sense given that it is unlikely that syscon
> > nodes can make use of fallback compatibles due to bits within that "glu=
e"
> > changing between devices. It also makes sense when there are multiple
> > instances of an IP on the device, which need to use different syscons.
> > My goal is to ask people why they are using these type of syscons
> > phandle properties, cos often they are not required at all - for example
> > with clocks where you effectively need a whole new driver for every
> > single soc and having a phandle property buys you nothing.
>=20
> I guess I'm of two minds here.
>=20
> For me at least it makes sense to spell out the dependency to the
> syscon in the devicetree and not just have that hidden away inside the
> driver.
>=20
> But on the other hand, we already have the per-soc configuration [0]
> defining which grf bits needs to be accessed, so adding a
>=20
> 	.lanecfg1_grf_compat =3D "rockchip,rk3568-vo"
>=20
> would not create overhad, as the grf regs and bits and rearranged
> all the time anyway.

Right, that's the other side of it. Raw phandles aren't that great if
the bits are gonna move around the register and you have to use the
match data to figure out where they are. phandle + offset is the other
option for that kind of scenario, particularly in cases where there are
multiple copies of a block on an SoC and each uses either a different
syscon or a different set of registers within one.

>=20
>=20
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c#n1652
> taking DSI as an example, where this is even more obvious
>=20
>=20

--hV0DDwkOk4FQlrs4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsix7QAKCRB4tDGHoIJi
0iOnAQCzjBObBEXW5gvG2K3RPILn8u+nPpQFIaHghl7RlSPXRgD8CMDqOYKns/Dy
oZZF/fVLrYmrSuw4spyzAIfbrGlg/QA=
=ONcF
-----END PGP SIGNATURE-----

--hV0DDwkOk4FQlrs4--


--===============0627174488079028872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0627174488079028872==--

