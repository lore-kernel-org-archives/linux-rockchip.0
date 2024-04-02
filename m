Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12D7ECD1284
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 10:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXRXJlmxqd0C36Da5YdFcNtCE2oXI1/mj4M7vT8/H1g=; b=gkURiU4aZHx7B2
	b/ajJC1xKCef2/F6JqwnpFbNJni2JXHuqJu0EZ2IjVkwpcYbTXryw5L6W8Q9MUmeEjzPB3Et1MT5D
	nuASAvz0elI7uvVLo46zBBMqIzqKmqRSP7+OpkqMpp49Izg7OzlWOHOHuu1vfnfTEVOE3ejUjzI3h
	JS2fQVisQyJwmz3QkzQCuVo4SRnBE7OMVV4tXLPm4mOrJ/K9dA3Z8nLmp6PDCSkr105TMzEHxL5L4
	KlfTsV8FxGthmLmUUqBTZkgowLPfvjG+3wmwWzj6HVmzAuFLIiSn35vLpx9qj+hGkIqjNmKmtSkeq
	ChTAVCxAhNdn6jBITwag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrbY5-0000000Agix-3uYI;
	Tue, 02 Apr 2024 10:39:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrbY1-0000000Aggz-3K9n;
	Tue, 02 Apr 2024 10:39:23 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rrbXy-00051j-5X; Tue, 02 Apr 2024 12:39:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 sfr@canb.auug.org.au, liujianfeng1994@gmail.com
Subject: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from
 vcc3v3_pcie2x1l0 on rock-5b
Date: Tue, 02 Apr 2024 12:39:17 +0200
Message-ID: <2535182.Sgy9Pd6rRy@diego>
In-Reply-To: <20240401081302.942742-1-liujianfeng1994@gmail.com>
References: <20240401081302.942742-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_033921_870776_DBC63F3D 
X-CRM114-Status: GOOD (  20.45  )
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

Am Montag, 1. April 2024, 10:13:02 CEST schrieb Jianfeng Liu:
> Property startup-delay-us is copied from vendor dts and it will
> make kernel not detect pcie wifi device. If I run command:
> "echo 1 > /sys/bus/pci/rescan", pcie wifi device is detected, but
> my wifi device RTL8822CE failed to load driver. Another device
> RTL8723BE can load driver but no wifi signal is detected.
> 
> Removing this property will fix issues above.
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index d6bf2ee07..a9af654a0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -76,7 +76,6 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
>  		regulator-boot-on;
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
> -		startup-delay-us = <50000>;
>  		vin-supply = <&vcc5v0_sys>;
>  	};

this somehow sounds like a hack around a deeper issue.
Because regulator_enable just delays its return by that delay
so the pcie driver should just after this return do the scanning?

Does the pcie driver enable the regulator too late somehow?


Heiko





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
