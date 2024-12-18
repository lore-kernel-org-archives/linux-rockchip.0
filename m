Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8911E7718A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Dec 2024 12:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICA0IoIm2BpLUZQXukmPiHwKUxI518yQNNjKHZj4tqg=; b=NwjWGoueNoIyxY
	tXq5jwrYRmA63lBk+o2/wEIuO/1rJwtU724OIWew4m2yrt1KsxKdYOTS7oe+IvIpvEdUUV9ElIofc
	FNE+t1KRNQgEiL3DY3bKQo6vcF+p3QFCiAafo0afNhKED5lkW+qdXwBiqu0qg0wNYzfPN2dXCKHTn
	27ERdLktRwImnXzDKjkATdtpe0vdSjEVMmtkBMcI4itZEs8KK8JcQngV9gkvZKR40NPRUwreUuBxC
	ieLo3ttQ9n7Mg4O9G4h0RPZIL7EXzGjOyEgBs5V0A66XFAntrrvaXC/QsyvXVo/+d08NipslKmzuC
	DNCKo949PM6ID2cWgtpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNtII-0000000Gbwv-0OVe;
	Wed, 18 Dec 2024 12:36:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNtHC-0000000GbmC-0TOQ;
	Wed, 18 Dec 2024 12:35:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=phZjJ8Vd0a6a/KUNLyGQpPa9OxsPWwxJsNWkp8oFdNc=; b=lIuwHm8C3o0XdtMfisDH16HFrk
	xW2eZCC0NsEyhgo1QgwipjBohy3XKMwfemabXrMubtE3JQsgBlBhjxNCxzvSPsOKftOgk+npqLDSf
	eFcNtJT4PNdAkgiVD7bkntXI+XJwnWMmxMEd/3rdATt3pjh4CSCQ6Voajw1xEDtkoan5lyLsuJxdT
	+kfKXb8SsDni0xHBr61qMlBNjF53ldb0qlaD0DSRhy3WP8adBNHKzmwdOUjPH131INjHuFoNaizkW
	WpmFGXwgxswGU3P/RkGbheMpkqPUKzWDgYlhcdWCOvLG2Zf8GuPjgmWCmV3d+sbWwrRsJ5NDBhy6O
	YOP8x3ug==;
Received: from i53875bfb.versanet.de ([83.135.91.251] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tNtGw-0000Hd-65; Wed, 18 Dec 2024 13:35:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v2 04/11] phy: phy-rockchip-samsung-hdptx: Add support for eDP
 mode
Date: Wed, 18 Dec 2024 13:35:24 +0100
Message-ID: <867267676.0ifERbkFSE@diego>
In-Reply-To: <20241216031225.3746-5-damon.ding@rock-chips.com>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_043542_142031_4EC07EB6 
X-CRM114-Status: GOOD (  13.26  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Damon,

Am Montag, 16. Dezember 2024, 04:12:18 CET schrieb Damon Ding:
> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> pre-emphasis configurations of each link rate have been verified according
> to the eDP 1.3 requirements.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the module author
> ---

> @@ -255,6 +364,19 @@ struct ropll_config {
>  	u8 cd_tx_ser_rate_sel;
>  };
>  
> +struct tx_drv_ctrl {
> +	u8 tx_drv_lvl_ctrl;
> +	u8 tx_drv_post_lvl_ctrl;
> +	u8 ana_tx_drv_idrv_idn_ctrl;
> +	u8 ana_tx_drv_idrv_iup_ctrl;
> +	u8 ana_tx_drv_accdrv_en;
> +	u8 ana_tx_drv_accdrv_ctrl;
> +	u8 tx_drv_pre_lvl_ctrl;
> +	u8 ana_tx_jeq_en;
> +	u8 tx_jeq_even_ctrl;
> +	u8 tx_jeq_odd_ctrl;
> +};
> +
>  enum rk_hdptx_reset {
>  	RST_PHY = 0,
>  	RST_APB,

not a full review (yet), but this part conflicts with
commit f2dbca169790 ("phy: phy-rockchip-samsung-hdptx: Don't request RST_PHY/RST_ROPLL/RST_LCPLL")

[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f2dbca169790ea1e436ffdd9ef37d7c3a4401c46



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
