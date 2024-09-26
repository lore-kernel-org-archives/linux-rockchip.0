Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC2CCCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 08:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUxAFyR/6K/1b8hWsOwuIYFNeaZPHCOcp2OQnSw3HmU=; b=yooNg6eN5hD5mT
	kUXjHjU9p3BufM5N0A6nnTFOqvVSoWhRLj4MJqbtG81dSwcfvXLfIFOlmtvWEhHCIJgxG+FTaOTL1
	IyCQr2mF8II9sI8QRpqSco1nlj4VloD1oRmc5dKUQdIadMuN0C8Mf0gTMVScAdGQM7UtTiVVuBe/R
	6ws8FohaHHbBK9pcaY0fltbFfgefdCneZZ3olXhyWvYYyw5F1ekfihlc6txfMNmAO19abOvM8x12L
	lGf4gau570g9USncZRn1opdW1w9KrupUHW4ATcQYagCXRG26bINJRN3MggRO1JrXcdbraCQZ0z23t
	2A+4aB/1NuGoOjJpp/DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stjo0-00000007ftl-4Asp;
	Thu, 26 Sep 2024 08:24:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stjnx-00000007ftA-2KCU;
	Thu, 26 Sep 2024 08:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=iBsC3mABl+He9E398zbyg48Y1tA2wfpFLTdtcZVXHtw=; b=lnOot4CiQs6jGk5N9O6UHusTzf
	tvYsmgjHyv9XLkoSuitf8eT7HDY5YYLgia0z0d3nLQjR5w0ONlV+THk+5btwcvK1AossjagBYT04Q
	36QKSrnVjx6fzIuEwCitbw9rAUEPuq2K3UaHmTTEInfHIGYF7LvN8XHRGhylDaI/rAzGCVh6Hbdo2
	lR8CKW/yC+j2BIRi/lYeDjsCBGhMnoC6BnuepvEbkcbXzDJtOrzEZJhH7AkoM0KVGq9+JBL6klYme
	Lprgc7g7kRcFIMIH0AYMFdzKCLvJhv684BMiN07OhWgMpJT8s1psLwLwfAhF3SVGRHcHme8Q3oGQ4
	xYRmqqxA==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1stjnu-0001ez-D4; Thu, 26 Sep 2024 10:24:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Move L3 cache under CPUs in RK356x SoC dtsi
Date: Thu, 26 Sep 2024 10:24:49 +0200
Message-ID: <3938446.fW5hKsROvD@phil>
In-Reply-To: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
References: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_012453_669237_ED6A2EDB 
X-CRM114-Status: GOOD (  21.54  )
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

Am Donnerstag, 26. September 2024, 09:49:18 CEST schrieb Dragan Simic:
> Move the "l3_cache" node under the "cpus" node in the dtsi file for Rockchip
> RK356x SoCs.  There's no need for this cache node to be at the higher level.
> 
> Fixes: 8612169a05c5 ("arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x")
> Cc: stable@vger.kernel.org

I think the commit message needs a bit more rationale on why this is a
stable-worthy fix. Because from the move and commit message it reads
like a styling choice ;-) .

I do agree that it makes more sense as child of cpus, but the commit
message should also elaborate on why that would matter for stable.


Heiko

> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 4690be841a1c..9f7136e5d553 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -113,19 +113,19 @@ cpu3: cpu@300 {
>  			d-cache-sets = <128>;
>  			next-level-cache = <&l3_cache>;
>  		};
> -	};
>  
> -	/*
> -	 * There are no private per-core L2 caches, but only the
> -	 * L3 cache that appears to the CPU cores as L2 caches
> -	 */
> -	l3_cache: l3-cache {
> -		compatible = "cache";
> -		cache-level = <2>;
> -		cache-unified;
> -		cache-size = <0x80000>;
> -		cache-line-size = <64>;
> -		cache-sets = <512>;
> +		/*
> +		 * There are no private per-core L2 caches, but only the
> +		 * L3 cache that appears to the CPU cores as L2 caches
> +		 */
> +		l3_cache: l3-cache {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +			cache-size = <0x80000>;
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
> +		};
>  	};
>  
>  	cpu0_opp_table: opp-table-0 {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
