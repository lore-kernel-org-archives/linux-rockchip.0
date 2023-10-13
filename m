Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 695D8CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 06:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yp3gV+6hknAGD7la9rPIpukVVEz0dl7lPSS70Usm2v8=; b=w4G0jN/oH/7DOA
	xKfoHGPRpMZOzo2mTKRJlaUdO2dmsRdgAy7OEAmFmMPY3DwuW2BKtMy8DttPwWsjvABzyVTNwqH/s
	uYnwsJy1cx6vIJA5zDI99RJoEu9EL2HJ1ap10dMzmUgIcHq/WOhQ+fORzvT80YPDChI5xAcKa8F53
	lgT91fPI4pfraevkc+/KJYbO/e6fMXhUbo1yWQuDwQI1atdm4keKkfQccuG0vsQsdMMwGDH/55KMO
	VzRATbC65GYEppXZU121wG9uPMn97Q7AC5z+dPIycmSxtYO1vE2DQpNAwpLqjiJPl/aEaHsGxko45
	DQNmoiDapTA0nUzckJNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBQl-002ZxZ-0m;
	Fri, 13 Oct 2023 06:13:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBQh-002ZxD-2X
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 06:13:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBQg-0000vt-Ij; Fri, 13 Oct 2023 08:13:46 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBQf-001Kft-Ab; Fri, 13 Oct 2023 08:13:45 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBQf-00EE5J-7t; Fri, 13 Oct 2023 08:13:45 +0200
Date: Fri, 13 Oct 2023 08:13:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	heiko@sntech.de, hjc@rock-chips.com,
	sebastian.reichel@collabora.com, sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/3] drm/rockchip: remove unused struct in vop2
Message-ID: <20231013061345.GJ3359458@pengutronix.de>
References: <20231012023439.1497304-1-andyshrk@163.com>
 <20231012023653.1497576-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231012023653.1497576-1-andyshrk@163.com>
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
X-CRM114-CacheID: sfid-20231012_231347_820091_D8DFD7BC 
X-CRM114-Status: GOOD (  19.42  )
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

On Thu, Oct 12, 2023 at 10:36:53AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> These structs are undefined and un used.
> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> 
> ---
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 --
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 3 ---
>  2 files changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 583df4d22f7e..3c524ca23d53 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -160,7 +160,6 @@ struct vop2_video_port {
>  	struct vop2 *vop2;
>  	struct clk *dclk;
>  	unsigned int id;
> -	const struct vop2_video_port_regs *regs;
>  	const struct vop2_video_port_data *data;
>  
>  	struct completion dsp_hold_completion;
> @@ -2274,7 +2273,6 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  		vp = &vop2->vps[i];
>  		vp->vop2 = vop2;
>  		vp->id = vp_data->id;
> -		vp->regs = vp_data->regs;
>  		vp->data = vp_data;
>  
>  		snprintf(dclk_name, sizeof(dclk_name), "dclk_vp%d", vp->id);
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> index f1234a151130..56fd31e05238 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -134,16 +134,13 @@ struct vop2_video_port_data {
>  	u16 cubic_lut_len;
>  	struct vop_rect max_output;
>  	const u8 pre_scan_max_dly[4];
> -	const struct vop2_video_port_regs *regs;
>  	unsigned int offset;
>  };
>  
>  struct vop2_data {
>  	u8 nr_vps;
> -	const struct vop2_ctrl *ctrl;
>  	const struct vop2_win_data *win;
>  	const struct vop2_video_port_data *vp;
> -	const struct vop_csc_table *csc_table;
>  	struct vop_rect max_input;
>  	struct vop_rect max_output;
>  
> -- 
> 2.34.1
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
