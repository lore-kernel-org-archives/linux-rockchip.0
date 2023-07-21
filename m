Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2CA6EB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 15:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FjoOZgAaM8WCUUHdlvOG7Trr5fXoW7GFFTYUnLi+hLE=; b=P9R0MuuchweoxFdM54BPJlhFa4
	hBXfnkNEE/57SPxEhvN7ZONa/FDhax6+DwMe9bTi6iDVa78bhDi95OxCwLSd3Qg/Qx/jDUV5dO0/x
	d0Pzlal7RKS4wheX1AJtN54KBag+1cX9AL3hAHvbZvTMzqDUmkRdJ8tGSsWwdIM85ginhulWgnN8L
	NgZesXsfzBsmuLCN3xSSB+ThJ6TENcrTXcmALQ5RsJZOMiwEr96b22GZyR1H3xYp3eQ7rfX3UbeGM
	3EKDCZYZHjV0X2Le7DHdVT+3J6D8+ZdlOx+deR6ub5n88s0YYcfby16QM0cj16xLuiQ5rsvIugtKP
	iuAI1+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrf3-00ENCB-2Q;
	Fri, 21 Jul 2023 15:03:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrf1-00ENBe-2H
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 15:03:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 35EBA61CD1;
	Fri, 21 Jul 2023 15:03:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FC14C433CC;
	Fri, 21 Jul 2023 15:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689951794;
	bh=3lQEccUgeoU+LY7Bm4F8/tc5wNmTkF9n8gZCKBDPIE0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XJgW5+AVRoMwwXCgB+5fIKuV86ywrR73Q3qbstfYFiQ4Hp9YIptRpce+xBUGPprQm
	 vlynbOTEDASOsTQcqHlSdbIDcQ7BQTqO2GyOGbtyFwhJA3HNRWUSF6gW7KeIGbuAON
	 S2GE0RC1HY3wEl+l9RYPktoKA4oFd1YO9avNf/PBwKaWFIOP3Dvy5JdSJbCU+ses8L
	 Om6l+DQm4Z9AaDcVEj4TnmgKFZeEnrlv3Gu6Ola8rjp1TH22UhIxOyWSPd7oQs39fi
	 X8BqVkbRjCE3PYYXRl0VkkkcBctM3piQRGb6UTmi5DG3P+Q2C74v7A2+s3HHsBZNH+
	 wkitWJtmiW/lw==
Date: Fri, 21 Jul 2023 16:03:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations
 with RBTREE and MAPLE caches
Message-ID: <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
MIME-Version: 1.0
In-Reply-To: <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
X-Cookie: Do, or do not
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_080315_791724_45EC7A69 
X-CRM114-Status: GOOD (  13.10  )
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
Content-Type: multipart/mixed; boundary="===============4261259645079741666=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4261259645079741666==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gAes5fkevpu9MOKk"
Content-Disposition: inline


--gAes5fkevpu9MOKk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 21, 2023 at 04:53:42PM +0200, Marek Szyprowski wrote:

> This patch, which landed in today's linux-next, breaks operation of the=
=20
> RockChip's VOP2 DRM driver=20
> (drivers/gpu/drm/rockchip/rockchip_drm_vop2.c). I'm not sure what is the=
=20
> proper fix in this case. Should one change the cache type to REGCACHE_FLA=
T?

Actually Guenter and Dan have made the required updates to support this
so the warning will be gone soon (hopefully Dan will send his patch
properly shortly).

--gAes5fkevpu9MOKk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmS6nisACgkQJNaLcl1U
h9DRMQf/b5AYjPE1YkF6k5CtGZC6CmcOf86Od3fDegvUhYac6CqTNT/M0j3BpfZa
ayrjkV/9QU8asxZJXJpXCXCq8NPaV5pu0s1e7TYpcE+RW+KYJ4V17ulBdrGNw0Ue
Ib1oNDKwIZ0tB48/kuGA4xJ7vFkhBx8G0NQx65YQgT/nzRA672SFyF0CeKE00kht
kcPbPql6i6fbqzgEmuwePoAhAkcQ0LyVNwYHQo8BraiJa0sevHZhgOvuhLH/2sh7
kTU0edqsT76yxi42GNtqOByc7qLvlj+L9aGufyQl/egHI9ycPKrVmNoNeksjBIOQ
EcrwwECJM56mzh+Zpi98I9Ja8Taraw==
=P+fK
-----END PGP SIGNATURE-----

--gAes5fkevpu9MOKk--


--===============4261259645079741666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4261259645079741666==--

