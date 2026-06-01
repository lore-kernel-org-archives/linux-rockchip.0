Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02D09CD6E56
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 10:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rgTJwIM8SqOUwxGiSHwXdqMzheVZhMqU1d9aUeXT+UY=; b=Ry3BMicBI0IlDe9EkTopoFb0lJ
	f2DlqKPU7FAZXWsrUosLV4Q/8rYT08DxGmRWDQHzSi1lSqLJ8Ecy/Cj9xPRJSGahc8xv+Sfo8CXic
	d0nA/6dTPTUTfPZgjQB7dBD/rpv1985PK91NyOFJUPv5IQbGq5LE8z0tSyiPlHRFtaeM4S4IG/exB
	QIEZ7jHd2jaXRRTA7pnvzVo/licXbcS9JKuJwbZAZMJJS6Hz2J1l40yVNYSfDxGQprVR3dUzIc4k5
	T06A2E8chrLvLeVLP4aLd4oKq2Fi9MbSfMT8SOHAmSN3MRXv2Y2wXwhYs6nIhIR9hzW9wEUyFX59B
	7RY4Wzag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU0A8-0000000Aeal-3gHG;
	Mon, 01 Jun 2026 10:46:28 +0000
Received: from mail-m93133.xmail.ntesmail.com ([103.126.93.133])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU0A5-0000000AeZS-1sPv
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 10:46:27 +0000
Received: from [172.16.12.77] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 409783649
	for <linux-rockchip@lists.infradead.org>; Mon, 1 Jun 2026 18:46:14 +0800 (GMT+08:00)
Message-ID: <a476a98f-3cd7-45e8-a726-28a1ab4cdf97@rock-chips.com>
Date: Mon, 1 Jun 2026 18:46:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/rockchip: vop2: Delay old_{layer|port}_sel
 updates in setup_layer_mixer()
To: linux-rockchip@lists.infradead.org
References: <20260504-vop2-layer-cfg-tmout-v1-0-730226a7331e@collabora.com>
 <20260504-vop2-layer-cfg-tmout-v1-3-730226a7331e@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20260504-vop2-layer-cfg-tmout-v1-3-730226a7331e@collabora.com>
X-HM-Tid: 0a9e82ca91a909d8kunmc6d1ccc438d076
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDH00fVhpOSk1KTE8ZT0xLTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=knNHadK61NuhTw+M3bCE6qej8OpWxa6Smeh9IQVAUpiyT0tIv5NdV31v2vfuljtLuzphrm0YF6PvKQdFOK2WTOo9HB1kCr6Vm5giElHpuySg2lIao/xQxwdm4JeN0rZL9FRsVMaQ26+3R0eI2r77w3xvzGs29vJvGxvGSutHxVU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=G6J2OYQZBDeAB3JApEJChWTBhYJum1+NrrIlqlhPa1c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_034626_036723_43730A5F 
X-CRM114-Status: GOOD (  15.90  )
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
> The old_layer_sel and old_port_sel local variables were introduced to
> hold the previous VP configuration for comparisons and wait targets,
> working around the premature update of vop2->old_layer_sel and
> vop2->old_port_sel earlier in the function.
> 
> Remove these superfluous locals and instead defer the assignments of
> vop2->old_layer_sel and vop2->old_port_sel to just before the
> corresponding shadow register writes, where the transition from old to
> new logically belongs.
> 
> No functional change intended.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
    
    Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 21 +++++++++------------
>   1 file changed, 9 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 5206f01ec787..1f5e8c2acecd 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -2136,9 +2136,7 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   	struct drm_plane *plane;
>   	u32 layer_sel = 0;
>   	u32 port_sel;
> -	u32 old_layer_sel = 0;
>   	u32 atv_layer_sel = 0;
> -	u32 old_port_sel = 0;
>   	u8 layer_id;
>   	u8 old_layer_id;
>   	u8 layer_sel_id;
> @@ -2161,8 +2159,7 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   	else
>   		ovl_ctrl &= ~RK3568_OVL_CTRL__YUV_MODE(vp->id);
>   
> -	old_port_sel = vop2->old_port_sel;
> -	port_sel = old_port_sel;
> +	port_sel = vop2->old_port_sel;
>   	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
>   
>   	if (vp0->nlayers)
> @@ -2188,8 +2185,7 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   		port_sel |= FIELD_PREP(RK3588_OVL_PORT_SET__PORT3_MUX, 7);
>   
>   	atv_layer_sel = vop2_readl(vop2, RK3568_OVL_LAYER_SEL);
> -	old_layer_sel = vop2->old_layer_sel;
> -	layer_sel = old_layer_sel;
> +	layer_sel = vop2->old_layer_sel;
>   
>   	ofs = 0;
>   	for (i = 0; i < vp->id; i++)
> @@ -2273,8 +2269,6 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   			     old_win->data->layer_sel_id[vp->id]);
>   	}
>   
> -	vop2->old_layer_sel = layer_sel;
> -	vop2->old_port_sel = port_sel;
>   	/*
>   	 * As the RK3568_OVL_LAYER_SEL and RK3568_OVL_PORT_SEL are shared by all Video Ports,
>   	 * and the configuration take effect by one Video Port's vsync.
> @@ -2290,7 +2284,7 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   	 *    of the new VP.
>   	 */
>   
> -	if (layer_sel != old_layer_sel && atv_layer_sel != old_layer_sel) {
> +	if (layer_sel != vop2->old_layer_sel && atv_layer_sel != vop2->old_layer_sel) {
>   		cfg_done = vop2_readl(vop2, RK3568_REG_CFG_DONE);
>   		cfg_done &= (BIT(vop2->data->nr_vps) - 1);
>   		cfg_done &= ~BIT(vp->id);
> @@ -2298,20 +2292,23 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   		 * Changes of other VPs' overlays have not taken effect
>   		 */
>   		if (cfg_done)
> -			rk3568_vop2_wait_for_layer_cfg_done(vop2, old_layer_sel);
> +			rk3568_vop2_wait_for_layer_cfg_done(vop2, vop2->old_layer_sel);
>   	}
>   
> -	if (layer_sel != old_layer_sel || port_sel != old_port_sel)
> +	if (layer_sel != vop2->old_layer_sel || port_sel != vop2->old_port_sel)
>   		ovl_ctrl |= FIELD_PREP(RK3568_OVL_CTRL__LAYERSEL_REGDONE_SEL, vp->id);
>   	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
>   
> -	if (port_sel != old_port_sel) {
> +	if (port_sel != vop2->old_port_sel) {
> +		vop2->old_port_sel = port_sel;
>   		vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
>   		vop2_cfg_done(vp);
>   		rk3568_vop2_wait_for_port_mux_done(vop2);
>   	}
>   
> +	vop2->old_layer_sel = layer_sel;
>   	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
> +
>   	mutex_unlock(&vop2->ovl_lock);
>   }
>   
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
