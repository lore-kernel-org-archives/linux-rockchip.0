Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE5C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:11:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 370AA60F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:11:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 370AA60F45
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Du9f1WyH/sPqbTVtroiL6z5lE9XdeeIJZd78EnvwsNA=; b=rvEEP33DOEAnyQ
	/B/Tx2FYVd/y1GNVoFYsSb70qnznAMso8U0m5ld3kykroCDfsrfuDK5CUGuH8RHD//FgZivedcHZw
	OAh10yLB39UJq4U2z+VpEIanReUNOcA/4ECflRSHPC9rdsxnoSohZSebs1LJ1IImXfNLKT2zbfNDJ
	RiU1887jS91MHzuRIW1eo9JD52oV5yECvIrvpvzL64+UaU/iNZBviydQINPAk8n08kBw3JhMTUk9v
	XIRjqqAzaHveVVUayajXzu1QdTbCBGQKjFKUnGrFPkrL372Ig6tSmB4KTPn9w8ZuJBUYe6cXZsJIB
	TDGbr+JqNnXX1EFMu2vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kHe-000ztv-LC; Wed, 28 Jul 2021 14:11:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kF1-000yaw-Je; Wed, 28 Jul 2021 14:09:00 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8kEz-0005xo-Uz; Wed, 28 Jul 2021 16:08:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: rockchip: adjust rk3568 pll clocks
Date: Wed, 28 Jul 2021 16:08:57 +0200
Message-ID: <3555961.44csPzL39Z@diego>
In-Reply-To: <20210728135534.703028-8-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-8-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_070859_723907_988E272D 
X-CRM114-Status: GOOD (  17.64  )
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

Hi Peter,

Am Mittwoch, 28. Juli 2021, 15:55:32 CEST schrieb Peter Geis:
> The rk3568 gpll should run at 1200mhz and the ppll should run at 200mhz.
> These are set incorrectly by the bootloader, so fix them here.

Can you specify where the "should run at" comes from?
Normally I'd assume setting desired PLL frequencies would be quite
board-specific.

So if we're setting defaults for all boards, I'd like some reasoning
behind that ;-) ... especially when the other option would be to
fix the bootloader.

Thanks
Heiko

> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 8ba0516eedd8..91ae3c541c1a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,8 @@ cru: clock-controller@fdd20000 {
>  		rockchip,grf = <&grf>;
>  		#clock-cells = <1>;
>  		#reset-cells = <1>;
> +		assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
> +		assigned-clock-rates = <1200000000>, <200000000>;
>  	};
>  
>  	i2c0: i2c@fdd40000 {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
