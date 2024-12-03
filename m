Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63923E74AC3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Dec 2024 16:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rh147SvsrGnh/L0ucixP/5XTEzwy6LPGwdASqPm4M8c=; b=eySjBw2J/cXvTg
	nqFiWElZvBO8Ll5f2ixgdt1QRWOfrkirPEt3t1wDfECFC5K90tme5YqAgaGxeVpaTYk5UQO9yIzx3
	+Tw6bXsT25tE1zqsZ8UPzxO9TBe0Rh5m4giQ/h6/S0MV3HvFIpJs3SFNPok0NWIU6WnuH2SqL+TNT
	1yg/gHeuhxX9DuhnJ04gOcdRPotZUQ+pNEEL7GPEhJQfA7LXlAS5xsfbco2oPLRT4i1fmprRAd7wf
	2n032KvgM3bV9kwBfsL297qpj9L1NMUlXQH6HjAiEMtZAZ0H3QiKL0QVk3vGT1v1iebWVxAvkoCtw
	EaUzytvnBPIleCVEShZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIVdA-0000000A4iI-3TW0;
	Tue, 03 Dec 2024 16:20:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIVd7-0000000A4he-3RcN
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Dec 2024 16:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zr2fwaRM/tT8qiD2XWSBmLUeHIkf64MoUkSUJPRTs/Q=; b=Ch6idT0JkaBDTXZX27TctV+jBJ
	MtzADH9V1R84Xxv2c4fPxyRDwngDdgGP8Qdr0+6q7G2cT1Aq7L+mETQrsU1L1bT6Xtk24uiINi9uC
	kRxnidTh+x6nYELAlBw8HA1R8eHZZU4y0IyYcTg4zmCrnNGiPU+3OLffAdoDL5JR+s8K6v93E3bID
	1CHqsAT7rygK9DK2DNYcl3zhWJh0MCY2jKwpJB0GZM5Efgr7gxW+7KHZSWEGMxe6r+EoRQYvmD3nO
	Hf10Tz9c9KZMae9QTIErGKKh3qMJgSmxoF37E4FHx3fDKrXbgIh5WkPPrYlWtu7XPQc8WYgjltY2X
	BXzwWtGA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIVcy-0003Lo-BS; Tue, 03 Dec 2024 17:19:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for Radxa ROCK
 5B
Date: Tue, 03 Dec 2024 17:19:55 +0100
Message-ID: <2724169.KRxA6XjA2N@diego>
In-Reply-To: <20241130014043.12942-2-naoki@radxa.com>
References: <20241130014043.12942-1-naoki@radxa.com>
 <20241130014043.12942-2-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_082005_868418_43487067 
X-CRM114-Status: GOOD (  16.92  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Samstag, 30. November 2024, 02:40:43 CET schrieb FUKAUMI Naoki:
> add rockchip,dp-lane-mux to usbdp_phy1 to make it work properly.

Make it work properly is not an ideal commit description.

I guess the lane assignment for the dp port should be discoverable
in the device schematics, so the commit description should explain
as much.


Heiko

> tested with ELECOM U3HC-A424P10BK[1]:
> 
> $ lsusb -t
> /:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
>     |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
>         |__ Port 003: Dev 003, If 0, Class=Wireless, Driver=btusb, 12M
>         |__ Port 003: Dev 003, If 1, Class=Wireless, Driver=btusb, 12M
> /:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
> /:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
> /:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
> /:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>     |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
> /:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
>     |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/5p, 480M
>         |__ Port 005: Dev 003, If 0, Class=Billboard, Driver=[none], 480M
> /:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>     |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 5000M
>         |__ Port 004: Dev 003, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
> /:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
> /:  Bus 009.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
>     |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
> 
> [1] https://www.elecom.co.jp/products/U3HC-A424P10BK.html
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index c5776e3b4aab..43fc1f24dfc9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -918,6 +918,7 @@ &usbdp_phy0 {
>  };
>  
>  &usbdp_phy1 {
> +	rockchip,dp-lane-mux = <2 3>;
>  	status = "okay";
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
