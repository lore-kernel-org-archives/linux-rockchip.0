Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ED43C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 12:01:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 924FA611C8
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 12:01:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 924FA611C8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzxjdmKswMmD1LOJDH5qAx+t1z8G1JMZeBWxhQIC5aU=; b=JnPQdY+UKjyyQJ
	BgaRdWZIXpfrKxbW3eUbuQUfsLuzRWE8uWwg+/Z3zvQqM6TMAFK4lMT3b6ism5c+9bs8ZlH4NZr9t
	5idK6Wlly3gDlvyWR/wq/+01WQNywD1U1BnCqG7fm8OBpmsWtV7NUWPV9u/41V1vcRcone+1l4YXB
	UuynVlEm8SISGJ3yM9VTNHe+nLJn9FVq2JGqKaNiudqkdpKZJAFsPyzeE+I9pZCho3M8X92gAYa4y
	NUzn6fFehZ58me812A0J2ZTJsl585deIEqwqAZkMJTqDW9X2drn0+gt9xPCGvrG7eBvcMVlj5by5o
	6Fto2q96fvQsLNht6MdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRCYZ-00Dv4F-9q; Fri, 17 Sep 2021 12:01:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRCYN-00Dv2o-LA; Fri, 17 Sep 2021 12:01:17 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mRCYK-0005JE-GG; Fri, 17 Sep 2021 14:01:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] arm64: dts: rockchip: move aliases to rk356x dtsi
Date: Fri, 17 Sep 2021 14:01:11 +0200
Message-ID: <2397289.mVTDCA6dLn@diego>
In-Reply-To: <20210917110528.24454-1-michael.riesch@wolfvision.net>
References: <20210917110528.24454-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_050115_753397_166F6ED3 
X-CRM114-Status: GOOD (  19.43  )
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

Hi Michael,

Am Freitag, 17. September 2021, 13:05:28 CEST schrieb Michael Riesch:
> In order to ensure deterministic probe order over different boards,
> move the aliases of on-SoC components to the corresponding dtsi
> files.

please read the git history on the other Rockchip SoCs. We just moved
the aliases on them _to_ the board-files, as requested by
arm-soc maintainers ;-)


Heiko


> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566.dtsi           | 4 ++++
>  arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   | 7 -------
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 5 +++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 2 ++
>  5 files changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index a244f7b87e38..156bbb8aa4c4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -10,12 +10,6 @@
>  	model = "Pine64 RK3566 Quartz64-A Board";
>  	compatible = "pine64,quartz64-a", "rockchip,rk3566";
>  
> -	aliases {
> -		ethernet0 = &gmac1;
> -		mmc0 = &sdmmc0;
> -		mmc1 = &sdhci;
> -	};
> -
>  	chosen: chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> index 3839eef5e4f7..c1b3841caa77 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> @@ -4,6 +4,10 @@
>  
>  / {
>  	compatible = "rockchip,rk3566";
> +
> +	aliases {
> +		ethernet0 = &gmac1;
> +	};
>  };
>  
>  &power {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 184e2aa2416a..218f85af730c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -13,13 +13,6 @@
>  	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
>  	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
>  
> -	aliases {
> -		ethernet0 = &gmac0;
> -		ethernet1 = &gmac1;
> -		mmc0 = &sdmmc0;
> -		mmc1 = &sdhci;
> -	};
> -
>  	chosen: chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 2fd313a295f8..dd0e800cf752 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,11 @@
>  / {
>  	compatible = "rockchip,rk3568";
>  
> +	aliases {
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +	};
> +
>  	qos_pcie3x1: qos@fe190080 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe190080 0x0 0x20>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index e42fbac6147b..bb0540d3008c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -29,6 +29,8 @@
>  		i2c3 = &i2c3;
>  		i2c4 = &i2c4;
>  		i2c5 = &i2c5;
> +		mmc0 = &sdmmc0;
> +		mmc1 = &sdhci;
>  		serial0 = &uart0;
>  		serial1 = &uart1;
>  		serial2 = &uart2;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
