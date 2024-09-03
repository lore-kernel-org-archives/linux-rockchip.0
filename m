Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0C88CD13CF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rzBGyKvqdP9lKfFglV6V726c41ppyUdcAFVgmZAkU0w=; b=SnrRE3LmkE2XeEzsj9BO33hPnS
	ucG0/ELbZBj1p4IGScTG6MzaNsFE9ilo3mTOMet9TJN6QQmtCqET0P+lVvpPno20UFv2gh8qv9Wr/
	2BFilumUEBo/1MVu2F9JUyyvsfK2cmyXTJnSgW7lr2z0y4Isk+nNbzvo95Hz7L3MdyrKxbTavYBTP
	G8aRxcoW6eLr6MawbO4GtsR8y6CtjhjmqdBB0b39rrzs2++B2sGwFaV6z84hGPYJzSiA104bnPYN1
	4Y7Xdl8i7hqRZ6hmxLVL7oFVcSoUeaplJR0nhd3LLcEuukbejJu2AnZB4lwXuYiR0jTKBBWvVvpgf
	wWD1V1bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQ3l-0000000HDdC-2hSz;
	Tue, 03 Sep 2024 09:42:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPoM-0000000H8ff-0V99
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=EYTjoOJkjIwYAdVVKHZy2gVQxiNSIOvFe+qSZT9DiGE=; b=haWgCfZt18s28vL7yGHGWX/Iln
	vx9bhfut2lWyVBzUxkZFHpHwGrSQkvZpqctJ/SlWXEnL/3UAMHf96KADNEb01pzXLMdj8borf4kIS
	x7AWSfX/tjUtaRqjSOvdQJ79tJ1VMquSlveMM+oMdHj/aSS4aZun9+85zqrMcCROxh6DLtFKMQ6ku
	LmxaDdDFIC70WcYbjvheaiJtiDorVp/oFyMTbuGRwqX6+sjtJZxra+58/C9IgEkaI/WV/bHfBFm52
	t+GaTuL8C2uhpP9SYZG9YlK4si+eniiPZL1k3dxg4VgLcUsVXdKi0YTfcoSieiA21VQpwHcFQH1P+
	N1BckrYw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slPoI-000000081OS-484u
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:26:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPoD-0003qY-PG; Tue, 03 Sep 2024 11:26:45 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPoD-0059iY-6T; Tue, 03 Sep 2024 11:26:45 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id BC4CB3312BC;
	Tue, 03 Sep 2024 09:26:44 +0000 (UTC)
Date: Tue, 3 Sep 2024 11:26:44 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v4 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Message-ID: <20240903-competent-fervent-cat-43c5ac-mkl@pengutronix.de>
References: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102651_175285_C542F724 
X-CRM114-Status: GOOD (  22.28  )
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
Content-Type: multipart/mixed; boundary="===============1222056235490491692=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1222056235490491692==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eqyrqjxmrmfjzcdq"
Content-Disposition: inline


--eqyrqjxmrmfjzcdq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Sorry for the noise, please ignore this series.

On 03.09.2024 11:21:42, Marc Kleine-Budde wrote:
> This series adds support for the CAN-FD IP core found on the Rockchip
> RK3568.
>=20
> The IP core is a bit complicated and has several documented errata.
> The driver is added in several stages, first the base driver including
> the RX-path. Then several workarounds for errata and the TX-path, and
> finally features like hardware time stamping, loop-back mode and
> bus error reporting.
>=20
> regards,
> Marc
>=20
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
> Changes in v4:
> - dt-bindings: renamed to rockchip,rk3568v2-canfd.yaml to match the
>   first compatible

I forgot to update the MAINTAINERS entry. I'll send a new series, but
not today.

Marc

