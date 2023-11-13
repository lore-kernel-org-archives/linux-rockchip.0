Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE2F5C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 20:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtZPciuQ7V3r3+BpLSfylXAot23aOoH3HAUfhg549/U=; b=OTAzLTTW5lMcFN
	RTxJsdZVmJhnLfJ77+b5iLBBBUhgi4g7SSsIrywyEvyKgQWWxT8OgpLZ32ND1vVIhb1xBjyiCyX4i
	N7YuVj8WfT8JuXzyDNh1A/IOXKoZ8jDiTF7Gnn+LBhBWUUT8okcF1l4h6sLoJyv8HB2ODmtMLyJUk
	I6d3BpuRKoeJLdWBMeeTqq77xuqTJQ/8+AzYSCHGWttH4aK0i14rbvIrqfj6crojC/lcdr1Zt+CT+
	SlJCESkPvBB3ZZmfFR/uT6NC6LmG5TaFJJolWeNeofmQATa/MKClLyMmeO5BoivnUe29LvVvlUxh8
	KuSTIMC1K1qUgWLPZnEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2dlL-00Egys-2H;
	Mon, 13 Nov 2023 20:42:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2dlI-00EgxT-1n;
	Mon, 13 Nov 2023 20:42:25 +0000
Received: from i5e861935.versanet.de ([94.134.25.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r2dl0-0003qR-St; Mon, 13 Nov 2023 21:42:06 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Wolfram Sang <wsa@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-i2c@vger.kernel.org, Heiner Kallweit <hkallweit1@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/20] drivers/gpu/drm/rockchip: remove I2C_CLASS_DDC support
Date: Mon, 13 Nov 2023 21:42:05 +0100
Message-ID: <6269120.1IzOArtZ34@diego>
In-Reply-To: <20231113112344.719-2-hkallweit1@gmail.com>
References: <20231113112344.719-1-hkallweit1@gmail.com>
 <20231113112344.719-2-hkallweit1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_124224_589690_C9508166 
X-CRM114-Status: GOOD (  19.19  )
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

Am Montag, 13. November 2023, 12:23:25 CET schrieb Heiner Kallweit:
> After removal of the legacy EEPROM driver and I2C_CLASS_DDC support in
> olpc_dcon there's no i2c client driver left supporting I2C_CLASS_DDC.
> Class-based device auto-detection is a legacy mechanism and shouldn't
> be used in new code. So we can remove this class completely now.
> 
> Preferably this series should be applied via the i2c tree.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> 
> ---
>  drivers/gpu/drm/rockchip/inno_hdmi.c   |    1 -
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c |    1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
> index 6e5b922a1..a7739b27c 100644
> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> @@ -793,7 +793,6 @@ static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
>  	init_completion(&i2c->cmp);
>  
>  	adap = &i2c->adap;
> -	adap->class = I2C_CLASS_DDC;
>  	adap->owner = THIS_MODULE;
>  	adap->dev.parent = hdmi->dev;
>  	adap->dev.of_node = hdmi->dev->of_node;
> diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> index fa6e592e0..7a3f71aa2 100644
> --- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> @@ -725,7 +725,6 @@ static struct i2c_adapter *rk3066_hdmi_i2c_adapter(struct rk3066_hdmi *hdmi)
>  	init_completion(&i2c->cmpltn);
>  
>  	adap = &i2c->adap;
> -	adap->class = I2C_CLASS_DDC;
>  	adap->owner = THIS_MODULE;
>  	adap->dev.parent = hdmi->dev;
>  	adap->dev.of_node = hdmi->dev->of_node;
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
