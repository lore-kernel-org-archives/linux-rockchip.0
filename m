Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D59C77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kxtj97mZ1FK4k4mPSTSBIpfIW6MBpHNhrOTHVCbA7Bc=; b=B/DVdsDQkLcfQ6
	Wps0U+F4ml7Qm89KgLKL376OG8kdi+WA+MhKt8YCRboSL5JkoV93gPsa2M7WbvCjqB/QPQIbWge8z
	UVWF3cOGM864Xlp/JkbQNzTGiMv5gdDn9QFzOxJp6KoRUi4qCofVaFU96RYphthLRDCXXIKSvCCDF
	shSoOBF5jo8b2+wsCKfPcrNkBMLsku6xLnQzr4sChf7s5F7z0mXagGV9cLdkqF8mNJrFowCkDdzdz
	cPoR3sPr+i+XpFSksz8ya6gDMAS5bm0skfL4H1qufxevbsZNmQ+EXA/97iLOZRSk08N5Isgi19f/+
	wEBWI6Yf3Kcm3TPmsckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poMNC-00FsKg-2P;
	Mon, 17 Apr 2023 10:46:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poMN7-00FsEj-05
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 10:46:12 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poMN3-0002dr-Ug; Mon, 17 Apr 2023 12:46:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de, Chris Morgan <macroalpha82@gmail.com>,
 =?ISO-8859-1?Q?K=F6ry?= Maincent <kory.maincent@bootlin.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: fix suspend/resume
Date: Mon, 17 Apr 2023 12:46:05 +0200
Message-ID: <7404631.18pcnM708K@diego>
In-Reply-To: <20230417094215.2049231-1-s.hauer@pengutronix.de>
References: <20230417094215.2049231-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_034609_065527_3D928887 
X-CRM114-Status: GOOD (  17.86  )
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

Hi Sascha,

Am Montag, 17. April 2023, 11:42:15 CEST schrieb Sascha Hauer:
> During a suspend/resume cycle the VO power domain will be disabled and
> the VOP2 registers will reset to their default values. After that the
> cached register values will be out of sync and the read/modify/write
> operations we do on the window registers will result in bogus values
> written. Fix this by marking the regcache as dirty each time we disable
> the VOP2 and call regcache_sync() each time we enable it again. With
> this the VOP2 will show a picture after a suspend/resume cycle whereas
> without this the screen stays dark.
> 
> Fixes: 604be85547ce4 ("drm/rockchip: Add VOP2 driver")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

somehow we overlapped with this v2 and me applying the original one [0]
to drm-misc. With drm-misc being a shared tree there is also no way back.

So if this v2 is better suited, could do a follow-up patch instead - on
top of your original one?

Thanks
Heiko



[0] https://cgit.freedesktop.org/drm/drm-misc/commit/?h=drm-misc-fixes&id=afa965a45e01e541cdbe5c8018226eff117610f0

> ---
> 
> Changes since v1:
> - Use regcache_mark_dirty()/regcache_sync() instead of regmap_reinit_cache()
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index ba3b817895091..293c228a83f90 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -839,6 +839,8 @@ static void vop2_enable(struct vop2 *vop2)
>  		return;
>  	}
>  
> +	regcache_sync(vop2->map);
> +
>  	if (vop2->data->soc_id == 3566)
>  		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
>  
> @@ -867,6 +869,8 @@ static void vop2_disable(struct vop2 *vop2)
>  
>  	pm_runtime_put_sync(vop2->dev);
>  
> +	regcache_mark_dirty(vop2->map);
> +
>  	clk_disable_unprepare(vop2->aclk);
>  	clk_disable_unprepare(vop2->hclk);
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
