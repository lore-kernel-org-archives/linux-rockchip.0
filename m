Return-Path: <SRS0=17ih=B6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967D8C433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2020 11:44:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61B2D2054F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2020 11:44:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1okatFFd";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ti.com header.i=@ti.com header.b="wumWcYu2"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61B2D2054F
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wa1dVxvA3nbD2IvD0vfcoujdU7U86I6azayZWbiypBI=; b=1okatFFdDsIsYj04Qev0D6sbt
	Kfnk+im1UOwoGXHDKCpOtxYSZXwPIEGc4g7hJvy31RbKJ+/WDx5TpcAWXe3h7MxefBWFOScafT9Z1
	umir+rze/0iGt6v6E6Qw1YjTMMsmn3YZPPjcaKYGMyFBYRhxPdlqqXKqg++DYQQg+a+liAjNs06ET
	BFQG+V6ybutdXO6sT/06raPkWXsp81JyXl9VdbhFFglRcDN4Yk6fYspz9rr0gOsQontQuOFUKaolD
	QYsmuQQpy1Crs2NoVQDs26IN/5nwr/6pWkCVqPs/3quNe4RMhuR6gvvSllmiVIBs2bbDgv2zpvaiU
	fg8L9AUvA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8izu-0007uV-QO; Thu, 20 Aug 2020 11:44:47 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8izr-0007t9-V9; Thu, 20 Aug 2020 11:44:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 07KBiLjh034621;
 Thu, 20 Aug 2020 06:44:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1597923861;
 bh=KekPuX5bW5OV7WGA42Ji5+dWGwrpNIKAh0IFJGWPkgw=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=wumWcYu2C1Uab0K7/BhHt6am8WARnusXkgQxTV42cLperHvWAMr73TNd+wDsAw3wy
 hNKVGdTP4DXYch+0pLpm6EayzBWxfb8hWJXgwCbJaBPkYV500cFpib37witpJiU5fe
 I4uAGHEHelb5GRoGXgpVe6o/YlhZ9+BiuU3VMDj8=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 07KBiLbD128554
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Aug 2020 06:44:21 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 20
 Aug 2020 06:44:20 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 20 Aug 2020 06:44:20 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07KBiK7d068400;
 Thu, 20 Aug 2020 06:44:20 -0500
Date: Thu, 20 Aug 2020 06:44:20 -0500
From: Nishanth Menon <nm@ti.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: Reformat PCI ranges/dma-ranges entries
Message-ID: <20200820114420.sjlqvn2tbpa7vcbb@akan>
References: <20200819221750.2055932-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200819221750.2055932-1-robh@kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200820_074444_120185_F9A6A0BD 
X-CRM114-Status: GOOD (  13.85  )
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
List-Id: <soc.lore.kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Michal Simek <michal.simek@xilinx.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 soc@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>,
 Tero Kristo <t-kristo@ti.com>, Robert Richter <rrichter@marvell.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============6644202820939358028=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6644202820939358028==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jgbt6anitnjafjun"
Content-Disposition: inline

--jgbt6anitnjafjun
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 16:17-20200819, Rob Herring wrote:
> While bracketing doesn't matter for a DTB, the DT schema checks rely on
[..]
> ---
> SoC maintainers, please apply this directly.
	  [...]
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/d=
ts/ti/k3-am65-main.dtsi
> index 9edfae5944f7..2c762e725d89 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -678,8 +678,8 @@ pcie0_rc: pcie@5500000 {
>  		power-domains =3D <&k3_pds 120 TI_SCI_PD_EXCLUSIVE>;
>  		#address-cells =3D <3>;
>  		#size-cells =3D <2>;
> -		ranges =3D <0x81000000 0 0          0x0 0x10020000 0 0x00010000
> -			  0x82000000 0 0x10030000 0x0 0x10030000 0 0x07FD0000>;
> +		ranges =3D <0x81000000 0 0          0x0 0x10020000 0 0x00010000>,
> +			 <0x82000000 0 0x10030000 0x0 0x10030000 0 0x07FD0000>;
>  		ti,syscon-pcie-id =3D <&pcie_devid>;
>  		ti,syscon-pcie-mode =3D <&pcie0_mode>;
>  		bus-range =3D <0x0 0xff>;
> @@ -710,8 +710,8 @@ pcie1_rc: pcie@5600000 {
>  		power-domains =3D <&k3_pds 121 TI_SCI_PD_EXCLUSIVE>;
>  		#address-cells =3D <3>;
>  		#size-cells =3D <2>;
> -		ranges =3D <0x81000000 0 0          0x0   0x18020000 0 0x00010000
> -			  0x82000000 0 0x18030000 0x0   0x18030000 0 0x07FD0000>;
> +		ranges =3D <0x81000000 0 0          0x0   0x18020000 0 0x00010000>,
> +			 <0x82000000 0 0x18030000 0x0   0x18030000 0 0x07FD0000>;
>  		ti,syscon-pcie-id =3D <&pcie_devid>;
>  		ti,syscon-pcie-mode =3D <&pcie1_mode>;
>  		bus-range =3D <0x0 0xff>;

For the TI chunk:
Acked-by: Nishanth Menon <nm@ti.com>
--=20
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5=
 849D 1736 249D

--jgbt6anitnjafjun
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE+KKGk1TrgjIXoxo03bWEnRc2JJ0FAl8+YgwACgkQ3bWEnRc2
JJ0WIg//YBZVg8WDT/O8r7i2UkktHsq0s0v55hHAOfcl47v8FQtw84RgUhFCn+9i
U/VpPbU7ZvIUlpbADflEHrnXkYfhikLBFJ90DEde63M1DkFyvjnMXJVImmuiK7E7
WbWZpo21fRKfbFje9l6upMgfiM4ZB7GS/NkKssavEX22oaG5+GTjNjEI1EJijNG/
K0hD2jvRdQ59eyfdvKL8ezXthEaJdCyWuREOKCsE/VUDHC/KgXcpZjLA7BICegYn
J/UeEhSJGtV2UaUkU621yg3gRF2f7on236lG4cs4QnYIzACww4MA2r3UdM+zsOI0
RJR8/LbNzBtfzPUmyQldvvBKQ80HtgMe0jhuFGflT4rjzbMQXYbOdIFR0A2Jhw2/
tt2YH0rmxV3rhRLsPtcmltMQW/2iccVbvHZaz8xQ9HirP2XaAvhTUfG5ayFTD3jb
uxU9HV/SMapoo56gvFRkg09K4vNAtTwc8TZLOo29FbKSv0+PUXFDBODeygVgNYxL
RI8OFjIgAiWTgAow/5CNkPwKLjR7F/dMj5T2hX1WVjwD5ds1bdl6dJP6WejEs3OU
iEYUy5PR23cZoVrH6V4FMcyWv/6D+7C8UzHIqzkUulviPpSofpb8muTAlsyAe9gx
YZPxS3DHyObqDoJbspVmD2acwVGz6KQBvvyEqvsC42qkJ0T5ByA=
=TsAH
-----END PGP SIGNATURE-----

--jgbt6anitnjafjun--


--===============6644202820939358028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6644202820939358028==--

