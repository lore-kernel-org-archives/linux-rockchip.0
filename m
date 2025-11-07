Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D503CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 17:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RVruA0P2GYYm2Dq0rt55Nz2J/BgrPNsI0z77c55fWoI=; b=WXv/VE9DhF/sccDV4HJp6ydDp3
	UdwxHvn/+D5w0Zdnj6DfCu+syOPSeHLxn4zx0mX9OYFI/KRS1QSg2zsJTur8OVYxFaf+PaNj7jTrs
	g9Obw6goldud8GpFGO4EJfV83epXwOZcDSiXloAtFw+SKq6EnvMtAEL6H9QkxGgI2e3SnwvsyGgww
	QGjTXDDNwfBvK4c069FjwNOsJ2It8S/nV1o4YmrWjP4UXSw/8DTp2/hpyXvTmiUNL1VDZ4k63Aic5
	oeEB3cfBwXxuSbpdjqi3mhcftO4K6ZNkQhyjit7GuDkpHmOpUoNKhQMwWld6Obmol20nPogZidzvJ
	YnuoGIHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHQEC-00000000G4O-1MTN;
	Fri, 07 Nov 2025 17:26:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHQEA-00000000G3j-2Ag1
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 17:26:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CE3C940762;
	Fri,  7 Nov 2025 17:26:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6269C113D0;
	Fri,  7 Nov 2025 17:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762536381;
	bh=CG3sp03scUguoBw/Rgi9tbhANOp5T1t4Ii9zLGB26UU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gzAvUWk8x8FBe1LtHXxG1aRk04wwvE3F08YIXAmXwOCs+6cLJQBvszupU0s1V5L+P
	 aELjti1enD4epEJ6iym2408P+xvhlLVI5NYsreYRzvVAcCrWQXnsdBJBtaRMBL8eDk
	 VykIE3J4BzuQevfvteuIoPYZxnhrB+5DTDhHwcPIMGd3X557rmGMrBySXKjPeiEfxw
	 cyT76EXUQEPBF+QswNKyoZ1dMMOzinx+CSdHZADWHKRsBxGtYhUUbdmOK06gO9QZkI
	 qzEUQrzDFjpLXSNOvy7C46ga7CYh9sNHa5ryAwCnbNRFD3xmnFNKAKfsv1y7I1mY7e
	 kwsqLAfvYotdg==
Date: Fri, 7 Nov 2025 17:26:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: Add no-hpd for
 dw-hdmi-qp controller
Message-ID: <20251107-salutary-flatbed-0a9d343ea233@spud>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
 <20251106180914.768502-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251106180914.768502-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_092622_576179_0D66D314 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: multipart/mixed; boundary="===============3952914424641899298=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3952914424641899298==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nv5aRATXfvkz/qx9"
Content-Disposition: inline


--nv5aRATXfvkz/qx9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 06, 2025 at 12:09:12PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add an attribute of "no-hpd" for the Rockchip dw-hdmi-qp controller.
> This is used to describe implementations where the HPD pin is not
> connected or used for other purposes, such as in the RK3588S based
> Gameforce Ace which repurposed the GPIO for an additional face
> button.
>=20
> The "no-hpd" option was chosen to be consistent with other devices
> which already define this parameter for broken or missing hpd
> functionality.

Glad you mentioned this, so we could avoid the "why have you no vendor
prefix" conversation :)

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--nv5aRATXfvkz/qx9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQ4rtwAKCRB4tDGHoIJi
0uPcAQCQYx52aKQ9WBWwYIfanyKVna1IMoK9mSl5rQD2kACGUgD/Z92gV37yqP21
NuwDcsmdPlMhKmsGtM52wv5NRkPf5Ak=
=/cD2
-----END PGP SIGNATURE-----

--nv5aRATXfvkz/qx9--


--===============3952914424641899298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3952914424641899298==--

