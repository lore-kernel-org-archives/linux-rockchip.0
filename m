Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE7ACF0427
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 21:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OspYjzp3sz4ih1j7fHx1U1YDoGfyoypRJcc0wqvwPf8=; b=cB0INHjMRL07y1M2NcmVhuzFvh
	Dqe2oj5FwBIrlI7BiBltuXXVL75SN3Gb0w5V8BGKgv3bid7cATWpOkce2+7WWxhAfvOwC/rkqguzs
	X8JDnAhIIIrDguTwyGLmp5XKZFL46qXi1vh+843+KCdKsgHXd+GAhs/19sF5Lrle1jIPHo6wRi1Pp
	2nwx4OjsVQU3BWbBqJz6zEFe/yK7uyq4CjTDMZ409tplFFWPKQ2b+Lfk+8zJ88Ngl4hLI3x52JYdE
	ClYEKCE6Ufls7sCIYi7ek0hEfSvJjyKqNWlaN1klh9BJbbBJms+m7hGf3CjI2qWyBLPW70di6KgOC
	RgEH+QJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHXr-000000079I3-1OqI;
	Tue, 08 Oct 2024 21:15:03 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syHWX-000000079B1-2Qts;
	Tue, 08 Oct 2024 21:13:42 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728422019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7d0nybW1X+KciqYLdainH4mq7ma/xpQb0IcAN4MDxxo=;
	b=tAtgChPP70XUm1r3gDGjhzfBRg5UcvLMnw7hdhnnflvvYuza3drRZO2EXoI8Z3877nYAye
	JhSNnaGhxXHx/SuZeIdVf9VaeKD0f90QoSLpItBdl6AFgb8w7aRkRy2Bi6/cvVkEDdDesd
	sDcDhFl2UU1VMo00p+2XmEiyWo910LRsV7p3bSRZv4ICYfAcNw/EoyRlDufLb3XFl9Ijb2
	a+05pbGVDrbji+FPkwP3uwkgNmYQtRVvCdLA+DqhBcTOvxdtv1j8CWEnf4Ky3SjWWgdbN7
	Xdso1eL6FCEXMaV3KNxl/w0WJ1Fu5qcOe3V7GyFaIWbRyALzfdX6XqzjN6MZKw==
Date: Tue, 08 Oct 2024 23:13:39 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Andy Yan
 <andyshrk@163.com>
Subject: Re: [PATCH v2 03/14] arm64: dts: rockchip: Fix bluetooth properties
 on rk3566 box demo
In-Reply-To: <20241008203940.2573684-4-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-4-heiko@sntech.de>
Message-ID: <5ac9929d1d00183619606e38be5ec64a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_141341_796567_2B8C4680 
X-CRM114-Status: GOOD (  14.48  )
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
> The wakeup gpio properties are named differently too, when changing
> from vendor-tree to mainline. So fix those to match the binding.
> 
> Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip
> rk3566 box demo board")
> Cc: Andy Yan <andyshrk@163.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  I've got these changes
cross-referenced to what's expected in drivers/bluetooth/hci_bcm.c,
and it's all fine.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> index 0c18406e4c59..7d4680933823 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -449,9 +449,9 @@ &uart1 {
>  	bluetooth {
>  		compatible = "brcm,bcm43438-bt";
>  		clocks = <&pmucru CLK_RTC_32K>;
> -		clock-names = "ext_clock";
> -		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> -		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +		clock-names = "txco";
> +		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
>  		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
