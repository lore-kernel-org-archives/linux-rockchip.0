Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4275BC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 18:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9+743qF5knEpz4buXH0PoYS208c39bO3nV96mwAouhQ=; b=mWQIv6hOfBpwUx5eUSmd+xlJf9
	6QuFAwLSzictNbiToiYAaotPq6dSG7+bLDePlbfpZQ/kjGcTcUMu6CKNDXqVWC5YAKFJfUdavH32A
	k0bx5K78uy9pOuH3NULrI81akbNPtiO+LvjgQFQetsXul0/FHX73t9p+Z/FZeAe9WSj69bXHyIvma
	0Mxt1W752/gIJZMenF3pLA6UGIimsgJo0bwRa8qsAF8GLeb/u5SS3SLvZCQcuOsur+LM4HoPcNio7
	0bLmJgvvpUtKFxY1UQSmiMNQuWw/FArRQq+FfQIQDssbJsY7ef+s6qCH/P67PJg/n0nTZoatTFDXQ
	tpBpbjoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHSQx-0000000DfXU-0zAV;
	Wed, 12 Jun 2024 18:10:55 +0000
Received: from out-178.mta1.migadu.com ([2001:41d0:203:375::b2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHSQt-0000000DfUy-238v
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 18:10:53 +0000
X-Envelope-To: ezequiel@vanguardiasur.com.ar
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718215845;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7Wwh90v24Qe0BQdwYakUsPolSiapUti7KGb/PL1W8ms=;
	b=tQXH8/Xq1QwVd4wMRAzNCmzYZzKLwohN/fYu1HQM4kXHE6+bf2CX1BhmaEvz3S/Hg3SPKy
	87DEEJ6ISuSnNmwLRBcaqGex7Bxy0nahTAxNfXA/B+VJ87tJWcgbu97vRj6gpo5TchKCPY
	mjpYLhImN/fkkrTqDuctfIyl/PIQxHa+WHB5fM3NFGtWxKQ+zBbN3kPV6sxOu4N3ZGIXC+
	8mrczhGNnlxVPOGPvff1s/5YuwwE2bOL1PfB7wITly/t5jnO/0Fq3dNP+pU/wBsczUIhVi
	26rDjcJfWZyO7caBLM/8sBaFKy6JEUViMJOwrqA5MyvSwrqRkK6+c8EHUvx1iw==
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: frattaroli.nicolas@gmail.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: liujianfeng1994@gmail.com
X-Envelope-To: linkmauve@linkmauve.fr
X-Envelope-To: nicolas.dufresne@collabora.com
X-Envelope-To: linux-media@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: kernel@collabora.com
X-Envelope-To: sigmaris@gmail.com
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: sebastian.reichel@collabora.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>,
 Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Hugh Cole-Baker <sigmaris@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v5 5/5] arm64: dts: rockchip: Add VPU121 support for RK3588
Date: Wed, 12 Jun 2024 20:10:30 +0200
Message-ID: <4207056.GSNtieVc0Q@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240612173213.42827-6-sebastian.reichel@collabora.com>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_111052_059757_8030E6A5 
X-CRM114-Status: GOOD (  10.16  )
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
Content-Type: multipart/mixed; boundary="===============3020987596073810891=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3020987596073810891==
Content-Type: multipart/signed; boundary="nextPart5992854.hoJakhlImG";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5992854.hoJakhlImG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Wed, 12 Jun 2024 20:10:30 +0200
Message-ID: <4207056.GSNtieVc0Q@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240612173213.42827-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0

Hi,

On Wednesday, 12 June 2024 19:15:45 CEST Sebastian Reichel wrote:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi index
> 9edbcfe778ca..e7e1b456b9b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1239,6 +1239,27 @@ jpeg_enc3_mmu: iommu@fdbac800 {
>                 #iommu-cells = <0>;
>         };
> 
> +       vpu: video-codec@fdb50000 {
> +               compatible = "rockchip,rk3588-vpu121",
> "rockchip,rk3568-vpu"; +               reg = <0x0 0xfdb50000 0x0 0x800>;
> +               interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
> +               interrupt-names = "vdpu";
> +               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +               clock-names = "aclk", "hclk";
> +               iommus = <&vpu_mmu>;
> +               power-domains = <&power RK3588_PD_VDPU>;
> +       };
> +
> +       vpu_mmu: iommu@fdb50800 {
> +               compatible = "rockchip,rk3588-iommu",
> "rockchip,rk3568-iommu"; +               reg = <0x0 0xfdb50800 0x0 0x40>;
> +               interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
> +               clock-names = "aclk", "iface";
> +               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +               power-domains = <&power RK3588_PD_VDPU>;
> +               #iommu-cells = <0>;
> +       };
> +
>         av1d: video-codec@fdc70000 {

Shouldn't these nodes come *before* 
jpeg_enc0: video-codec@fdba0000 
As fdb50000 is lower then fdba0000?

Cheers,
  Diederik
--nextPart5992854.hoJakhlImG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZmnklgAKCRDXblvOeH7b
bjdlAQD4lJfAZ+uWdf2M0bt3TgJkdY9aeTap7nRn/OtdhFmyLwD+KKaiUZBld2Py
aS3zD6719QKISeO69bc5PwdusH9GXAA=
=RLxZ
-----END PGP SIGNATURE-----

--nextPart5992854.hoJakhlImG--





--===============3020987596073810891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3020987596073810891==--




