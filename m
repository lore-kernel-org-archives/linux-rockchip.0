Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF12C47077
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 16:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dXLSiQUVN9BTdJvSf/76qrReUB+BGcK/EPRaQvbSiVk=; b=ddFM8c6t2F76cYiRiWPwjd8/cX
	y2s5AndjAL/4G+j3V/VmT0EkPSdukP4k1kuIV4aE5czNIcjHWkZF+SSkcmhlg1aasAyXbnTRzRi08
	YgM3heHUEanQRSmO3WGu61/IV67vFbGa+iZA4idJYbeMWP/lkZNDs5xX5GCBRKmbVnFdkv0liBB7Z
	+3i5Z+yr276gTvyRZBkzmNhwhtOUj4Aknsu/BugQ1uNYU70Oeuw3+ZXHFELxXPJ4NcQgmz0zfpnyc
	dVORx1FctBaeIPNdK59DULYOFmyOv3x4KMVRvnf9J9V10lKfJpXdvvKF7RSw084Ls5ICFfqEYGKhV
	HsjsTwmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rM9zn-001d37-04;
	Sat, 06 Jan 2024 16:58:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rM9zj-001d2f-2F
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jan 2024 16:58:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rM9za-0006Os-HC; Sat, 06 Jan 2024 17:57:50 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rM9zZ-000qUr-JR; Sat, 06 Jan 2024 17:57:49 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rM9zZ-0042J5-1d;
	Sat, 06 Jan 2024 17:57:49 +0100
Date: Sat, 6 Jan 2024 17:57:49 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
Message-ID: <urivnhzvsrqanux2lvvp5aodtjt76jn5jmnoqnjw6ueqqgz5ld@2xyyvmmlsxjt>
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_085759_755561_CBEF00C0 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============1093393193955043312=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1093393193955043312==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7gopfpgmsl7hdmwp"
Content-Disposition: inline


--7gopfpgmsl7hdmwp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

not sure who will pick this up. Whoever it does, please do

Subject ~=3D s/proop/prop/

on application.

Best regards,
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7gopfpgmsl7hdmwp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWZhowACgkQj4D7WH0S
/k6AgAf+IdovkJ77fbDI4QhGcZtxUmMzcNPYb3BLz9duBcXXk8qfKk1Wxkx0vHfu
ynoQTlZwv+Yh68caPvo77ilF9+yPLjmvhbtCpLlNigcjBNiNN8wdrAypjU2icYpR
FoTyY/2s0bvMtczNfncmpNFYeFfxgoayanHHmV2VYXiLl+keJB/uQ+U3MC0Oa1DM
hVoiACdSg6TJb0GeJKDPfqOfMYHrYxzUBkSytIDMHZ8i0TqzgIIv89YdMR+dX8ng
1XVXoZXuOecbCHX9DyybcY0o+Mz0PUSCJ0zRgyvCt151/VoHSJQ+c8lyIjRWQJju
C20p+jgXW9Wc4EX2I8JRYqxpyMZxsQ==
=gGlH
-----END PGP SIGNATURE-----

--7gopfpgmsl7hdmwp--


--===============1093393193955043312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1093393193955043312==--

