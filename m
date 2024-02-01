Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4601CC47DDF
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 12:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G1nqvKcA3+FvHjNyHd1LqGNGSJsFoiGvl4nLAXcQXnQ=; b=EQGfXrXMejFpM7qub/hPm7umuZ
	iR4Z4Kwx3h2lJXWNnjCeWOj9/L2wCLt8CWopshrnC/HFl9AF2OMPnSz0lG/Q0JRThb77mz0S9BkAn
	hAnA20lVc+ag91C+Wo8+Y9OlTokV+/ToJwX05A2atfa7lN8cNOA7T7m30cLpT0fZnX/J9owOubX14
	d+/RcL0lIaUPKx7nVDUPPiGqGMb4OikvLeyHnYGnIC0ln0qAteNTR9p3QBKpKqaY4tNTrPPFwx8xG
	dwK49HzpUmdGvxQlYWAw5Ck6mOeQm9tmIXIx3cPZsUaF2en4VQIKa2XKtGFis08O3Y+lyUXVk7T4E
	wuymftDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVWIW-00000007myG-0zhu;
	Thu, 01 Feb 2024 12:36:04 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVWIS-00000007mxM-0U11;
	Thu, 01 Feb 2024 12:36:01 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706790954;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TNyn5Df3rgP7z195cu82vjAEsVN9pPRraJv9Xn4e6Rc=;
	b=nhL5AXsH0UqTo5sX9FwKfgCdD9oqkOaTfqnaE8JgTfx/DSZos/Ltmg8rTB+TmkBu0dfZQv
	K0X2TaqpuQKKAX4yoGtVXiY4BRaK524w/GI9mSnM/oBl2OODYP4SgCaVb+B5dxb/rk597a
	Q2Pn3l+YZv5NnR9oWtoMQHvOUb2gAS2mjSavi/O0VBvrQfS2SkJEnsN32RU9BsQXAROEby
	QwcsXBba2bE5hwsRCz1D24Nr7xKV7OTF+Hc+2Qj3IQFooHCuYg+v41WCYyqCDglcBRA61g
	08t3qhE+pnt2Qf0xnFPdJUrfdnA3RCuJL+O7s2SRrB1tmEIdkNYuLvJWe+qrFw==
Date: Thu, 01 Feb 2024 13:35:53 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host
 regulator for Cool Pi CM5 EVB
In-Reply-To: <20240201121106.1471301-3-andyshrk@163.com>
References: <20240201121106.1471301-1-andyshrk@163.com>
 <20240201121106.1471301-3-andyshrk@163.com>
Message-ID: <2da07d89de139b6325c7353273b16805@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_043600_647935_119B040F 
X-CRM114-Status: GOOD (  14.44  )
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

On 2024-02-01 13:11, Andy Yan wrote:
> According to the schematic, USB20 HOST0 and HOST1 each have their own
> independent power supply, but these two regulators controlled by a
> same GPIO, so give it a more appropriate name.
> 
> Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588
> based board Cool Pi CM5 EVB")
> Signed-off-by: Andy Yan <andyshrk@163.com>

Looking good to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> 
> Changes in v2:
> - Add two lable for this regulator
> 
>  arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
> index 1b5681fe0471..9c0f408ef339 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
> @@ -84,7 +84,7 @@ vcc3v3_lcd: vcc3v3-lcd-regulator {
>  		vin-supply = <&vcc3v3_sys>;
>  	};
> 
> -	vcc5v0_usb30_host: vcc5v0-usb30-host-regulator {
> +	vcc5v0_usb_host1: vcc5v0_usb_host2: vcc5v0-usb-host-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v0_host";
>  		regulator-boot-on;
> @@ -200,12 +200,12 @@ &u2phy3 {
>  };
> 
>  &u2phy2_host {
> -	phy-supply = <&vcc5v0_usb30_host>;
> +	phy-supply = <&vcc5v0_usb_host1>;
>  	status = "okay";
>  };
> 
>  &u2phy3_host {
> -	phy-supply = <&vcc5v0_usb30_host>;
> +	phy-supply = <&vcc5v0_usb_host2>;
>  	status = "okay";
>  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
