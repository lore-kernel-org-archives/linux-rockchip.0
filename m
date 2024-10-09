Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81521CED618
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tJLUV8Bp4U88rOe3x6tvAiB7QPzn8CEwbHX1fGDqAlE=; b=3vRZ2wlel2fIjRucf9owxjehiR
	QlaaKInGiL/wJEzk5lD54oZeP+Rl4gyDameuZ9T0L38aHwguXyfBuRHTjAj8l0MqLhODkBQ4mZZYD
	2g6GhkSVMOMZMto7M40Wo4JT6uk7F8JGFPOaUa32DZPWAPJ1tzoo73T+MkVjtGqTII3/RoIfjgC+q
	wAOzggkZS35ksRpy2f6YHUeZMGER2bahyDa0Ff927y/Zq5yvDyqmIjPQfjgXPZL9tm2JRu6JsNiKU
	gcrzI94ZBEepsw3Fu8EGkjism1M9DpqHtCRjSqtK/rMnK6bguTUWSVbhZWa9WldrJgoDOfXe34yn6
	7FlYOYpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syRHe-00000008GWA-1MKs;
	Wed, 09 Oct 2024 07:38:58 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syRGH-00000008GJF-1OPj;
	Wed, 09 Oct 2024 07:37:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AbWJb505WIa4s94mFp8zyjinYDs5YYe1TRbBJaJlz4c=;
	b=fNMtd12n1HUt/Pfi2vyUactjFuzeZsFTFwjhJ5itdEDfS4AIU9vwLOGNHFVdMP8ywgiYtB
	tap+s/jWaDTouRZWvxfQccLu/+7Zb+UxA/3uVUTBfE9FVRo87G7cWCpyEGlTKPNzywEzLf
	txYD6fvD3jf0f8x5IHCCH9xlEf62rvaexEchjQDDZWjfMIUBFa1ONXo0NbEJAno3x7ZglJ
	MD7XYvXntvev2ruYRbBmLSSvaP5AULMd44uVqBZkc7tLyY0dSrauso5T7gnyLBiJMzIm18
	Iv3fs0o3tHikss9ybK36JXbQUMzsdYaXC56STtx1/YTWVXx0xFO6w5FRSFLiiw==
Date: Wed, 09 Oct 2024 09:37:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Caesar
 Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 12/14] ARM: dts: rockchip: drop grf reference from
 rk3036 hdmi
In-Reply-To: <20241008203940.2573684-13-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-13-heiko@sntech.de>
Message-ID: <9f75abfcf0406238cae0cce694feec88@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_003733_547091_CA06234D 
X-CRM114-Status: GOOD (  13.21  )
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

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> Neither the binding nor the driver implementation specify/use the grf
> reference provided in the rk3036. And neither does the newer rk3128
> user of the hdmi controller. So drop the rockchip,grf property.
> 
> Fixes: b7217cf19c63 ("ARM: dts: rockchip: add hdmi device node for 
> rk3036")
> Cc: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  There's nothing about the
"rockchip,grf" property in drivers/gpu/drm/rockchip/inno_hdmi.c.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 37369538483f..09371f07d7b4 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -400,7 +400,6 @@ hdmi: hdmi@20034000 {
>  		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks = <&cru  PCLK_HDMI>;
>  		clock-names = "pclk";
> -		rockchip,grf = <&grf>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&hdmi_ctl>;
>  		#sound-dai-cells = <0>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
