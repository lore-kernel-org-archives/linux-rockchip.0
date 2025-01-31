Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F4CFC0218D
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jan 2025 09:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9X2XMV0b5bFAA4V3jXJIepd/EyVJz1vChrgtQF7TOo=; b=OD/RFvyeaICdnY
	3I2McTQIwZ/qm5zJtR01PPhcuWv4xstG+MDA6WFds68hmBodrRnESBMb/OlqQH7HAAQgnufaAT0YE
	cnFlOLofMrBZdPc8ZXfngV5ti0CP0LrGo7VMagLTMYPlGBU/R1aIUSrUNJDa/uqeSm/4uq/Vr8fHN
	IHrcVuCTROhlnErSzdRYCEdO+eznOA6X2gV3BWNiF1TWwdNKvKof8mkVWNkOhL02xq6HEpnVams8a
	6LhHjntEussFP8HOjTYGc12I87TCulSLo9WYY/g2fbw5WlMafRKWKeIwiO71n4X/eMfKBJTixNjQ3
	6LwENwQNYi3O5njj/VIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdn21-0000000AH2F-3Njt;
	Fri, 31 Jan 2025 09:09:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdn0e-0000000AGkO-3kVf;
	Fri, 31 Jan 2025 09:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qBM19W687ds68sEqtJ4vSFA6vs5r5fWKLK9XgZ4ixE0=; b=fpKcdvnbProJpRtOff/uta2zO1
	Xp+MVSiJ8TO4LfWykrj2Q+X02a+jr4pdNSgjS5XIu5LAtaubaR8GJll/OHqwF/qaAfLe5rf2MNWDp
	F39cFgmoNVf8euCYGeiVzgjS3fGTT+Rh1JB1msyjEBkCfsIVnksuUerd3ze4Cj1eVG3QXeSijF8f1
	nHwOl+5U5VLi7pFyh5w/7SpELWmgP41aoTsYFGQYYZldlTt0AUTbikzijwHvzIlLsIMCzJHyVt4AO
	qML0o24k88Zso+sZNxx9meAvLEnBLp4BXhEnxF9/OeckaEzWTZTIUrpe5j+63VN27C5M1n0cdrJiv
	/We0Uj+g==;
Received: from [212.111.254.164] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tdn0W-0006Bw-LK; Fri, 31 Jan 2025 10:08:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] phy: rockchip: fix Kconfig dependency more
Date: Fri, 31 Jan 2025 10:08:10 +0100
Message-ID: <5999606.DvuYhMxLoT@phil>
In-Reply-To: <20250122065249.1390081-1-arnd@kernel.org>
References: <20250122065249.1390081-1-arnd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_010820_934297_E46178A6 
X-CRM114-Status: GOOD (  22.48  )
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
Cc: linux-rockchip@lists.infradead.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Zhang Yubing <yubing.zhang@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 22. Januar 2025, 07:52:44 MEZ schrieb Arnd Bergmann:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> A previous patch ensured that USB Type C connector support is enabled,
> but it is still possible to build the phy driver without enabling
> CONFIG_USB (host support) or CONFIG_USB_GADGET (device support), and
> in that case the common helper functions are unavailable:
> 
> aarch64-linux-ld: drivers/phy/rockchip/phy-rockchip-usbdp.o: in function `rk_udphy_probe':
> phy-rockchip-usbdp.c:(.text+0xe74): undefined reference to `usb_get_maximum_speed'
> 
> Select CONFIG_USB_COMMON directly here, like we do in some other phy
> drivers, to make sure this is available even when actual USB support
> is disabled or in a loadable module that cannot be reached from a
> built-in phy driver.
> 
> Fixes: 9c79b779643e ("phy: rockchip: fix CONFIG_TYPEC dependency")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

@Vinod, I guess this should go into 6.14-rc?

Thanks
Heiko

> ---
>  drivers/phy/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index 2f7a05f21dc5..dcb8e1628632 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -125,6 +125,7 @@ config PHY_ROCKCHIP_USBDP
>  	depends on ARCH_ROCKCHIP && OF
>  	depends on TYPEC
>  	select GENERIC_PHY
> +	select USB_COMMON
>  	help
>  	  Enable this to support the Rockchip USB3.0/DP combo PHY with
>  	  Samsung IP block. This is required for USB3 support on RK3588.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
