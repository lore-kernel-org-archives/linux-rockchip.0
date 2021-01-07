Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592BAC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 14:24:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9E2E622EBF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 14:24:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9E2E622EBF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FyIqHbh2sTHfdqF6lkmx024OY3PqBDu2GOa+OMGwU9w=; b=Cun5QAFwoVzT+eTwOvvuBxGr4
	MlyT9t+jQGZpAxZw4gd4Ul8yAw0UNjF8EFm0Nwt5kaoqwC/NgeTm6I6AX85QT2qLYksgJY5D0vE5W
	1NWzYeYL+Mgc9J/XJS8feSnQRPFbtFLNcovJbYP9RjmI+jICeYmyXXzNdpHYjXrKTIqiA3o9BKqZU
	GOwXXra9wVjxuDQUHsJCPJ3117Z1msuv6wvEUxNlbt5zEg3a+DFHCwT37ijAZ0GSIMrdUYUYAA8qX
	tFcqfC75BLT0YRPDXV1AMtppexGf5sUZEtfpQSUZSmyCuy81JuGaPKxUvO521lFl9e4Szw2NdJx/E
	eaFhURISw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxWDH-00017l-Sh; Thu, 07 Jan 2021 14:24:31 +0000
Received: from relay13.mail.gandi.net ([217.70.178.233])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxWDD-00016b-62; Thu, 07 Jan 2021 14:24:28 +0000
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay13.mail.gandi.net (Postfix) with ESMTPSA id A88428000D;
 Thu,  7 Jan 2021 14:24:23 +0000 (UTC)
Date: Thu, 7 Jan 2021 15:24:23 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add RGA support to the PX30
Message-ID: <X/cZlxkQUKRY4Hf+@aptenodytes>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-3-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20210107134101.195426-3-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_092427_332534_C7448AF4 
X-CRM114-Status: GOOD (  17.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Jacob Chen <jacob-chen@iotwrt.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: multipart/mixed; boundary="===============6617109668598628105=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6617109668598628105==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IppPXotpNrpDAaCR"
Content-Disposition: inline


--IppPXotpNrpDAaCR
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 07 Jan 21, 14:40, Paul Kocialkowski wrote:
> The PX30 features a RGA block: add the necessary node to support it.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts=
/rockchip/px30.dtsi
> index 2695ea8cda14..e056d1c32cc8 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1106,6 +1106,17 @@ vopl_mmu: iommu@ff470f00 {
>  		status =3D "disabled";
>  	};
> =20
> +	rga: rga@ff480000 {
> +		compatible =3D "rockchip,px30-rga", "rockchip,rk3288-rga";
> +		reg =3D <0x0 0xff480000 0x0 0x10000>;
> +		interrupts =3D <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;

Looks like this trailing 0 shouldn't be here. Will fix in v2.

Cheers,

Paul

> +		clocks =3D <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> +		clock-names =3D "aclk", "hclk", "sclk";
> +		power-domains =3D <&power PX30_PD_VO>;
> +		resets =3D <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> +		reset-names =3D "core", "axi", "ahb";
> +	};
> +
>  	qos_gmac: qos@ff518000 {
>  		compatible =3D "syscon";
>  		reg =3D <0x0 0xff518000 0x0 0x20>;
> --=20
> 2.30.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--IppPXotpNrpDAaCR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/3GZcACgkQ3cLmz3+f
v9Gt2gf/arpDpZLEP4HaikNA893L8x+KyyjlaREZnnG5cbWbSWcvqi7dA/EpQPr1
PzVNIOV0cGyeW7niPdksrjZ6TW6ZrbjzjsujtBg4Pk/o06AAnXvJavNSXJRwlxy3
ges/kOzUgpIaDow+4TVMUFZaF5OfvrPI4fldt4kTEhgdWWAmi+JqkMusHt4PY8/s
O92fjtV/VbPQKsTdXz/wUvw4u9dbWCiCLmN+2VQmWAgXrkh4QwZ43P3iRtUCmwBB
F59EiFpXhCw2z0s/uedGkDp5M2SY+ENEXGCwFLSIv/FkS28kMmSjmO7D2QtnCDsE
MDisahYUzr1e9YvbPgmCDn0i7GyyUg==
=+GZK
-----END PGP SIGNATURE-----

--IppPXotpNrpDAaCR--


--===============6617109668598628105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6617109668598628105==--

