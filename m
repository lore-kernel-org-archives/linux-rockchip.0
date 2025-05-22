Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DC91C54756
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 08:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GQWTHXxR23k6wCMrMbUfnZE2OjFeRX6cIjyfslFmw3g=; b=4zTDEyPYPyWlc1Eh8KK+8GSfJy
	fAdiL3N1eLJxp62bVt+JPdiC8/tPHlknNxEVOxtv6e8/V4BYLVaWcIjeY6wtyfGZ2UXhqm4Aily3d
	Sh/hzyJ/aqN42qF5iMbwi3XoBTaIPDbLJiH2VOPyUJFkR6LIv0EBszOz4WHmALpqAK3MR4cgfqvTz
	yMNZqixdPpao47JzK0mX2l6ygwfOsf6Dj0y+VnncIiEv52CiSdZCtZqlLTp7Lv6UBnj9MK69p7O6U
	a8mWxlxw6FvYAuJHwwyVPWG6Qo//Y0CCnWrpGsJJn33hGCMPJLEYxqdufp4mL/DRywvS7PPU0HWY0
	xJ8YXtDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0x4-00000000EM5-0taL;
	Thu, 22 May 2025 08:06:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0kq-00000000C6I-31jy
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 07:54:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI0kj-00037i-NU; Thu, 22 May 2025 09:54:09 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uI0kj-000hFH-1A;
	Thu, 22 May 2025 09:54:09 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:2260:2009:2000::])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6662941714B;
	Thu, 22 May 2025 07:54:08 +0000 (UTC)
Date: Thu, 22 May 2025 09:54:06 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, cl@rock-chips.com, 
	kever.yang@rock-chips.com, linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: can: rockchip_canfd: add rk3576
 CAN-FD controller
Message-ID: <20250522-ultra-anaconda-of-engineering-b70332-mkl@pengutronix.de>
References: <20250522074616.3115348-1-zhangqing@rock-chips.com>
 <20250522074616.3115348-2-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250522074616.3115348-2-zhangqing@rock-chips.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_005416_754397_51970B5E 
X-CRM114-Status: GOOD (  10.28  )
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
Content-Type: multipart/mixed; boundary="===============4267614819024791126=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4267614819024791126==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="el3mxqe2wkjylcyv"
Content-Disposition: inline


--el3mxqe2wkjylcyv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 1/3] dt-bindings: can: rockchip_canfd: add rk3576
 CAN-FD controller
MIME-Version: 1.0

On 22.05.2025 15:46:14, Elaine Zhang wrote:
> Add documentation for the rockchip rk3576 CAN-FD controller.

This should go into the existing rockchip,rk3568v2-canfd.yaml.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--el3mxqe2wkjylcyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmgu2BoACgkQDHRl3/mQ
kZxoWggArVZQebS0V1C2TAYZ7DUzq/S/iKGXct7O+HQ5EPqqVj4F+UFWZCg2iipl
kAjfp2wQwHDEjyKhF4nHiyAvdNzhszSPSsSJ1mNyOQlVdD2qoAbmo77mWLQ2t5Pr
ItlW3UvSpa0r9aBLznVabAjLarhTCFUoRbF4VJJcm2hCb7s/ZTfUC2UyOLJ+55vO
byQdkco3aGzexYU7DYwbFmYPcmz588qdUR2TsoDlJChJLZrghSZKZICY/IhJ+Ii+
3lq2nJCR1MPExVq2Qf49FjVXYlybt9qxilf9EUYhBWhDWJJVLiRU3MEDjuTdus5T
ktILX+FYsjoDFsss95L55yEwKAvJZQ==
=jbb9
-----END PGP SIGNATURE-----

--el3mxqe2wkjylcyv--


--===============4267614819024791126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4267614819024791126==--

