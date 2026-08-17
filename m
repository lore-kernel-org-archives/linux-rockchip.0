Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F35CC5B572
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2026 16:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KOHbr+92Hz9AITuUIIFxNZQAf5ehhX46xzdLjlsmOyY=; b=YGexKS+IUxjO2bo2MrLMyZaPno
	360ynscSPRWHU59Gl16rBpOpyLF6mLW/zZ7SE0uETIqz6rUlvTCN1x6Km0IcZ6Aha5doyzPeUOoXm
	avgziBwMn+3+ZBfVFIiwedo3cADj9/uw8bdOwC4sDsZpwnrkER9pDJ8XHWPyYbzXflMDwf1OAEaRB
	gHt47s9uUPJ7eTOzjcbs/2PvGTXUgfM0dI9Bhk/M1JFVWJ+LFnF/h9PXer4EZKjLG/0/Vw3sWWl/8
	94HOfY87cdRDxA01MpcNSR5ulBldXz07RFi1gg1C+M/uWGWevSvrqxnrBJKH1oaAi69uXWrnofbWY
	DqnWYBXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww07H-00000006VYT-2akv;
	Mon, 17 Aug 2026 16:23:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww07D-00000006VWM-2SVy;
	Mon, 17 Aug 2026 16:23:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A1B6A2006B4;
	Mon, 17 Aug 2026 18:23:03 +0200 (CEST)
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1ww075-001z6I-1m;
	Mon, 17 Aug 2026 18:23:03 +0200
Received: from pengutronix.de (p4ffb23c7.dip0.t-ipconnect.de [79.251.35.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 35B3B584E00;
	Mon, 17 Aug 2026 16:23:03 +0000 (UTC)
Date: Mon, 17 Aug 2026 18:23:03 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Cunhao Lu <1579567540@qq.com>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v6 0/4] can: rockchip: add RK3588 CAN support
Message-ID: <20260817-guillemot-of-premium-saturation-6b893d-mkl@pengutronix.de>
References: <tencent_7BAA0052C402BFFD26291A64198084E39107@qq.com>
MIME-Version: 1.0
In-Reply-To: <tencent_7BAA0052C402BFFD26291A64198084E39107@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_092311_778454_21192866 
X-CRM114-Status: GOOD (  16.35  )
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
Content-Type: multipart/mixed; boundary="===============0401426531345769943=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0401426531345769943==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ma3cqweawtb2547h"
Content-Disposition: inline


--ma3cqweawtb2547h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 0/4] can: rockchip: add RK3588 CAN support
MIME-Version: 1.0

On 30.07.2026 22:34:01, Cunhao Lu wrote:
> Add support for the RK3588 CAN controller.
>
> RK3588 integrates three CAN-FD controllers that are closely related to
> the existing Rockchip CAN-FD IP already supported in the kernel. The
> RK3588 variant is not fully compatible with RK3568v2 because the RX
> FIFO count register field has a different layout.
>
> This series therefore:
>
> - extends the existing Rockchip CAN-FD binding with the
>   rockchip,rk3588-canfd compatible
> - adds a dedicated RK3588 match entry and devtype in the driver

I'll take the first 2 patches.

> - describes the three CAN controller nodes in rk3588-base.dtsi
> - enables CAN on the RK3588 Tiger Haikou board

The DT changes should probably go via the rockchip tree.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--ma3cqweawtb2547h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCaoM1ZAAKCRDMOmT6rpmt
0izZAP4x4ZKMEz+dpfqacmemKCSyinUbnvUl0Sg46rKIkBXK8QD+PQDTtFldoneP
iYloyriCSVEzhFRqYdTN9pM8op98WwU=
=3CzL
-----END PGP SIGNATURE-----

--ma3cqweawtb2547h--


--===============0401426531345769943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0401426531345769943==--

