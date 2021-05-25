Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37677C4707F
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 23:06:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9973D61413
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 23:06:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9973D61413
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZ+YvahB7q5VMZYG0+A4dvuQSVPqzEhjsjrzrf6EJQ8=; b=HA0sMR8hncrk24
	+tJ8noIE/ckMXnoa8ZbkLFOzk6iEv9wmqX4ydA5SCdZ3vfMsLfBsrSK5+dmx+Il1a8bvfbxxmVnrm
	0RnB6tVVNTR0z2z1dKBPCHc//0b4nLvKF0k+PcDvXnzBABnNkVabakzZsGPkEcBworM2NzdT8EKT2
	Z27y+y3RSD3kwvip4DDmLbIGZYma+X4vH3ZGiD3itP/S6z7N/oKovk75Ha9RFhjzPhofxsBFnSVf/
	jnmZ+khRnEhk3+n1gHymJxyVWC2S9/1gq5BH/uwF/6xXl/QDqUtCeT4sXUjeqC6+CIvx3TWZX3VSd
	27daSCMmUz2o8OqicIWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llg7q-0093pk-D0; Tue, 25 May 2021 23:06:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llg6q-0093Fm-3r; Tue, 25 May 2021 23:05:13 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1llg6m-00071l-Fk; Wed, 26 May 2021 01:05:08 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 07/10] ARM: dts: rockchip: add vpu node for RK322x
Date: Wed, 26 May 2021 01:05:06 +0200
Message-ID: <4871345.LM0AJKV5NW@diego>
In-Reply-To: <20210525152225.154302-8-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210525152225.154302-8-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_160512_214315_69854F40 
X-CRM114-Status: GOOD (  20.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 25. Mai 2021, 17:22:22 CEST schrieb Alex Bee:
> The VPU IP block of RK322x is the same as RK3399 has and the driver can
> be used as-is.
> 
> Add the respective nodes to the device tree.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> index c8095ede7d7a..62d1113b7804 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -611,6 +611,18 @@ gpu: gpu@20000000 {
>  		status = "disabled";
>  	};
>  
> +	vpu: video-codec@20020000 {
> +		compatible = "rockchip,rk3228-vpu", "rockchip,rk3399-vpu";
> +		reg = <0x20020000 0x800>;
> +		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "vepu", "vdpu";
> +		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		clock-names = "aclk", "hclk";
> +		power-domains = <&power RK3228_PD_VPU>;
> +		iommus = <&vpu_mmu>;

NIT: [if you need to resend for other reasons] iommus before power-domains please

> +	};
> +
>  	vpu_mmu: iommu@20020800 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x20020800 0x100>;
> @@ -619,7 +631,6 @@ vpu_mmu: iommu@20020800 {
>  		clock-names = "aclk", "iface";
>  		power-domains = <&power RK3228_PD_VPU>;
>  		#iommu-cells = <0>;
> -		status = "disabled";
>  	};
>  
>  	vdec_mmu: iommu@20030480 {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
