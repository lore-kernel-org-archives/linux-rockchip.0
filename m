Return-Path: <SRS0=E6vg=EH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52745C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 10:55:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 975432080A
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 10:55:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="sAVEWoQ5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 975432080A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lCaVQ4qKyo2kVGIarF1+uizT0lkfRpLhWfdZey+/LC0=; b=sAVEWoQ58Vrp22pJeLmdTaKQR
	wFr/8sRnV2JP+3kVePr2ewqahVxUUak71Ji0qT37NfCY9i/n5yUbtEddlvlD2ex7U1qAFBWEwgH7l
	2b7svjh4nz5eKhnDyRCF1MDo1A8bvfBjlW2jXUWHy3SevDhwrwCfpn7/+idOTbXNA4Y8U4/dDXBkq
	qI0T+Yd3+0ZbvapcsH/2mXSvXdIOlgG/uVp/3A1lDh0v1ryzkqXza3v+VxuVood26KB53B/eG+DHD
	Kn+PqXZIs7NikyEt6Z+AvrqCgGDoUMrE7pFU82QS5GonHvZDq6x6nLv0ckWKta5ed+pJzTbKc1Kt2
	AOqM4Fh2A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZB0e-00057B-Ka; Sun, 01 Nov 2020 10:54:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZB0X-00056F-Ef
 for linux-rockchip@lists.infradead.org; Sun, 01 Nov 2020 10:54:50 +0000
Received: from p57b773f8.dip0.t-ipconnect.de ([87.183.115.248]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kZB0P-00032L-1l; Sun, 01 Nov 2020 11:54:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-media@vger.kernel.org, Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v6 8/9] arm64: dts: rockchip: add isp0 node for rk3399
Date: Sun, 01 Nov 2020 11:54:36 +0100
Message-ID: <25468331.GQUMHoxoIT@phil>
In-Reply-To: <20201020193850.1460644-9-helen.koike@collabora.com>
References: <20201020193850.1460644-1-helen.koike@collabora.com>
 <20201020193850.1460644-9-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201101_055445_541520_2B986966 
X-CRM114-Status: GOOD (  17.35  )
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 zhengsq@rock-chips.com, jbx6244@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 20. Oktober 2020, 21:38:49 CET schrieb Helen Koike:
> From: Shunqian Zheng <zhengsq@rock-chips.com>
> 
> RK3399 has two ISPs, but only isp0 was tested.
> Add isp0 node in rk3399 dtsi
> 
> Verified with:
> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>

looks good, and I'd like to apply this one after the drivers/media-patches
of this series got applied.


Thanks
Heiko



> 
> ---
> 
> Changes in v6:
> - Add status = "disabled" in the isp0 node
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 26 ++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index ada724b12f014..af5f8e2c5e64d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1723,6 +1723,32 @@ vopb_mmu: iommu@ff903f00 {
>  		status = "disabled";
>  	};
>  
> +	isp0: isp0@ff910000 {
> +		compatible = "rockchip,rk3399-cif-isp";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_ISP0>,
> +			 <&cru ACLK_ISP0_WRAPPER>,
> +			 <&cru HCLK_ISP0_WRAPPER>;
> +		clock-names = "isp", "aclk", "hclk";
> +		iommus = <&isp0_mmu>;
> +		phys = <&mipi_dphy_rx0>;
> +		phy-names = "dphy";
> +		power-domains = <&power RK3399_PD_ISP0>;
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +	};
> +
>  	isp0_mmu: iommu@ff914000 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
