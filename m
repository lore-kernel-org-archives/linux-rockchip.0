Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 237C3C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 18:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hj/jXj95VJl8t4cRZcvhGKiTT8k2UGTNH69SE8Fils4=; b=S3DbKgslvotHSm1V9RDtpay/7m
	KzkRt6rCiw3sOgF6IMwPYk8Bjsm9vNY+L6ABwFpMI1RbRkuzWhEZYm9uQOmAmys0wWQmcID8/l+9r
	DAEyU8eQYENkAWH/2hGgZKjV/MLGbM3K330vXI5zhEhXWJP+enM4WlZRsPye653r+YsBCLIFRZpQo
	PHAZDR738zlc1mCwbfM6KIMCTUI5q8k0i+opb6dZbsK8RDhSyoFfzBSYNc6KIkyIq1pFlBFhCACZB
	l1MJeAuxjZYvo7EoAqUVMcje3OW0PR26+DNtGjVDVjKBAjeYXhP1ote9ceMnkFFSc2H/JGNnyyWSN
	nbMfsg+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9UHK-00000000mCx-2hmD;
	Tue, 21 May 2024 18:32:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9UHH-00000000mB7-0eks;
	Tue, 21 May 2024 18:32:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E6B83623F2;
	Tue, 21 May 2024 18:31:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43C90C2BD11;
	Tue, 21 May 2024 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716316317;
	bh=73vaEc2+Ila3l2dDk9+94NR4FaAuj1CJocbODWzqAFA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EWsp6MCxzQpqz5SpHf3xVk0D/9iv7MMU9rMvhEOxMl8R74bdHXIcV+reNkhyrWM6c
	 Z+aKJdfkvC1tS1A5kHVg6Yc0FjFl2SFERlC8So7+BWuBo//ANiyD6mZW5jkDHvjxiw
	 EY0mTzmtEVh/3/7h+O7tNPpwgkgvOh5vYmMLbHm3dEz6DOaloLqtmq4uNT2Pr6PrMY
	 EH06i/oI6jaZP8XLtEuRrDXB6Bpuu3waTR630XnR6ozYIV0ngU9xfgIJrT9u0vnsBt
	 3530qbHyqCQ0vS193WSOHgHQtCdDHqp2qhMBe5A8Uj0JqyM1eP9YGUJDWF2oY99oK4
	 iLyTMBabjaydQ==
Date: Tue, 21 May 2024 19:31:51 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: display: vop2: Add VP clock resets
Message-ID: <20240521-silver-exciting-bb3725dc495d@spud>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
 <20240515-risk-exes-13db315da6bb@spud>
 <2182693.irdbgypaU6@diego>
 <13628421.uLZWGnKmhe@arisu>
MIME-Version: 1.0
In-Reply-To: <13628421.uLZWGnKmhe@arisu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_113159_311574_8E10E209 
X-CRM114-Status: GOOD (  20.39  )
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
Content-Type: multipart/mixed; boundary="===============7241195746276676667=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7241195746276676667==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r8AEGgMh3QAZNC29"
Content-Disposition: inline


--r8AEGgMh3QAZNC29
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 21, 2024 at 01:15:46PM -0400, Detlev Casanova wrote:
> On Wednesday, May 15, 2024 12:33:22 P.M. EDT Heiko St=FCbner wrote:
> > Am Mittwoch, 15. Mai 2024, 18:19:29 CEST schrieb Conor Dooley:
> > > On Tue, May 14, 2024 at 11:19:47AM -0400, Detlev Casanova wrote:
> > > > Add the documentation for VOP2 video ports reset clocks.
> > > > One reset can be set per video port.
> > > >=20
> > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > >=20
> > > Are these resets valid for all VOPs or just the one on 3588?
> >=20
> > Not in that form.
> > I.e. rk3588 has 4 video-ports (0-3), while rk3568 has 3 (0-2).
> >=20
> > So the binding should take into account that rk3568 also has the
> > SRST_VOP0 ... SRST_VOP2.
>=20
> That is what is set in the example and the reason why I set minItems to 3=
 in=20
> the main bindings.
> Then, the rk3588 specific part sets it to 4.
>=20
> Isn't that enough ?

Not quite - you need to restrict maxItems to 3 for the other devices if
the clocks are not valid. What you've got says that 4 clocks are
possible but not needed on !rk3588.

Cheers,
Conor.

--r8AEGgMh3QAZNC29
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZkzolwAKCRB4tDGHoIJi
0n6OAP4wwXEM/mpcp22FOi2YHaUbxut8mO+9Vbudzw42lFwLEAD+LZI8reFtSZ0L
4FVV8PWuTYl0PJwEL+Xc2KHa7boG/AE=
=rTte
-----END PGP SIGNATURE-----

--r8AEGgMh3QAZNC29--


--===============7241195746276676667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7241195746276676667==--

