Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B337CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 08:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VpuEx/FIHz3kL9wj5rv28+tt69aQ56zz8iHYVikwvOQ=; b=m4KkQNdPmWvJACqL7CLg+Lq3ve
	qwhQdIgMxbHoEFmnRUseTFyHA1ttqaxQ9//U4N740XNjp5TSpluy3pobJdPPNHzrQipjfcbCTPoo4
	BhydLZTVEFty+YjeZGXsLwp1VAukeNTn/E7HFreL5NoqBt4M/eYBoU2n9+QwfXaNmtDeWoXSG/pNk
	mVl3bdUgjUeoYC1eDWKpoEwMXhjUKI6MYh4fvd+5Uh9MwRTvA8iwZB57/zyzW7r9Ji9/DG5QpWmUm
	Ap//IHiNq3q7IQiDbr7/CKTVtBckwnxmWK9HkFMRGSr+shY0u+VeVOzX8jkZLwTOcXw+COlsSxmB9
	z/CgCZ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6ay-00000008OlS-1IA1;
	Wed, 12 Nov 2025 08:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6av-00000008OkO-1NaR
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 08:52:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vJ6ao-00035C-Q6; Wed, 12 Nov 2025 09:52:42 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vJ6an-0003Ix-2E;
	Wed, 12 Nov 2025 09:52:41 +0100
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6998949D946;
	Wed, 12 Nov 2025 08:52:41 +0000 (UTC)
Date: Wed, 12 Nov 2025 09:52:41 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [RESEND PATCH v8 0/4] rockchip: add can for RK3576 Soc
Message-ID: <20251112-intrepid-toad-of-prestige-2e67d5-mkl@pengutronix.de>
References: <20251112015940.3695638-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20251112015940.3695638-1-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_005249_360882_4178F653 
X-CRM114-Status: GOOD (  14.19  )
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
Content-Type: multipart/mixed; boundary="===============5336974247906099021=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5336974247906099021==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tm5vc7kxorjsnqka"
Content-Disposition: inline


--tm5vc7kxorjsnqka
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RESEND PATCH v8 0/4] rockchip: add can for RK3576 Soc
MIME-Version: 1.0

On 12.11.2025 09:59:36, Elaine Zhang wrote:
> rk3576 can is a new controller,new register layout and Bit position
> definition:
> Support CAN protocol.
> Support Dma.
>
> There are major differences from the previous rk3568.
> All errata on the rk3568 have been fixed and redesigned.
>
> RK3576 CANFD requires authorization and permission. The software
> code is not open by default and needs to be authorized separately.

If you change your patches it's not a "RESEND", but a vN+1.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--tm5vc7kxorjsnqka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmkUStUACgkQDHRl3/mQ
kZyukgf/byzx++cihi0V3YP/622WNyMq4kHAykcsrenUFbYIK6lcjLznqueFBqYI
QFgSFML86Yfyw+jVB3UU4vXbP4Eq4qoqeppCzwQe4mOlYuoarCrjHEla8mtc/IY+
6hzitJnPpN+aahQIDO4KupHNRWnRlJEPmwKLr1ZsjBRfOuG1znCeyKlOco7JKNPe
yIqRdEk8DQcRcXiU8ycqn7/5a2cU25YRK4sdHqXQVLYbLbZ8rey095mIN8A4L5EY
yQKDUcS5pQ/H4cxwPNahP3aDpxqmOO4ut0wAW5hvBaLkpuPwBiLTJ41Lg13rXwKA
6SAfoIhar29+3EGW0YEDV+f6Js+JPg==
=pjXs
-----END PGP SIGNATURE-----

--tm5vc7kxorjsnqka--


--===============5336974247906099021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5336974247906099021==--

