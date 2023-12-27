Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 263D0C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 23:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nb1TraDWPA+5F1EFw13vTcZtCPjsmChDDf75Uiu+338=; b=2ADgzOGctOQ0rJ
	NpROgVq99uwM8gNqmyjE4AkcRSffo+gdJ3lQvJnZg5sUbTucvJZk1LN6yJjPSigV1SbZMhdWail5p
	82TAG02EtGvyASzQPMOwXLhi36zse9JLulQkDl390gHaCgtccvNo9UroPUSeIJvIe9ff0oiYN/dbD
	h8Uq15ugOblWXGbYmVJodZhg9XJKgb7ltPxs632dtw3YS8XNPdTxRef/xPjogRlFg1PmHszrPIpT8
	YZA919CkPBaIrbDpBR7e3OrR0kakKQklIPo4gGIzFKCen0TssS+j7YlcLZLN1ducklhlM08O2wksE
	DoyDhff5j0BdcDHlIh/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rId53-00Ferz-0l;
	Wed, 27 Dec 2023 23:12:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rId50-00Fera-28
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 23:12:52 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rId4z-0000wb-CI; Thu, 28 Dec 2023 00:12:49 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: liujianfeng1994@gmail.com, Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Thu, 28 Dec 2023 00:12:48 +0100
Message-ID: <6924598.K2JlShyGXD@diego>
In-Reply-To: <20231227173911.3295410-3-liujianfeng1994@gmail.com>
References: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
 <20231227173911.3295410-3-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_151250_721612_204C74DF 
X-CRM114-Status: GOOD (  17.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Mittwoch, 27. Dezember 2023, 18:39:10 CET schrieb Jianfeng Liu:
> This patch enables Hantro G1 video decoder in RK3588's
> device-tree
> 
> Tested with FFmpeg v4l2_request code taken from [1]
> with MPEG2, H.264 and VP8 samples.
> 
> [1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 5fb0baf8a..b3536e097 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -708,6 +708,26 @@ vop_mmu: iommu@fdd97e00 {
>  		status = "disabled";
>  	};
> 
> +	vpu: video-codec@fdb50400 {

please sort nodes by bus-address. According to the current rk3588s.dtsi,
both nodes should be between 
- i2c@fd880000
+ video-codec@fdb50400
+ iommu@fdb50800
- vop@fdd90000


Otherwise this looks nice :-) .

Thanks
Heiko

> +		compatible = "rockchip,rk3588-vpu";
> +		reg = <0x0 0xfdb50000 0x0 0x800>;
> +		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		clock-names = "aclk", "hclk";
> +		iommus = <&vdpu_mmu>;
> +		power-domains = <&power RK3588_PD_VDPU>;
> +	};
> +
> +	vdpu_mmu: iommu@fdb50800 {
> +		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg = <0x0 0xfdb50800 0x0 0x40>;
> +		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clock-names = "aclk", "iface";
> +		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		power-domains = <&power RK3588_PD_VDPU>;
> +		#iommu-cells = <0>;
> +	};
> +
>  	uart0: serial@fd890000 {
>  		compatible = "rockchip,rk3588-uart", "snps,dw-apb-uart";
>  		reg = <0x0 0xfd890000 0x0 0x100>;
> --
> 2.34.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
