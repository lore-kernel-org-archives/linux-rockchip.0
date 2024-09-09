Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2879DECE579
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 11:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2E8n/TrLVWikBO7hD+7/YLl98MGirKGcW5BSBXPs0jA=; b=Bbey2QwfbqepdMJM5DnQGzEcbH
	Vt+4d1CSBTOA2TTUhFn3FyIt5jCiHN1BAO/YEVBDM8XO478jDkvNsnOVrjegFUlGjPWF6LGR3h9uz
	PmsP+G5x7BOruvPZYNqhGLK4iSgucU3MRUAe3Xr5wfrFRYvD+GUfok29M+TYRKZfpcae0XLLMsv/4
	+yrSBiEa03x1aVqROT7B4QGxv2NQ1ksPP9VqPVMoCF6Xidf/RGwN6nr46KWFfay6aBeEjOrAuL+E8
	qLmyt+OMl9QC8jCMaa+Kb5kNE4t+2VkxrfEIaczUlTefspfEzBxCnJW3tc+HQ+TExtCPprBXQpGMg
	Mt6ETOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snc83-00000001acf-0cxF;
	Mon, 09 Sep 2024 11:00:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snaxC-00000001NSr-01q8
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 09:45:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1snax1-0002Uv-3i; Mon, 09 Sep 2024 11:44:51 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1snax0-006cVw-05; Mon, 09 Sep 2024 11:44:50 +0200
Received: from pengutronix.de (pd9e595f8.dip0.t-ipconnect.de [217.229.149.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 9FD24336781;
	Mon, 09 Sep 2024 09:44:49 +0000 (UTC)
Date: Mon, 9 Sep 2024 11:44:49 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Arnd Bergmann <arnd@arndb.de>, kernel@pengutronix.de, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] can: rockchip_canfd: avoids 64-bit division
Message-ID: <20240909-dark-seahorse-of-support-b2206a-mkl@pengutronix.de>
References: <20240909112119.249479-1-arnd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240909112119.249479-1-arnd@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_024502_250202_C6D574B2 
X-CRM114-Status: GOOD (  14.06  )
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
Content-Type: multipart/mixed; boundary="===============0761293615880594382=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0761293615880594382==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vw4xxvfo7kzbvp2i"
Content-Disposition: inline


--vw4xxvfo7kzbvp2i
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 09.09.2024 11:21:04, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>=20
> The new driver fails to build on some 32-bit configurations:
>=20
> arm-linux-gnueabi-ld: drivers/net/can/rockchip/rockchip_canfd-timestamp.o=
: in function `rkcanfd_timestamp_init':
> rockchip_canfd-timestamp.c:(.text+0x14a): undefined reference to `__aeabi=
_ldivmod'
>=20
> Rework the delay calculation to only require a single 64-bit
> division.
>=20
> Fixes: 4e1a18bab124 ("can: rockchip_canfd: add hardware timestamping supp=
ort")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I've already send a PR which replaces the division by div_u64(), so not
as elaborate as yours:

| https://lore.kernel.org/all/20240909-can-rockchip_canfd-fix-64-bit-divisi=
on-v1-1-2748d9422b00@pengutronix.de/

I'll port your patch on top of mine and include it in my next PR.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--vw4xxvfo7kzbvp2i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbew44ACgkQKDiiPnot
vG9qfAf8CTk2RmeHPrfJav3PuBHG1Q2oYZqWnA01UAaihzEzI66cuAwP2jpOtInE
epFUOo/Lj3yG/Qpt5dpcs1coQmN1LrVengCjQlX0KCtZtRLOCv29UULyus8dPrqt
5zYCXeAtAe6XL9ou90Wo3gkaVldVQ2xndwBmq0Cd4XI5hxpj88rHQcpHiNpQAE8J
bEyNLPgchY7prDi3elH255rFWfRhIdXHztM/HqRj1d/P6Rp3O1gEnpAL6YjO1gf4
bsV1Z64Hci2aZFCzuy5fMy1SHCwLu65LuBwvrHBMO8zMRW2eyuBvto2p22kriLTv
gmjDucroH7Sd9tffjRJQeU5MmMeTKg==
=93jr
-----END PGP SIGNATURE-----

--vw4xxvfo7kzbvp2i--


--===============0761293615880594382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0761293615880594382==--

