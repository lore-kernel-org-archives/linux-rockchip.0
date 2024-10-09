Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91992CED618
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T/erzPXBdh7xtH3IUT7PHWt8wBVGtw4H24jVCS+ZRSE=; b=EGYhU6RKLkrepgPnoS058cXjiL
	8c7pqOeuUsKYknaRFd5Nlh+H9mg3Zy+csvcSpKyUUqkHrBdPnIRSRsV6xjgJ1K/F0m0U2THe+Ztpm
	XiVmb7eATQQ8gyC2DFqzFpGOKht2mnF1bKtFZ+4tVSc3PvMt6JZwGsmvkfQ1ApCCb6qtWoNsjteY7
	hXv/itUVdOeob4Yb7/SzdbFIg1JyY6v+lbe6lV3h1L0YaFffVUn2l+yjIcjTwFxjlfIQ4c3cfR9Va
	ozzqCtVJWKBTbKAP7dbctDAIbXuUYNQxYozW9tttqseyFKuQkSyu04hNrepg3pS0MKrOEqgaQqGLI
	muP806/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syRAO-00000008FCw-1Qix;
	Wed, 09 Oct 2024 07:31:28 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syR92-00000008EtM-26EL;
	Wed, 09 Oct 2024 07:30:05 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459002;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sUddxQXYww8wMNHYsHa3m0CABWXx9Xilw0zY6RE9Mk8=;
	b=KtUYkZbGok0PwruIhzVfqU+K6TwTui48oxoyLLdKbbmhfbwrcqKvGJ5v7jqfOrK7BeYGba
	fwZWut85ylSukGC9w486j95yWwPlMAM2xSMc+gHeirsWYR8HsxnFtANOSO1vaGhbf6yRFw
	VyDTHD0ZGeLBehBRLD/6tCLdVO6w4dkCXWGBbak62xro1vdSiVrHvfyulxCGPukKsxfIV1
	8833Eax/Ua5G1XZ0RG6xdWm/8gru05tPWyvWtSohilT8JkHYyRHr139CuBIESiVDTeHLxb
	VqQTJoNIkiYhxEhvLt6eMk9QVWbE9VTw8zzKUrJqnTiHk1ILgs9G4RQfLyJcRA==
Date: Wed, 09 Oct 2024 09:30:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Martijn
 Braam <martijn@brixit.nl>, Javier Martinez Canillas <javierm@redhat.com>,
 Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned
 pinctrl-names from pinephone pro
In-Reply-To: <20241008203940.2573684-11-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-11-heiko@sntech.de>
Message-ID: <036c68719cb9716e4bc76e14e7628f18@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_003004_748989_A2F126E7 
X-CRM114-Status: GOOD (  13.13  )
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
> The patch adding display support for the pinephone pro introduced two
> regulators that contain pinctrl-names props but no pinctrl-assignments.
> 
> Looks like someone forgot the pinctrl settings, so remove the orphans
> for now, until that changes.
> 
> Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display
> support to rk3399-pinephone-pro")
> Cc: Martijn Braam <martijn@brixit.nl>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced change
is obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 1a44582a49fb..09a016ea8c76 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -166,7 +166,6 @@ vcc1v8_lcd: vcc1v8-lcd {
>  		regulator-max-microvolt = <1800000>;
>  		vin-supply = <&vcc3v3_sys>;
>  		gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
>  	};
> 
>  	/* MIPI DSI panel 2.8v supply */
> @@ -178,7 +177,6 @@ vcc2v8_lcd: vcc2v8-lcd {
>  		regulator-max-microvolt = <2800000>;
>  		vin-supply = <&vcc3v3_sys>;
>  		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
>  	};
> 
>  	vibrator {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
