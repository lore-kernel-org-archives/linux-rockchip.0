Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9C93C25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STImwFlozf/YV4cP84LZYUMiBULjlffKsBpsZMtOhv8=; b=AoxMWJCCGY/M9e
	yseSAsfej/1tY4YJlRvnDHybMk2T8yIGeYPfh1Cwn1dFlFUXeOPfqTl3FQaz6+YJixTZIa/vc5KYY
	b5EpA7F9xcWb7Ev242WqPr2C/o64x/7i4wPK9SAJqvHRS72N8R+q/+4XNpIcH05wrs8GrRfmrWz+P
	6tYh73RkhSe7b/twxysU3YisNeC+wHhImAEgSmOKGc3v6+ZvkbtyhJFyhsBmCMP7be9taMAbZqLC4
	kWjIO0Qiv6peij2p1Gbn53VSvZfYOMifKNtkWZydwsF4gbLyQrZKx6mt4qiiOmybd1YO+4zA5ETga
	0ebKiGZu5epCcFIv1Bfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhCZ-0000000GHR1-0yly;
	Mon, 27 May 2024 20:44:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhCO-0000000GHPc-2YHP;
	Mon, 27 May 2024 20:44:05 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBhBf-0004Tg-UH; Mon, 27 May 2024 22:43:19 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Val Packett <val@packett.cool>
Cc: Val Packett <val@packett.cool>, stable@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/rockchip: vop: clear DMA stop bit upon vblank on
 RK3066
Date: Mon, 27 May 2024 22:43:18 +0200
Message-ID: <1817371.3VsfAaAtOV@diego>
In-Reply-To: <20240527071736.21784-1-val@packett.cool>
References: <2024051930-canteen-produce-1ba7@gregkh>
 <20240527071736.21784-1-val@packett.cool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_134404_655133_3928AE51 
X-CRM114-Status: GOOD (  21.67  )
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

Hi Val,

Am Montag, 27. Mai 2024, 09:16:33 CEST schrieb Val Packett:
> On the RK3066, there is a bit that must be cleared, otherwise
> the picture does not show up on the display (at least for RGB).
> 
> Fixes: f4a6de8 ("drm: rockchip: vop: add rk3066 vop definitions")
> Cc: stable@vger.kernel.org
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> v2: doing this on vblank makes more sense; added fixes tag

can you give a rationale for this please?

I.e. does this dma-stop bit need to be set on each vblank that happens
to push this frame to the display somehow?

Because at least in theory atomic_flush where this was living in in v1,
might happen at a slower interval?


Thanks
Heiko

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 6 ++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 1 +
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 1 +
>  3 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index a13473b2d..2731fe2b2 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1766,6 +1766,12 @@ static void vop_handle_vblank(struct vop *vop)
>  	}
>  	spin_unlock(&drm->event_lock);
>  
> +	if (VOP_HAS_REG(vop, common, dma_stop)) {
> +		spin_lock(&vop->reg_lock);
> +		VOP_REG_SET(vop, common, dma_stop, 0);
> +		spin_unlock(&vop->reg_lock);
> +	}
> +
>  	if (test_and_clear_bit(VOP_PENDING_FB_UNREF, &vop->pending))
>  		drm_flip_work_commit(&vop->fb_unref_work, system_unbound_wq);
>  }
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index b33e5bdc2..0cf512cc1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -122,6 +122,7 @@ struct vop_common {
>  	struct vop_reg lut_buffer_index;
>  	struct vop_reg gate_en;
>  	struct vop_reg mmu_en;
> +	struct vop_reg dma_stop;
>  	struct vop_reg out_mode;
>  	struct vop_reg standby;
>  };
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index b9ee02061..9bcb40a64 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -466,6 +466,7 @@ static const struct vop_output rk3066_output = {
>  };
>  
>  static const struct vop_common rk3066_common = {
> +	.dma_stop = VOP_REG(RK3066_SYS_CTRL0, 0x1, 0),
>  	.standby = VOP_REG(RK3066_SYS_CTRL0, 0x1, 1),
>  	.out_mode = VOP_REG(RK3066_DSP_CTRL0, 0xf, 0),
>  	.cfg_done = VOP_REG(RK3066_REG_CFG_DONE, 0x1, 0),
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
