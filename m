Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA90CECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 14:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63yHnSuRslNWxAwDG2sMSRdsjyo0tEmAB11c7bNF+B4=; b=ufpvef5h0tZSxJ
	TlkqpkhvX71TtH4JKXtYHYOxz3RwS+48xAS7XJhw413N7/L4BIiOaOK2aGit9Jb8xdWXFeTn/BZ4N
	XL9ytbWx+Qimn7xUBkNIBsTsIqgZNYhcSNmskvuVPBMpGuHnZIpvSXwjEIEyzSdggoxJGwhs1PJ/7
	HjAIu/6NzoGhP7M5gzICtSlHuCz/BvM6slm5Lk6JFCMlK21K4q34Aid8OETfeNXSMdqpklijQcqeM
	RHLLtDZJfApc805xLYnRRa6KbVcAIBLFAoSkV7GkFzy+P6kE9GAgNQe5OBavUSMv5Xqb10VB4AX6n
	0qeRDF9vtmkcVNLhg+bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYq35-00BJJP-Q9; Thu, 15 Sep 2022 14:41:03 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYq2u-00BJBn-De; Thu, 15 Sep 2022 14:40:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A7DC1682;
	Thu, 15 Sep 2022 07:40:54 -0700 (PDT)
Received: from [10.57.18.118] (unknown [10.57.18.118])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA45B3F73D;
	Thu, 15 Sep 2022 07:40:46 -0700 (PDT)
Message-ID: <9196035b-273a-adca-2b87-c70bbab7f5c9@arm.com>
Date: Thu, 15 Sep 2022 15:40:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: enable gamma control on
 RK3399
Content-Language: en-GB
To: Hugh Cole-Baker <sigmaris@gmail.com>, heiko@sntech.de, hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, ezequiel@collabora.com
References: <20211019215843.42718-1-sigmaris@gmail.com>
 <20211019215843.42718-4-sigmaris@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211019215843.42718-4-sigmaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_074052_532605_61F0D9D7 
X-CRM114-Status: GOOD (  13.62  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-10-19 22:58, Hugh Cole-Baker wrote:
> Define the memory region on RK3399 VOPs containing the gamma LUT at
> base+0x2000.
> 
> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
> ---
> 
> Changes from v1: no changes in this patch
> 
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 3871c7fd83b0..9cbf6ccdd256 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1619,7 +1619,7 @@ i2s2: i2s@ff8a0000 {
>   
>   	vopl: vop@ff8f0000 {
>   		compatible = "rockchip,rk3399-vop-lit";
> -		reg = <0x0 0xff8f0000 0x0 0x3efc>;
> +		reg = <0x0 0xff8f0000 0x0 0x2000>, <0x0 0xff8f2000 0x0 0x400>;
>   		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
>   		assigned-clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
>   		assigned-clock-rates = <400000000>, <100000000>;
> @@ -1676,7 +1676,7 @@ vopl_mmu: iommu@ff8f3f00 {
>   
>   	vopb: vop@ff900000 {
>   		compatible = "rockchip,rk3399-vop-big";
> -		reg = <0x0 0xff900000 0x0 0x3efc>;
> +		reg = <0x0 0xff900000 0x0 0x2000>, <0x0 0xff902000 0x0 0x1000>;

Doesn't the second range still need to be shorter than 0xf00 to avoid 
overlapping the IOMMU?

Robin.

>   		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
>   		assigned-clocks = <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
>   		assigned-clock-rates = <400000000>, <100000000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
