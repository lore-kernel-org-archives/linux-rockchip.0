Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACF39C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 23:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEhwc5iIkUBXvJ13plBb+dnKpijtV36bzt5wccOxezk=; b=RDVrmb+XyJopDw
	0+T77d5OpvONHcYR92duRf2si3xt46Za6EJwKMIZzjQUbdsym+X6sYjx3+r7mcauCp39pzobPYSwn
	EfqCPvlEBwrHpYphltBuYZhYRvndC+uLNHgyMp+doZGA5LtHFu7M/t+5e2v1Zbub2+qZlxEySWDrx
	rsWqpqQITW1pBBvhZ0TN6/yaw6Ir5EQ5y2ex5Awv/AHoFtCHB+M6Ys8TkrCWUXcbKgjm+5iR0eu4y
	bZN22zP/OS+WVS1CMgaUs67wOA2cXoLlLpoB42yO6ZojT23wPPDoU+CxIgkracAfjQXv0mmu9UlGE
	btMWbOs90GyYfhYFEZ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1cA1-00GnPS-Pc; Wed, 15 Jun 2022 23:10:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1c9y-00GnOj-Iu
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 23:10:52 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 81293415;
	Thu, 16 Jun 2022 01:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655334648;
	bh=O7ZNOUpuPlxSnW/P1dmlHqXBPaYA+WfcHmaUeCCsrt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fZ37+IBbHEFY2/Pdj/5/zLhrEKTHdYjW895/mY3qaO4XMf2BxwJcPAYzwYlG0RfDV
	 goD9QhIbkf+1WARDnjMPcYzMmYuLwbY9doZJazjVR23Ppva3Txj1dZIdpMbcc6BoRN
	 Bx371hJ5E6RcHKTyzdAkQffOyFJU8GCwxwipekbU=
Date: Thu, 16 Jun 2022 02:10:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 41/55] media: rkisp1: csi: Plumb the CSI RX subdev
Message-ID: <Yqpm7m8txqrtScR/@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-42-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-42-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_161050_823380_752C3C44 
X-CRM114-Status: GOOD (  28.58  )
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

Hi Paul,

Thank you for the patch.

