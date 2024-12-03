Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DEB5E74AC2
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Dec 2024 16:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9UVoMH0r/z7bfaP2lQqf0Vkfp5qzipy1evQx1gM6Lk=; b=gKiBtM79rUcYcJ
	RqCw3o31wDV5cBbYlpaAAm6K7cZc19YRbq4ZsKaAOMi4TgrRMedrUHhgG/xuHihPeokA17yAwhnhz
	mDboXZ61C5VOXe1irpQ8bXzgf5GtVtrbWEClFFEN8HgqsIMS8/8pS0zsKV/upeDsTOZzESrO3yiqs
	g9LpGj/RqRuVCAXSXme26ESfTJJkqd4YFtgyj74+8QZHUNWTKb7v/q4W9zY56sTR9GKDCpZD02wxe
	W6dp1Q54xGgMYq8RVbaMzWt+0GEEiO6UISQBEyxc59P0H4NtTtudiIKwr1Wa2AxtJGWBZOF0+NM6c
	4tePvhEGqe6Qk8MybGXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIVc2-0000000A4XI-2LhV;
	Tue, 03 Dec 2024 16:18:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIVbz-0000000A4WE-3fey
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Dec 2024 16:18:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yhaxMPAd2c0afvX2792EZE1r3sNxolxn6w2os8f33rk=; b=aN5UlgvC6UhPoHoKuCxe+CBzRJ
	X56HsU2XN4gLFuNKGUyLoLEeqpGssgwLpvIZnSg/pOYP429/mWDQPDH+5KkCEPFDh94tB//daRabv
	xxpABiJ/xznG1J4D9u1NL4x4RmEjZm2CkOkMXUSE57rEPSd7+0nNL5sWDw6nMexNwEXg1TyLCDFjs
	51rdlbR9s2GomQWKByejjGczSrex8H8breUDnrzfwmPJhWn7EmwVjW7gPgnK1Eh337PCy6x55tiJd
	BqMM4wL1b8A4o1O9/0RzJn/gVKZPv5Y/fAiqQ6Mulluz2FbX6nN2DeWAcwOD8D8HBrVEm3l3U1qD3
	LfNpAujg==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIVbk-0003L9-SN; Tue, 03 Dec 2024 17:18:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST port for
 Radxa ROCK 5B
Date: Tue, 03 Dec 2024 17:18:39 +0100
Message-ID: <18640241.sWSEgdgrri@diego>
In-Reply-To: <20241130014043.12942-1-naoki@radxa.com>
References: <20241130014043.12942-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_081855_933985_109DB85B 
X-CRM114-Status: GOOD (  15.32  )
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

Am Samstag, 30. November 2024, 02:40:42 CET schrieb FUKAUMI Naoki:
> Type-C port is dual-role USB 3.0 port. add usb_host0_xhci and phy
> nodes to use it as HOST port.

This needs a bit more explanation on _why_ you're statically
setting this to host-mode.

Heiko

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 0ec4992b43cd..c5776e3b4aab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -840,6 +840,14 @@ &tsadc {
>  	status = "okay";
>  };
>  
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
>  &u2phy1 {
>  	status = "okay";
>  };
> @@ -883,6 +891,11 @@ &usb_host0_ehci {
>  	status = "okay";
>  };
>  
> +&usb_host0_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
>  &usb_host1_ehci {
>  	status = "okay";
>  };
> @@ -900,6 +913,10 @@ &usb_host2_xhci {
>  	status = "okay";
>  };
>  
> +&usbdp_phy0 {
> +	status = "okay";
> +};
> +
>  &usbdp_phy1 {
>  	status = "okay";
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
