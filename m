Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C59C9CF0427
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 21:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xx3HLC+WAdf71HcnrAsNA08x3Fq23gti4ohRPLzy2ow=; b=ZSI704grxcZQ2jGROL6mgTy9ZB
	A2p8/ouCKLbckdH/NfZylM1Dm4q/49jIrJSWZPMUiNSu9958Xh4h9ePI4mMN0KpvG0PxWcVtuAvPl
	pTT6E2lZGCvoHehlHcLfCPefJ0K6aacZNE+Th81+uHeyYmpU150mg0ev7x8J/jW1hEkV6mJgi0SHb
	g+MW9Aj1o4/YYYlVfUiMSs2HKJYMY9knlgekQFqMQLPdm7aXYK/4NwOtiDZs6uagvWlM4u7D2hy5C
	YniuHjZZCXn17AeBlnd0BjVAe7upqtJgN4V7o6Ik2WUZQx0rCMImkrew8VClyO2DANd7fPl3YFcKW
	tBDJ1daw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHZx-000000079Wn-2l8p;
	Tue, 08 Oct 2024 21:17:13 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syHYe-000000079ON-1OeH;
	Tue, 08 Oct 2024 21:15:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728422150;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wBQ0Fe0lYsN0P+fPg0AtFJZEx3fIyICACUmPRJVhs0Y=;
	b=JAkaIYYXVqkjeq1qXd9wRiKPeTJc8p+jziC9A7pqXPUiQC4VmGpI3+Fb2d/OhWmmdTkTJ4
	YCuH+qJhovoB6+0Hoot/QRtAlR/Y2LlFpFwZGtdhxed0jPF2B7M5ZVtOvyPzjtIWi/oW+4
	EaDgwDDKFRecVWgZ5fuKDP3m1rVL8hctNUz3V3StYQVF0Rp0cD6nYJN9+iYQZ7MZlM1hQi
	DRzK+7aNrDbRz91s35tFLF4isWzEJeEQXay6yQMfEVNSOgBf90JeIBVlFzLvt/XHS+yQJX
	5jm+E+o/5XBsKUI4/ZFnMhOYGgMeKxN3VPleJ8eTL7DXubNMTcEIvmslcuXI2A==
Date: Tue, 08 Oct 2024 23:15:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Manivannan
 Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 04/14] arm64: dts: rockchip: Fix bluetooth properties
 on Rock960 boards
In-Reply-To: <20241008203940.2573684-5-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-5-heiko@sntech.de>
Message-ID: <bc4e9c20924888b0333e2df81fabc436@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_141552_662224_965014E8 
X-CRM114-Status: GOOD (  15.16  )
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
> The expected clock-name is different, and extclk also is deprecated
> in favor of txco for clocks that are not crystals.
> 
> So fix it to match the binding.
> 
> Fixes: c72235c288c8 ("arm64: dts: rockchip: Add on-board WiFi/BT
> support for Rock960 boards")
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  I've got this change
cross-referenced to what's expected in drivers/bluetooth/hci_bcm.c,
and it's fine.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index 8146f870d2bd..ab890e7b6c59 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -576,7 +576,7 @@ &uart0 {
>  	bluetooth {
>  		compatible = "brcm,bcm43438-bt";
>  		clocks = <&rk808 1>;
> -		clock-names = "ext_clock";
> +		clock-names = "txco";
>  		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
>  		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
>  		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
