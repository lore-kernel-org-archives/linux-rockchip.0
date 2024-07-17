Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0E71C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 06:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eo+me+uv3V7TPfkaVk8k/ieEogMF9GqSoex9qYtc1Qg=; b=hb7z5fIPNvZ/cKGPVDOmy5TNFn
	6AIgt6L3oUMpIuSLtckUOREa5odwZf5S0ufsGt8xcYsLK+AkTgApPe/u+6FV/rqz5r0r983Bf9myu
	fMtvqz2Zg8ioJwKVSeoAWwVePIELywcXJd5Mz8QSu8oam7QQeR2r2ZxZDGSzJLgZ8stBohRd4QS53
	bihl6WMYbum7CgAbn69Pkp80CGB4MC0tvDRpyrEkjxnf3ocjH1thhrkNiosN3N3moGwhCJQNnts01
	rJt5sZAlQvjl2/KeRx6zz+vAe+IXdbuIyKRRoXwfhjEw8NlWmDah6Uv+Yzc3NOCVGh2x3wgR/t42r
	FQZt3y7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyTB-0000000CtW2-2rcM;
	Wed, 17 Jul 2024 06:48:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTySq-0000000CtQo-09Wj;
	Wed, 17 Jul 2024 06:48:37 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721198911;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m0yxmfGeSvbCAPTimmQtl4ygpw8Pr87mesFa5l5qKaI=;
	b=bofsz193UT+VApa96TwrGt5XwYoT6PzThAHm+/uMMozbo1WXWs8gl94f9UrYi1jJKhfnpb
	CkuBrjtDe3yOxLrLHYaEyxSHdZ9FbHZcjiC7DJeLHk7Fs9a6k1wQzGgO8Qg+a+nfkphmja
	9aHuzpgip6Z3Cdbqn+V22r6fgsg5A9hytqZmjGmQuxbOUo6tE2pJrUZMKoDmzFJsvijyVZ
	HrwhE7XrNjgV/qNr/UjKhscyf/sQXoYeEZh9JQbKR2/u//absegxiXDw9bpl4JYQNETj4L
	Zr3fVmP8+RKWChj4uBrL1P588mvVRCR5rR6wZTe0iw9+gpHDIolTJb+e4Yk5cA==
Date: Wed, 17 Jul 2024 08:48:29 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH] drm/rockchip: dsi: Reset ISP1 DPHY before powering it on
In-Reply-To: <6e0ce232acfe952970e9b37402fe08a3678aa43a.1721196758.git.dsimic@manjaro.org>
References: <6e0ce232acfe952970e9b37402fe08a3678aa43a.1721196758.git.dsimic@manjaro.org>
Message-ID: <e79cbc94804e93464be62e7731def4fa@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_234836_264715_937E0421 
X-CRM114-Status: GOOD (  16.88  )
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

Hello all,

On 2024-07-17 08:29, Dragan Simic wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> After a suspend and resume cycle, ISP1 stops receiving data, as 
> observed
> on the Pine64 PinePhone Pro, which is based on the Rockchip RK3399 SoC.
> Re-initializing DPHY during the PHY power-on, if the SoC variant 
> supports
> initialization, fixes this issue.
> 
> [ dsimic: Added more details to the commit summary and description ]
> 
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 4cc8ed8f4fbd..9ad48c6dfac3 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -1240,6 +1240,14 @@ static int dw_mipi_dsi_dphy_power_on(struct phy 
> *phy)
>  		goto err_phy_cfg_clk;
>  	}
> 
> +	if (dsi->cdata->dphy_rx_init) {
> +		ret = dsi->cdata->dphy_rx_init(phy);
> +		if (ret < 0) {
> +			DRM_DEV_ERROR(dsi->dev, "hardware-specific phy init failed: %d\n", 
> ret);
> +			goto err_pwr_on;
> +		}
> +	}
> +
>  	/* do soc-variant specific init */
>  	if (dsi->cdata->dphy_rx_power_on) {
>  		ret = dsi->cdata->dphy_rx_power_on(phy);

After thinking a bit more about this patch in its original form [1]
that's preserved above, I think it would be better to move the
additional DPHY initialization to dw_mipi_dsi_rockchip_resume(),
because that function seems to be the right place for such fixes.

Please, let me know your thoughts.

[1] 
https://megous.com/git/linux/commit/?h=orange-pi-6.9&id=ed7992f668a1e529719ee6847ca114f9b67efacb

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
