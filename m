Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3A99CD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 11:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4m9K2v2u705TWyVsUKZZMqCOZ1m7JHoSM2367EP6iiU=; b=KI8s/cfVDvUfIIEekJ/qzZhECR
	4qb+8IBGNQ7g2Xqj0k0YffqECl0fM9u4wucLZvrB9mCfRCh3QuFxDsFROfxkbTsA8Jc2BYlY1+fw0
	UF7D+eANCv7107HkGid7LDsk4JS3J5BOFfcJp+9wREXa+ThFUzmkKJ0lAv1lKwGegutllhp9a3WXB
	Z3sFKgI3p0oU2QPPhhn1ZuUHtfuWZ//VCGzXRZNPtxMZBsN5lnCJs3zP9/WD1g6yBUzrXz2rbzWNi
	T5QFpR7J7w5UWC2383sb9of3fA180CIY/iC2XvDZm69n7RukX3e56bjEnQBdiIiZAzWGnguzMVNtz
	GdBkvaSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU0Pd-0000000Ah5w-3998;
	Mon, 01 Jun 2026 11:02:29 +0000
Received: from mail-m19731104.qiye.163.com ([220.197.31.104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU0Pb-0000000Ah5D-3J51
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 11:02:29 +0000
Received: from [172.16.12.77] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 40978370c
	for <linux-rockchip@lists.infradead.org>; Mon, 1 Jun 2026 18:47:24 +0800 (GMT+08:00)
Message-ID: <fa6a9fac-9d87-4fa8-b3ae-6e9365130152@rock-chips.com>
Date: Mon, 1 Jun 2026 18:47:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/rockchip: vop2: Use vop2->old_layer_sel directly
 in wait_for_layer_cfg_done()
To: linux-rockchip@lists.infradead.org
References: <20260504-vop2-layer-cfg-tmout-v1-0-730226a7331e@collabora.com>
 <20260504-vop2-layer-cfg-tmout-v1-5-730226a7331e@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20260504-vop2-layer-cfg-tmout-v1-5-730226a7331e@collabora.com>
X-HM-Tid: 0a9e82cba35309d8kunm2514161238d303
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHU0eVkNJQk0dTx8fTx4aTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TFLucAbO7pB9/jP0ZMY7lyJTBp+Dm3H3hsm+KeI+39NefMacnvSE8g2lGTgOQhf37foTMKkqEOlR0gOy2ol9B8rhnY1TxDk8TfzYpfl1j0UjL5F1+UyefbNuBw7WV14luetNqtByymLBEUEtR4vigvPXLSg7waXgkP+UllkbbuE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=pgfTBZFHZhT0sbtCXDzyWjLIv+X/9w4XJVmh1kQanQI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_040227_991408_21685E72 
X-CRM114-Status: GOOD (  11.48  )
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

Hello,

On 5/5/26 02:24, Cristian Ciocaltea wrote:
> After the old_layer_sel local was removed, the only caller of
> rk3568_vop2_wait_for_layer_cfg_done() already passes vop2->old_layer_sel
> as the expected value.
> 
> Drop the redundant parameter and read the member directly inside the
> function.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

    
    Reviewed-by: Andy Yan <andy.yan@rock-chips.com>


> ---
>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 0849bd922ffb..1d8473a6dfd1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -2115,7 +2115,7 @@ static u32 rk3568_vop2_read_layer_cfg(struct vop2 *vop2)
>   	return vop2_readl(vop2, RK3568_OVL_LAYER_SEL);
>   }
>   
> -static void rk3568_vop2_wait_for_layer_cfg_done(struct vop2 *vop2, u32 cfg)
> +static void rk3568_vop2_wait_for_layer_cfg_done(struct vop2 *vop2)
>   {
>   	u32 atv_layer_cfg;
>   	int ret;
> @@ -2124,10 +2124,10 @@ static void rk3568_vop2_wait_for_layer_cfg_done(struct vop2 *vop2, u32 cfg)
>   	 * Spin until the previous layer configuration is done.
>   	 */
>   	ret = readx_poll_timeout_atomic(rk3568_vop2_read_layer_cfg, vop2, atv_layer_cfg,
> -					atv_layer_cfg == cfg, 10, 50 * 1000);
> +					atv_layer_cfg == vop2->old_layer_sel, 10, 50 * 1000);
>   	if (ret)
>   		drm_err_ratelimited(vop2->drm, "wait layer cfg done timeout: 0x%x--0x%x\n",
> -				    atv_layer_cfg, cfg);
> +				    atv_layer_cfg, vop2->old_layer_sel);
>   }
>   
>   static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
> @@ -2292,7 +2292,7 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   		 * Changes of other VPs' overlays have not taken effect
>   		 */
>   		if (cfg_done)
> -			rk3568_vop2_wait_for_layer_cfg_done(vop2, vop2->old_layer_sel);
> +			rk3568_vop2_wait_for_layer_cfg_done(vop2);
>   	}
>   
>   	if (layer_sel != vop2->old_layer_sel || port_sel != vop2->old_port_sel)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
