Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7371C04A94
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 15:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N2Fhd1jo1M1ELyrBRVSLmaTBx0V3etdrLlOY61HodDw=; b=Qn+EdQnzTCvdHhNQyZw3s9GzRK
	PsvteKdJFQorxlp/eNQrgaEIiwPN5B0ct8nDTuVpXIHgAb4fyy1wQSnLMJTlU5QSIRWUAD2+FbGLJ
	baVUWncpsmkJKvUWBiO5Q5LyfkjLOI3M9Cn0uHDiiythkiTCwrU1zgafKnvVDLlBmwUspShX1yvuC
	aPJ/kY85cV4QMumikhngppXVnMtCC5N1ZfMp0Krmcr2Qd9aELlqflp7y2U1soNretsD5ktQRGqVzR
	N7tcwVjMuE9uscubYNFD+Kth7XXWJXCDLX+2F1xeZbLOKPYFBFCW85qKDR/HlUM1P/3gCa3iD5RQp
	R6e3e5vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrp8-00EP03-11;
	Fri, 21 Jul 2023 15:13:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMrp6-00EOzK-0Q
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 15:13:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6BC9A61CE8;
	Fri, 21 Jul 2023 15:13:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8F97C433C8;
	Fri, 21 Jul 2023 15:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689952418;
	bh=b33sDAISkKV45WBEX5IzlIU/TjTS8gTHgqCN2HMCJ1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X5x1zqYUlFeJQgBW14/FU/BH5BY6Z8FahtYXhYpCV+yrsl6GOPj37FPHX1DNqt8rG
	 NrmPi+JUSk+okxxJeGLkoV7duC/S+AalncspSPAep/ZUYCCFh0dokU6uyTs7fE4w2r
	 dQa4sK6WZ5us3RnkR09u1ExVBeexW8WU+rdJdBjDnCwf72+eLZeCpTg5KVANZwrtFw
	 5aGpZucnNTCg4T5AjT3awfcbDSoZmJTOV7/2hUORUPP5BNg+ySyPfC8wMonmKqPeum
	 mgTHS1ONhEzly+3Mk6ZWjUwBE3PVbscsltaOnwctLw4YdLWCxvSYc9Zxsd0JVDDoDH
	 /Ye0R0Kc7EqmA==
Date: Fri, 21 Jul 2023 16:13:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations
 with RBTREE and MAPLE caches
Message-ID: <205a83df-c67b-457f-a9bf-a9c6def4bb3e@sirena.org.uk>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
 <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
 <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
MIME-Version: 1.0
In-Reply-To: <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
X-Cookie: Do, or do not
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_081340_208277_0739583D 
X-CRM114-Status: GOOD (  13.80  )
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
Content-Type: multipart/mixed; boundary="===============2710857245421892143=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2710857245421892143==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MvLmq+n55EGfR3CH"
Content-Disposition: inline


--MvLmq+n55EGfR3CH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 21, 2023 at 08:07:28AM -0700, Guenter Roeck wrote:
> On 7/21/23 08:03, Mark Brown wrote:

> > Actually Guenter and Dan have made the required updates to support this
> > so the warning will be gone soon (hopefully Dan will send his patch
> > properly shortly).

> Do you plan to revert this patch ? If not regmap_init() would still fail
> for the affected drivers, even after my and Dan's patches have been applied.

Yeah.  You *can* use the dynamically allocating caches safely if you
ensure that no new cache nodes are allocated during I/O.  I'd not
realised people were actually doing this.

--MvLmq+n55EGfR3CH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmS6oJwACgkQJNaLcl1U
h9C2ZQf/SeZqv8XIiU1U2sg8EbxhVckHThG0e9cFL7zfYTG8LUV4IFgLGOUejX29
+/Ujqt+3kfeb31VqLKjBMudpvYSKl8WAofq1zaNCJwVzZj9azZeZIdDSM5LHcMfq
Uek47AlWQWTY1ZkS2dNY02KB0SnSv/3wCNkV2O41n9OpSle3McC0FHCJzD4K19Tp
z2XYic3KnoJEgshPGmOt3z1rqqtTjjXTLwNkDxWBJqJduV+Ml5vCUd02LqD2/j7X
ZgYyyCl7GtHXhtOHpBCTQz3M1vDSAlOafTDQSlX54849DYIbMtb4k3yqRGBggKoh
wjsRzQkyBUgNcgEIRjmAkhEZLXDY4g==
=ELvA
-----END PGP SIGNATURE-----

--MvLmq+n55EGfR3CH--


--===============2710857245421892143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2710857245421892143==--