On Wed, Jun 15, 2022 at 04:11:13AM +0900, Paul Elder wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Connect the CSI receiver subdevice into the rest of the driver. This
> includes:
> - calling the subdevice via the v4l2 subdev API
> - moving the async notifier for the sensor from the ISP to the CSI
>   receiver
> - in the ISP, create a media link to the CSI receiver, and remove the
>   media link creation to the sensor
> - in the CSI receiver, create a media link to the sensor
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-csi.c     | 34 ++++++++++++++++--
>  .../platform/rockchip/rkisp1/rkisp1-csi.h     |  6 ++--
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 36 +++++++++----------
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 21 ++---------
>  4 files changed, 53 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> index 8182694a6fe0..96712b467dde 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
> @@ -43,6 +43,34 @@ rkisp1_csi_get_pad_fmt(struct rkisp1_csi *csi,
>  		return v4l2_subdev_get_try_format(&csi->sd, &state, pad);
>  }
>  
> +int rkisp1_csi_link_sensor(struct rkisp1_device *rkisp1, struct v4l2_subdev *sd,
> +			   struct rkisp1_sensor_async *s_asd,
> +			   unsigned int source_pad)
> +{
> +	struct rkisp1_csi *csi = &rkisp1->csi;
> +	int ret;		

There's trailing whitespace here.

> +
> +	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
> +						V4L2_CID_PIXEL_RATE);
> +	if (!s_asd->pixel_rate_ctrl) {
> +		dev_err(rkisp1->dev, "No pixel rate control in subdev %s\n",
> +			sd->name);
> +		return -EINVAL;
> +	}
> +
> +	/* Create the link from the sensor to the CSI receiver. */
> +	ret = media_create_pad_link(&sd->entity, source_pad,
> +				    &csi->sd.entity, RKISP1_CSI_PAD_SINK,
> +				    !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
> +	if (ret) {
> +		dev_err(csi->rkisp1->dev, "failed to link src pad of %s\n",
> +			sd->name);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int rkisp1_csi_config(struct rkisp1_csi *csi,
>  			     const struct rkisp1_sensor_async *sensor)
>  {
> @@ -118,8 +146,8 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
>  		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
>  }
>  
> -int rkisp1_csi_start(struct rkisp1_csi *csi,
> -		     const struct rkisp1_sensor_async *sensor)
> +static int rkisp1_csi_start(struct rkisp1_csi *csi,
> +			    const struct rkisp1_sensor_async *sensor)
>  {
>  	struct rkisp1_device *rkisp1 = csi->rkisp1;
>  	union phy_configure_opts opts;
> @@ -155,7 +183,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
>  	return 0;
>  }
>  
> -void rkisp1_csi_stop(struct rkisp1_csi *csi)
> +static void rkisp1_csi_stop(struct rkisp1_csi *csi)
>  {
>  	rkisp1_csi_disable(csi);
>  
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
> index ddf8e5e08f55..eadcd24f65fb 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
> @@ -21,8 +21,8 @@ void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
>  int rkisp1_csi_register(struct rkisp1_device *rkisp1);
>  void rkisp1_csi_unregister(struct rkisp1_device *rkisp1);
>  
> -int rkisp1_csi_start(struct rkisp1_csi *csi,
> -		     const struct rkisp1_sensor_async *sensor);
> -void rkisp1_csi_stop(struct rkisp1_csi *csi);
> +int rkisp1_csi_link_sensor(struct rkisp1_device *rkisp1, struct v4l2_subdev *sd,
> +			   struct rkisp1_sensor_async *s_asd,
> +			   unsigned int source_pad);
>  
>  #endif /* _RKISP1_CSI_H */
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index faf2cd4c8149..a3e182c86bdd 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -17,6 +17,7 @@
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/pm_runtime.h>
>  #include <media/v4l2-fwnode.h>
> +#include <media/v4l2-mc.h>
>  
>  #include "rkisp1-common.h"
>  #include "rkisp1-csi.h"
> @@ -119,17 +120,8 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
>  		container_of(asd, struct rkisp1_sensor_async, asd);
>  	int source_pad;
>  
> -	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
> -						V4L2_CID_PIXEL_RATE);
> -	if (!s_asd->pixel_rate_ctrl) {
> -		dev_err(rkisp1->dev, "No pixel rate control in subdev %s\n",
> -			sd->name);
> -		return -EINVAL;
> -	}
> -
>  	s_asd->sd = sd;
>  
> -	/* Create the link to the sensor. */
>  	source_pad = media_entity_get_fwnode_pad(&sd->entity, s_asd->source_ep,
>  						 MEDIA_PAD_FL_SOURCE);
>  	if (source_pad < 0) {
> @@ -138,10 +130,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
>  		return source_pad;
>  	}
>  
> -	return media_create_pad_link(&sd->entity, source_pad,
> -				     &rkisp1->isp.sd.entity,
> -				     RKISP1_ISP_PAD_SINK_VIDEO,
> -				     !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
> +	return rkisp1_csi_link_sensor(rkisp1, sd, s_asd, source_pad);
>  }
>  
>  static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
> @@ -283,6 +272,14 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>  	unsigned int i;
>  	int ret;
>  
> +	/* Link the CSI receiver to the ISP. */
> +	ret = media_create_pad_link(&rkisp1->csi.sd.entity, RKISP1_CSI_PAD_SRC,
> +				    &rkisp1->isp.sd.entity,
> +				    RKISP1_ISP_PAD_SINK_VIDEO,
> +				    MEDIA_LNK_FL_ENABLED);
> +	if (ret)
> +		return ret;
> +
>  	/* create ISP->RSZ->CAP links */
>  	for (i = 0; i < 2; i++) {
>  		struct media_entity *resizer =
> @@ -364,13 +361,6 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
>  	if (ret)
>  		goto error;
>  
> -	ret = rkisp1_subdev_notifier_register(rkisp1);
> -	if (ret) {
> -		dev_err(rkisp1->dev,
> -			"Failed to register subdev notifier(%d)\n", ret);
> -		goto error;
> -	}
> -
>  	return 0;
>  
>  error:
> @@ -534,10 +524,16 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_cleanup_csi;
>  
> +	ret = rkisp1_subdev_notifier_register(rkisp1);
> +	if (ret)
> +		goto err_unreg_entities;
> +
>  	rkisp1_debug_init(rkisp1);
>  
>  	return 0;
>  
> +err_unreg_entities:
> +	rkisp1_entities_unregister(rkisp1);
>  err_cleanup_csi:
>  	rkisp1_csi_cleanup(rkisp1);
>  err_unreg_media_dev:
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 5afb8be311c7..260c9ce0dca4 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -16,7 +16,6 @@
>  #include <media/v4l2-event.h>
>  
>  #include "rkisp1-common.h"
> -#include "rkisp1-csi.h"
>  
>  #define RKISP1_DEF_SINK_PAD_FMT MEDIA_BUS_FMT_SRGGB10_1X10
>  #define RKISP1_DEF_SRC_PAD_FMT MEDIA_BUS_FMT_YUYV8_2X8
> @@ -728,16 +727,12 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  {
>  	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
>  	struct rkisp1_device *rkisp1 = isp->rkisp1;
> -	const struct rkisp1_sensor_async *asd;
>  	struct media_pad *source_pad;
>  	int ret;
>  
>  	if (!enable) {
>  		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
> -
> -		rkisp1_csi_stop(&rkisp1->csi);
>  		rkisp1_isp_stop(isp);
> -
>  		return 0;
>  	}
>  
> @@ -754,30 +749,20 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  		return -EPIPE;
>  	}
>  
> -	asd = container_of(rkisp1->source->asd, struct rkisp1_sensor_async,
> -			   asd);
> -
> -	if (asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
> -		return -EINVAL;
> +	if (rkisp1->source != &rkisp1->csi.sd)
> +		return -EPIPE;
>  
>  	isp->frame_sequence = -1;
>  	mutex_lock(&isp->ops_lock);
> -	ret = rkisp1_config_cif(isp, asd->mbus_type, asd->mbus_flags);
> +	ret = rkisp1_config_cif(isp, V4L2_MBUS_CSI2_DPHY, 0);
>  	if (ret)
>  		goto mutex_unlock;
>  
>  	rkisp1_isp_start(isp);
>  
> -	ret = rkisp1_csi_start(&rkisp1->csi, asd);
> -	if (ret) {
> -		rkisp1_isp_stop(isp);
> -		goto mutex_unlock;
> -	}
> -
>  	ret = v4l2_subdev_call(rkisp1->source, video, s_stream, true);
>  	if (ret) {
>  		rkisp1_isp_stop(isp);
> -		rkisp1_csi_stop(&rkisp1->csi);
>  		goto mutex_unlock;
>  	}
>  
> -- 
> 2.30.2
> 

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
