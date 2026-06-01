Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E087BCD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 11:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlNpNOaD1AgBRh2U1ysKSgE1hNHszUxTrDuGszTFT7M=; b=J12HotK2LeD+pS
	bUQ0T4lvJ4qgfMFagiTPZlhZ49zp8HKHB0XY0v9Ctfzh4TdRFPtrTVD9CEKlA0+Ls16n+SK0qPc4L
	GUW2CNbNImCuCuJGa3voK3LqjuNN+632+y5qrMbDqzvYyS+2O425IJUiw35dG218rWhPfnKp9JJgY
	QVO/eqeep3xzHdkXLST5tfIreWTBc1SkRMTK2nX1Fwi3k4//Gsa5b+Mkh3xrO6dBuPIfD5s4ilglz
	0OtQmTHOIx9F5C73Xdzpu0NyE2Cu94KWgPSByyGwIWEmfqQSkqAbfXnxm8UCbV9wCXAeXMIfgo+Wu
	Bl5hdkB5n4RCrYM1YV5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU0No-0000000Agms-24Rf;
	Mon, 01 Jun 2026 11:00:36 +0000
Received: from mail-m15596.qiye.163.com ([101.71.155.96])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU0Nl-0000000Agll-2aN2;
	Mon, 01 Jun 2026 11:00:35 +0000
Received: from [172.16.12.77] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4097835ba;
	Mon, 1 Jun 2026 18:45:28 +0800 (GMT+08:00)
Message-ID: <a92af1c4-cd0e-4d31-9fd1-7e9cae6bb1d1@rock-chips.com>
Date: Mon, 1 Jun 2026 18:45:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/rockchip: vop2: Wait for layer cfg done before
 switching LAYERSEL_REGDONE_SEL
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260504-vop2-layer-cfg-tmout-v1-0-730226a7331e@collabora.com>
 <20260504-vop2-layer-cfg-tmout-v1-2-730226a7331e@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20260504-vop2-layer-cfg-tmout-v1-2-730226a7331e@collabora.com>
X-HM-Tid: 0a9e82c9e0e709d8kunmad12aac138cee1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGUxKVk1JHhlCQ01KTkxLSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BfXqXNyopum9m3NwZ3/eLvgDX/aWRtwx81UaXfNhBs/h5/HxoDhhncez6cfRAWAHnc/Vwd9lvbGj6wLRIWR3Ylgs82gcHezYHfcWMPBEzr5O5UuzfgX21toLVYA6gNXbgvCqBBq6keqTxKZGXDLBosAcXbIMOL+FUBNHcP/azD0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=szKM+xo2CtG53S4RQ+h02A+npZXUcLB6AowO29QwZPs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_040033_859291_47FAED16 
X-CRM114-Status: GOOD (  15.88  )
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
> LAYERSEL_REGDONE_SEL mask of RK3568_OVL_CTRL register controls which
> Video Port (VP) vsync latches the shared RK3568_OVL_{LAYER|PORT}_SEL
> shadow registers into the active configuration.
> 
> rk3568_vop2_setup_layer_mixer() overwrites LAYERSEL_REGDONE_SEL to the
> current VP ID before waiting for the previous VP layer configuration to
> take effect.  As a consequence, the previous VP vsync can no longer
> trigger the latch, so the wait polls a value that might never appear.
> 
> Move the layer cfg done wait before the RK3568_OVL_CTRL write so the
> previous VP vsync can still commit the pending configuration.
> 
> Fixes: 3e89a8c68354 ("drm/rockchip: vop2: Fix the update of LAYER/PORT select registers when there are multi display output on rk3588/rk3568")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

   
    Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 19 ++++++++++---------
>   1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index edca0fb16e08..5206f01ec787 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -2289,15 +2289,6 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   	 *    lead to the configuration of the previous VP being take effect along with the VSYNC
>   	 *    of the new VP.
>   	 */
> -	if (layer_sel != old_layer_sel || port_sel != old_port_sel)
> -		ovl_ctrl |= FIELD_PREP(RK3568_OVL_CTRL__LAYERSEL_REGDONE_SEL, vp->id);
> -	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
> -
> -	if (port_sel != old_port_sel) {
> -		vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
> -		vop2_cfg_done(vp);
> -		rk3568_vop2_wait_for_port_mux_done(vop2);
> -	}
>   
>   	if (layer_sel != old_layer_sel && atv_layer_sel != old_layer_sel) {
>   		cfg_done = vop2_readl(vop2, RK3568_REG_CFG_DONE);
> @@ -2310,6 +2301,16 @@ static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
>   			rk3568_vop2_wait_for_layer_cfg_done(vop2, old_layer_sel);
>   	}
>   
> +	if (layer_sel != old_layer_sel || port_sel != old_port_sel)
> +		ovl_ctrl |= FIELD_PREP(RK3568_OVL_CTRL__LAYERSEL_REGDONE_SEL, vp->id);
> +	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
> +
> +	if (port_sel != old_port_sel) {
> +		vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
> +		vop2_cfg_done(vp);
> +		rk3568_vop2_wait_for_port_mux_done(vop2);
> +	}
> +
>   	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
>   	mutex_unlock(&vop2->ovl_lock);
>   }
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
