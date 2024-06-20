Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26441C2BA18
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 20:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l0ugt0bnAf/rqyN2yWk5lc4H0tmePddVHK6iTcYle8=; b=Ln7fMPxlv6wzle
	rd7gEMDtoGR8Im7O5sjGqQqiK7WnaVaFwI7ext/epYVGCSKOWgUBUqJwZAV1/pV4Y3dq+skyoILsx
	7GKvT4mqU/YG8lxA3XKROK30Gt0W+Qnt8GrvhTzZ1Gbheq5JpD7auz2Scdbx+sWUtX/tBJpNuViGY
	1M9hUNn8MsHkQwffpTZmvhISOG7q8BqeNAbvvHnmlw4VJ//ZGwNY1qczMZLfVMSrHQIIPzsHEx/c/
	yRdBTqWJ4qnecqhkoU6nuV6hFBz4PCyEpP3liNEPPp4rKYwTRaJzlmXI0Q/6/3S7R5p+1w6cpx01f
	ZRRcqaM9ahLv+qV7XVAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOVr-00000006d8q-32pN;
	Thu, 20 Jun 2024 20:36:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOVl-00000006d7F-47Zp
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 20:36:06 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKOVh-0001h2-Jm; Thu, 20 Jun 2024 22:35:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Thu, 20 Jun 2024 22:35:56 +0200
Message-ID: <10613118.nitPUkWRp2@diego>
In-Reply-To: <20240619232734.1126-1-naoki@radxa.com>
References: <20240619232734.1126-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_133602_061123_42F9E989 
X-CRM114-Status: GOOD (  17.52  )
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

Am Donnerstag, 20. Juni 2024, 01:27:34 CEST schrieb FUKAUMI Naoki:
> align with other Radxa products.
> 
> - mmc0 is eMMC
> - mmc1 is microSD
> 

so yes we can still change the mmc aliases as the zero will only become part of 6.11
But mmc aliases should start at 0 and not contain holes.

So if you care much about the ordering, move the alias block out of the zero-3.dtsi
and introduce separate blocks for each board.


In zero-3w:
  	aliases {
		mmc0 = &sdmmc0;
  	};

In zero-3w:
  	aliases {
		mmc0 = &sdhci;
		mmc1 = &sdmmc0;
  		mmc2 = &sdmmc1;
  	};


Alternatively, leave the aliases as they are now
Heiko

> Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> index 623d5939d194..85d76d535338 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
> @@ -7,7 +7,7 @@
>  
>  / {
>  	aliases {
> -		mmc0 = &sdmmc0;
> +		mmc1 = &sdmmc0;
>  	};
>  
>  	chosen {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> index 9bf4f464915f..188147c4b78b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
> @@ -9,7 +9,7 @@ / {
>  	compatible = "radxa,zero-3w", "rockchip,rk3566";
>  
>  	aliases {
> -		mmc1 = &sdhci;
> +		mmc0 = &sdhci;
>  		mmc2 = &sdmmc1;
>  	};
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
