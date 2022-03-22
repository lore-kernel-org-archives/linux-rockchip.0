Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51B26C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 12:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJSjlxqDdnPXRRIlNJIQZdMM/XdNy49t9+i8vYAE6mw=; b=enQlmWXCTckP/v
	v0ntIOUEL9pAKkzs0upBGN4PaunBxcxTMoBrL+FRvlMyJ+3yZ0RfpXEH1qbQBW48qLvNkGObhS98/
	rvrjMU5fLSwYYhkwjIs8Zlrrd+XRTgDVpays/g03xXXc3ow4g5PxOQFYu2xol2PyLZqVGrs9PUrn5
	sK28Rp4kIO0G1uZiMCinng5hsTrizoySurKLH0wcyngtdGrcoXZWLyEv+D++dx0yTJLnas+5cIn5H
	5jrBJL0zduR+m2Ql56YXxMmb2mpT0qO6lP9w+zd+avnIoCZJ1wTqa1U6TiIU+3BcicCjL9IcqJiao
	7/Q4sriy20Q4Q/Owz93A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWdBb-00Aswx-2l; Tue, 22 Mar 2022 12:00:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWdBO-00Ast2-7z; Tue, 22 Mar 2022 12:00:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A58D153B;
 Tue, 22 Mar 2022 05:00:11 -0700 (PDT)
Received: from [10.57.43.230] (unknown [10.57.43.230])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 956A63F73B;
 Tue, 22 Mar 2022 05:00:08 -0700 (PDT)
Message-ID: <70422777-a3f9-b2f1-5faa-94d24fe200ac@arm.com>
Date: Tue, 22 Mar 2022 12:00:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 18/26] arm64: dts: rockchip: rk3399: add crypto node
Content-Language: en-GB
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzk+dt@kernel.org, mturquette@baylibre.com,
 robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-19-clabbe@baylibre.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220321200739.3572792-19-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_050014_402327_AB03DA69 
X-CRM114-Status: GOOD (  20.53  )
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

On 2022-03-21 20:07, Corentin Labbe wrote:
> The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
> node for it.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 88f26d89eea1..ca2c658371a5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -573,6 +573,18 @@ saradc: saradc@ff100000 {
>   		status = "disabled";
>   	};
>   
> +	crypto0: crypto@ff8b0000 {
> +		compatible = "rockchip,rk3399-crypto";
> +		reg = <0x0 0xff8b0000 0x0 0x4000>,
> +		      <0x0 0xff8b8000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_CRYPTO0>, <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>,
> +			 <&cru SCLK_CRYPTO1>, <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>;
> +		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>,
> +			 <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
> +	};

What's going on here? If these are simply two instances of the same IP 
block as the evidence suggests, why are they crammed into a single DT 
node rather than simply being described as two separate instances? I was 
rather wondering what all the confusing mess in patch #16 was about, 
until I got here.

If there's something in the crypto API that means the driver can't 
simply naively register itself multiple times, there should be any 
number of ways for the probe routine to keep track of whether it's 
already registered something and associate any subsequent devices with 
the first one internally if need be. Linux implementation details should 
not leak out as non-standard DT weirdness.

I know the Rockchip IOMMU driver does this, but in that case the two 
IOMMU instances are closely coupled and sharing work such that they 
effectively need to be programmed identically at all times, so it was a 
bit more justifiable. I don't know the full story here, but it certainly 
looks like rk_get_engine_number() is just a means to schedule work on 
any available unit independently, so looks like it wouldn't take much to 
select between distinct devices at that point, and actually end up a lot 
simpler and cleaner overall.

Robin.

> +
>   	i2c1: i2c@ff110000 {
>   		compatible = "rockchip,rk3399-i2c";
>   		reg = <0x0 0xff110000 0x0 0x1000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
