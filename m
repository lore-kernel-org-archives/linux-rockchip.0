Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E68BC02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 10:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8yrtN2kjE+JfUxGxt0tp7lhxIYLYUG+hTTZfpN0pJIY=; b=JwPTnddidgDWEETcoevBMziZkn
	ieWFW7Ue2aRCr+ZXDg18ikBc8PAFX+rjfi6hiBsFKswjaf1il1FQ8a4hGtZpzuSFxTp3UWLI1D1Vt
	Y3bU9isGNXXhq63/PkEqHp+NxELLRYK8Vpr+V/2cldxuC73bo6CDF9EEjgKM/66/d1pbtjNSisL2x
	tQRbUqr5ZRBItU1qvf7QYFON92FU1skH1C0+8ZesVfdGsuDLMt3oK/kX4m+5jzQmrLxGQpbBA0r84
	BYwqXvwRrjw4TNB2brABPIsiZP1XSzmZ+kX1339EWojusJ8HYfzchzIg+UNsIfVx6jcCcVj0OGo3a
	8t+nNJkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbH6t-0000000ETmH-1meE;
	Fri, 24 Jan 2025 10:40:23 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbH5U-0000000ETSx-1POT;
	Fri, 24 Jan 2025 10:38:57 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737715134;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ijHuryPa2Ctq7YAPPlofMfpp4o1jvCo4mMR5trhPOdk=;
	b=xpBNefgEOWUpC64232st7aSuFe3gC3DH5NZSbh4QM0yS2SSuMmfYNzl6cEhDTPqruAzrQF
	7fBnKxbmHADg6V34xrANCRhQz0H9xRxbZVH91iyTnF8HfXLdHPIqDYp2lgm+Z1uZ+dbZTf
	FWIzIn11DvKCuekFoOO3bdCQj9p9jYCCdg024IMTJPryAPw0lHIIZ8t0qgEwipTcGSk9Vq
	ySB7Rk5xGFbQ+bTeUguqnE9sBZAI+bUrCCHqw/kKl/mkqIYLZsbVp4Nf/GtuozYAtvt8q9
	7xwotJRMRnmrFuNgLvPtM3dsFDm1NodDKnuBT1VsEe+P93w46WyoaCLzmwELiw==
Date: Fri, 24 Jan 2025 11:38:54 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
In-Reply-To: <20250124052611.3705-1-eagle.alexander923@gmail.com>
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
Message-ID: <8fe92764f7f3df9b25cd832045d28ad5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_023856_662842_68506EB8 
X-CRM114-Status: GOOD (  20.70  )
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

Hello Alexander,

On 2025-01-24 06:26, Alexander Shiyan wrote:
> There is no pinctrl "gpio" and "otpout" (probably designed as "output")
> handling in the tsadc driver.
> Let's use proper binding "default" and "sleep".
> 
> Fixes: 32641b8ab1a5 ("arm64: dts: rockchip: add rk3588 thermal sensor")
> Cc: stable@vger.kernel.org
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> index a337f3fb8377..f141065eb69d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -2667,9 +2667,9 @@ tsadc: tsadc@fec00000 {
>  		rockchip,hw-tshut-temp = <120000>;
>  		rockchip,hw-tshut-mode = <0>; /* tshut mode 0:CRU 1:GPIO */
>  		rockchip,hw-tshut-polarity = <0>; /* tshut polarity 0:LOW 1:HIGH */
> -		pinctrl-0 = <&tsadc_gpio_func>;
> -		pinctrl-1 = <&tsadc_shut>;
> -		pinctrl-names = "gpio", "otpout";
> +		pinctrl-0 = <&tsadc_shut>;
> +		pinctrl-1 = <&tsadc_gpio_func>;
> +		pinctrl-names = "default", "sleep";
>  		#thermal-sensor-cells = <1>;
>  		status = "disabled";
>  	};

Thanks for the patch, it's looking good to me.  The old values
for the pinctrl names are leftovers back from the import of the
downstream kernel code, while the new values follow the expected
pinctrl naming scheme.  The resulting behavior follows, almost
entirely, the behavior found in the downstream kernel code.

Actually, there's some rather critical discrepancy between the
upstream TSADC driver and it's downstream cousin, as already
described in earlier responses from Alexey and me.  However,
those issues have to be addressed in a separate patch, while
this patch, to me, remains fine on its own.

My only suggestions would be to adjust both the patch summary
and the description not to use word "binding", because that
technically isn't fixed here, but to use "pinctrl names" instead.
Also, please note that the downstream kernel uses "otpout" as
a pinctrl name, [1] so the assumption about "output" in the
patch description should be removed.

With the suggestions from above addressed in the v2, please feel
free to include my

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

[1] 
https://raw.githubusercontent.com/rockchip-linux/kernel/refs/heads/develop-5.10/drivers/thermal/rockchip_thermal.c

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