> - dt-bindings: fix "$id" in yaml (thanks Rob's bot)
> - all: add Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
> - Link to v3: https://patch.msgid.link/20240830-rockchip-canfd-v3-0-d4262=
66453fa@pengutronix.de
>=20
> Changes in v3:
> - dt-bindings: renamed file to rockchip,rk3568-canfd.yaml (thanks Rob)
> - dt-bindings: reworked compatibles (thanks Rob)
> - Link to v2: https://lore.kernel.org/all/20240731-rockchip-canfd-v2-0-d9=
604c5b4be8@pengutronix.de
>=20
> Changes in v2:
> - dt-bindings: remove redundant words from subject and patch
>   description (thanks Rob)
> - dt-bindings: clean up clock- and reset-names (thanks Rob)
> - base driver: add missing bitfield.h header
> - base driver: rkcanfd_handle_rx_int_one(): initialize header to avoid
>   uninitialzied variable warning on m68k
> - base driver: rkcanfd_get_berr_counter_raw(): don't add assigned only
>   variable (bec_raw), move to 14/20 (thanks Simon)
> - CAN-FD frame equal check + TX-path: squash, to avoid unused
>   functions (thanks Simon)
> - TX-path: rkcanfd_handle_tx_done_one(): don't add assigned only
>   variable (skb), move to 18/20 (thanks Simon)
> - HW-timetamping: add missing timecounter.h header (thanks Simon)
> - Link to v1: https://lore.kernel.org/all/20240729-rockchip-canfd-v1-0-fa=
1250fd6be3@pengutronix.de
>=20
> ---
> David Jander (2):
>       arm64: dts: rockchip: add CAN-FD controller nodes to rk3568
>       arm64: dts: rockchip: mecsbc: add CAN0 and CAN1 interfaces
>=20
> Marc Kleine-Budde (18):
>       dt-bindings: can: rockchip_canfd: add rockchip CAN-FD controller
>       can: rockchip_canfd: add driver for Rockchip CAN-FD controller
>       can: rockchip_canfd: add quirks for errata workarounds
>       can: rockchip_canfd: add quirk for broken CAN-FD support
>       can: rockchip_canfd: add support for rk3568v3
>       can: rockchip_canfd: add notes about known issues
>       can: rockchip_canfd: rkcanfd_handle_rx_int_one(): implement workaro=
und for erratum 5: check for empty FIFO
>       can: rockchip_canfd: rkcanfd_register_done(): add warning for errat=
um 5
>       can: rockchip_canfd: add TX PATH
>       can: rockchip_canfd: implement workaround for erratum 6
>       can: rockchip_canfd: implement workaround for erratum 12
>       can: rockchip_canfd: rkcanfd_get_berr_counter_corrected(): work aro=
und broken {RX,TX}ERRORCNT register
>       can: rockchip_canfd: add stats support for errata workarounds
>       can: rockchip_canfd: prepare to use full TX-FIFO depth
>       can: rockchip_canfd: enable full TX-FIFO depth of 2
>       can: rockchip_canfd: add hardware timestamping support
>       can: rockchip_canfd: add support for CAN_CTRLMODE_LOOPBACK
>       can: rockchip_canfd: add support for CAN_CTRLMODE_BERR_REPORTING
>=20
>  .../bindings/net/can/rockchip,rk3568v2-canfd.yaml  |  74 ++
>  MAINTAINERS                                        |   8 +
>  arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts     |  14 +
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi           |  39 +
>  drivers/net/can/Kconfig                            |   1 +
>  drivers/net/can/Makefile                           |   1 +
>  drivers/net/can/rockchip/Kconfig                   |   9 +
>  drivers/net/can/rockchip/Makefile                  |  10 +
>  drivers/net/can/rockchip/rockchip_canfd-core.c     | 969 +++++++++++++++=
++++++
>  drivers/net/can/rockchip/rockchip_canfd-ethtool.c  |  73 ++
>  drivers/net/can/rockchip/rockchip_canfd-rx.c       | 299 +++++++
>  .../net/can/rockchip/rockchip_canfd-timestamp.c    | 105 +++
>  drivers/net/can/rockchip/rockchip_canfd-tx.c       | 167 ++++
>  drivers/net/can/rockchip/rockchip_canfd.h          | 553 ++++++++++++
>  14 files changed, 2322 insertions(+)
> ---
> base-commit: da4f3b72c8831975a06eca7e1c27392726f54d20
> change-id: 20240729-rockchip-canfd-4233c71f0cc6
>=20
> Best regards,
> --=20
> Marc Kleine-Budde <mkl@pengutronix.de>
>=20
>=20
>=20
>=20

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--eqyrqjxmrmfjzcdq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbW1lAACgkQKDiiPnot
vG/ZHAf+O51SAV47j7T7YC6df1yEQPVMBhqcN4Z/J61mB5vKb8RadR0V6+H1/ULx
gjasA2OvFUXnVx27BN7FFwMiiDYh7YHJkc7Fn5mQHQFmRew8AToNj5hxfBJak1PW
wJ4FtznPhETWfHt2Zb9XwdlOEa1iD5zIo5ib/6LJbxdHUZKrQm5da1DulHChnKcG
/06FiW1zoLHnO83AsR/RDdccf2XS99hZlm9fuSIpb/mGq6glAJ5lRSWDRS3/VBYC
EsPPWLLK6G7omsgeAXCPJESWORg4vqeKkeR6x8lY4J49FbO++HlPZTMm+2jUrBAJ
f9HDXt9wuGu/9UcH+0btqZiHSklQUA==
=7FIz
-----END PGP SIGNATURE-----

--eqyrqjxmrmfjzcdq--


--===============1222056235490491692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1222056235490491692==--

