Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D6AFC4725D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 10:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asFyYMBvHGpSCY3hBFbJiom/S3U/lj22ripsJYGT7rk=; b=J8gMTKB9nBa6f3
	Dv0sXV90qjKgWpkeim15xTQTIaU5YbPD9JJexa92WZgSWBwNdTKdN5dDfOspv7GGWgFHlZEmxzGMl
	9ebEfnmXjwE8809GadgXm9Hnit81/6FozokRUTytj5O7X7IC/xdTNX4ULVV06NhraEIrJtgr7MRCf
	AOe+XwrN77QLzvYbVrJCCVqIpt9lPsTbQkAn7UezOHYje0oXVDL4FHjFqyI7iBSc870CYm7xsrDB3
	lcImxhqlOFf/BS2MRgiQUsFXPO8p3Sa743hbSms/vhXIOakzEsOv/VVrM45YAv1tFtsfg+Qp3IzIR
	oPJEh7FEbVeBNShG4Tqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRraw-00BXlh-2x;
	Mon, 22 Jan 2024 10:31:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrau-00BXkr-0v
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jan 2024 10:31:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRrah-0000aJ-TJ; Mon, 22 Jan 2024 11:31:43 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rRraf-001ZTQ-7T; Mon, 22 Jan 2024 11:31:41 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRraf-001BEt-4b; Mon, 22 Jan 2024 11:31:41 +0100
Date: Mon, 22 Jan 2024 11:31:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	dan.carpenter@linaro.org, kernel-janitors@vger.kernel.org,
	error27@gmail.com
Subject: Re: [PATCH] drm/rockchip: vop2: add a missing unlock in
 vop2_crtc_atomic_enable()
Message-ID: <20240122103141.GU4700@pengutronix.de>
References: <20240119190841.1619443-1-harshit.m.mogalapalli@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240119190841.1619443-1-harshit.m.mogalapalli@oracle.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_023156_323384_C05C3609 
X-CRM114-Status: GOOD (  22.62  )
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

On Fri, Jan 19, 2024 at 11:08:40AM -0800, Harshit Mogalapalli wrote:
> Unlock before returning on the error path.
> 
> Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
> Signed-off-by: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Thanks for fixing this.

Sascha

> ---
> This is based on static analysis. Only compile tested.
> Note: Smatch found this.
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 85b3b4871a1d..fdd768bbd487 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1985,8 +1985,10 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>  		clock = vop2_set_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
>  	}
>  
> -	if (!clock)
> +	if (!clock) {
> +		vop2_unlock(vop2);
>  		return;
> +	}
>  
>  	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_AAAA &&
>  	    !(vp_data->feature & VOP2_VP_FEATURE_OUTPUT_10BIT))
> -- 
> 2.39.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
