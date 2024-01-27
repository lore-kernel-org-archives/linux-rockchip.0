Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E074C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 13:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tge6keteRl9U5/DF1CgIyuaQfU4n5NQ7I16RGvRSmdM=; b=tGhFWHR9M6qKi5p6R6Ek3beuP9
	UwIttBqw722FBDTKdKY146pnrXTWpiatneqHQ7Q9jHKFkT3JHG6OdK0W4XQ60V0nL9Gs/g1417kkb
	cFvzCvtcfRYwHX8PM178wcQpCyUEn4X49+5gMZn1VRZQWUjHUbFvDsRnYbjOnfmmd9qyGxyBf1OZm
	xVv+/oVZCJsz1QeeaPPCV1+d1dDOx8fpSE/nWv2Qt5yuz9xFW1KZcF3IPxF8F6z9fUsY+NGxmBGfq
	yxXcIKLi4UEbtrirM7pBGvkIrSlFRwFSbHX9jtQT1CIpXyGrKlv15g170yikrOevLgChMZxuejbZm
	3eWmhEtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTiPO-00000007W3r-1oNI;
	Sat, 27 Jan 2024 13:07:42 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTiPL-00000007W32-3Fp9;
	Sat, 27 Jan 2024 13:07:41 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706360857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8NWFCJoKsrjTpLmlUTqh23lBnyqiCJSoh/6mW7sdVJc=;
	b=myTKKSpItOZgqMHfDMdRpPGMEAXHCRByEjKeT72UXSP6WQnnZBINs/1AoB0lGwv2JjWD+T
	hayovHfO0DY4lISK4r0LAsykYNOCazvAMJC3wSdIgFcSONdwmugutF9BCDx35+cW3UaTgL
	c0ocZmre3zRaG1T6NS9GKZUtkIjQ6jn1dK1Vq8p/jOaxf552RKDvLr0xZvZFSrOMyo9em2
	EZMfzPAGS6DDO9b6ZvFpQUfi62hesPtXavnIlTQ55N6kzNrMDBDcYI0T7KJcn9GjCUVAqd
	3s9TpSpphBmNNb55ZBdrlqczEa13mD2zU5V4oOmSHAHhwgafhC4ATA6cioscPg==
Date: Sat, 27 Jan 2024 14:07:36 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool
 Pi CM5 EVB
In-Reply-To: <20240127092034.887085-2-andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
 <20240127092034.887085-2-andyshrk@163.com>
Message-ID: <8fbc0caf535e24e86c8b2458b63a130c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_050739_999175_AE2CEA31 
X-CRM114-Status: GOOD (  11.62  )
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

On 2024-01-27 10:20, Andy Yan wrote:
> Follow others rk3588 based boards, and u-boot only use mmc0/1
> as mmc boot targets, so aliase sdmmc as mmc1.
> 
> Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588
> based board Cool Pi CM5 EVB")
> Signed-off-by: Andy Yan <andyshrk@163.com>

Makes sense to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
> index 0b02f4d6e003..cce1c8e83587 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
> @@ -16,8 +16,8 @@ / {
> 
>  	aliases {
>  		mmc0 = &sdhci;
> -		mmc1 = &sdio;
> -		mmc2 = &sdmmc;
> +		mmc1 = &sdmmc;
> +		mmc2 = &sdio;
>  		serial2 = &uart2;
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
