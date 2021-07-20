Return-Path: <SRS0=CXDZ=MM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98B8C07E95
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jul 2021 09:11:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9BC9461019
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jul 2021 09:11:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9BC9461019
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/n52YU8lNJZ2TR/WrkkmMfKgdowkm7EnqVohCdiwo5k=; b=1f4Ft6vtAedfkkEyJEEuxhzW3s
	Z/tkoQei+0w3e7WsdP3SkAnQhZSje5QaPoGe+w1mt/c1/1YW4EAcZQzcNPDjSNgpHrNp7muAKYSYL
	gVcvUVLrvGVohWm1hRg/fsIJRWRCkjxrzz9Tt7yDhnWcD406BKJFXEm37ggx+UKhEhlRjxqu9pwX/
	6BSTUg96s9o+0pfTHEaqPZ8886t23mG1JCrYXRFD4toyAPEdBJB5C7gfLDiUIg9q2meJmr+asu47U
	vQGZGQlrt0u8ObX2m56kHtzdB2l33KmWu3slDuz5yCSt7MWHh++YgFT68TMtGYs1FEfN+hUODgmz7
	x+kQiwUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5lmm-00COCe-MY; Tue, 20 Jul 2021 09:11:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5lmk-00COBw-0X
 for linux-rockchip@lists.infradead.org; Tue, 20 Jul 2021 09:11:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C889C6D;
 Tue, 20 Jul 2021 02:11:26 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 16ACD3F73D;
 Tue, 20 Jul 2021 02:11:23 -0700 (PDT)
Subject: Re: [PATCH v3 10/10] arm64: dts: rockchip: Add VPU support for the
 PX30
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>, maccraft123mc@gmail.com,
 Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jonas Karlman <jonas@kwiboo.se>, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com
References: <20210719205242.18807-1-ezequiel@collabora.com>
 <20210719205242.18807-11-ezequiel@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a3078b49-696a-1aa6-8f96-70573bd6441d@arm.com>
Date: Tue, 20 Jul 2021 10:11:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210719205242.18807-11-ezequiel@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_021130_160684_47C8BFBF 
X-CRM114-Status: GOOD (  15.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-07-19 21:52, Ezequiel Garcia wrote:
> From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> 
> The PX30 has a VPU (both decoder and encoder) with a dedicated IOMMU.
> Describe these two entities in device-tree.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>   arch/arm64/boot/dts/rockchip/px30.dtsi | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 248ebb61aa79..05ce8ce5e4be 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1024,6 +1024,29 @@ gpu: gpu@ff400000 {
>   		status = "disabled";
>   	};
>   
> +	vpu: video-codec@ff442000 {
> +		compatible = "rockchip,px30-vpu";
> +		reg = <0x0 0xff442000 0x0 0x800>;
> +		interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "vepu", "vdpu";
> +		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		clock-names = "aclk", "hclk";
> +		iommus = <&vpu_mmu>;
> +		power-domains = <&power PX30_PD_VPU>;
> +	};
> +
> +	vpu_mmu: iommu@ff442800 {
> +		compatible = "rockchip,iommu";
> +		reg = <0x0 0xff442800 0x0 0x100>;
> +		interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "vpu_mmu";

Nit: "interrupt-names" is not part of the IOMMU binding. Same for the 
RK3568 patch too ;)

Robin.

> +		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		clock-names = "aclk", "iface";
> +		#iommu-cells = <0>;
> +		power-domains = <&power PX30_PD_VPU>;
> +	};
> +
>   	dsi: dsi@ff450000 {
>   		compatible = "rockchip,px30-mipi-dsi";
>   		reg = <0x0 0xff450000 0x0 0x10000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
