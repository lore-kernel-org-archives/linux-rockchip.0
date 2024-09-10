Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8949CECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 10:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWB9El40qeAqYbKBV3rdop/AXY0Jo0G3fZa1FLxtkb0=; b=Nima0BM6UmFE6h8z/wIPff7ViP
	i7XUMI06yzMd0GhZdMkVn28Uy6YLbsM841QM3A7I/uJrL67uqIoL5IcXoBuf9v/hxoOb2f+3/R+YU
	9TswlXcNME+S+NsUmxlYpDZ2hWUcF08inJULLb6BbDJsfi6Pg5U1ZTbWDGaeRuibqbF0bsZXKo2Tm
	XB4DxPpKjIH+4akD4zq6oeygIb4O4Wf+0Lucpgztzblt3zGHBmwfgMOSVVFTjX25/jvJl+njDc7Gn
	/J2Y2ZOR+1JOEFiD4QGU3+C2RI2hg2F9tMwH+G0hksWCvKQQj07x1STrDsh3kNkVDb5vqOsfGa5cH
	2Wc3eLuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snyaq-00000005KAO-1OVD;
	Tue, 10 Sep 2024 10:59:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snyZF-00000005JtH-0kj5
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 10:57:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1snyZ5-0001iF-C4; Tue, 10 Sep 2024 12:57:43 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1snyZ3-006sM6-QY; Tue, 10 Sep 2024 12:57:41 +0200
Received: from pengutronix.de (pd9e595f8.dip0.t-ipconnect.de [217.229.149.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6B267337707;
	Tue, 10 Sep 2024 10:57:41 +0000 (UTC)
Date: Tue, 10 Sep 2024 12:57:41 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, llvm@lists.linux.dev, 
	patches@lists.linux.dev
Subject: Re: [PATCH net-next] can: rockchip_canfd: Use div_s64() in
 rkcanfd_timestamp_init()
Message-ID: <20240910-therapeutic-olive-turkey-73dc3c-mkl@pengutronix.de>
References: <20240909-rockchip-canfd-clang-div-libcall-v1-1-c6037ea0bb2b@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240909-rockchip-canfd-clang-div-libcall-v1-1-c6037ea0bb2b@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_035753_237721_984BB031 
X-CRM114-Status: GOOD (  12.06  )
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
Content-Type: multipart/mixed; boundary="===============1163005142134557664=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1163005142134557664==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="25ff24i24dga7xbo"
Content-Disposition: inline


--25ff24i24dga7xbo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 09.09.2024 09:24:25, Nathan Chancellor wrote:
> When building with clang for a 32-bit target, such as arm, a libcall is
> generated when dividing the result of clocksource_cyc2ns(), which
> returns a signed 64-bit integer:
>=20
>   ERROR: modpost: "__aeabi_ldivmod" [drivers/net/can/rockchip/rockchip_ca=
nfd.ko] undefined!
>=20
> Use div_s64() to avoid generating the libcall.
>=20
> Fixes: 4e1a18bab124 ("can: rockchip_canfd: add hardware timestamping supp=
ort")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

A similar patch by me is mainline:

https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/=
?id=3D9c100bc3ec13914f9911a937ec5b38182a5c3d64

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--25ff24i24dga7xbo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbgJiIACgkQKDiiPnot
vG8g4AgAiBik9dV5HcawcjdwbwyUqH/9YsohijhBpU0b0WuBDp/79XH3o4yu3jIv
C8JcMkL8C9D6bSCdcgcbV94/qzeiBpBAGwRPqn+M+VyILvV0rkO76Em4vmLiCK/G
uSJLElidOCNkLWkGOtVPH3k1lc90du2ZJh3peQ6V9E0tbv0RJamKrnRgIFiQP1Uf
K1Ji2W0yk0VArkepwqO/rdVysFLoLJVtbJB1mHd0sK/mQ/M1PrbP2KAgWmMfv/4b
YYrbgYMMcIhoprVc1ISs3ChOVywIlV6EvQE8G8zn0tYWIWARgcI7HpmXkpzoaAIl
JOWrOfTk6792XowID33b/+Fni2RXYA==
=FMZt
-----END PGP SIGNATURE-----

--25ff24i24dga7xbo--


--===============1163005142134557664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1163005142134557664==--

