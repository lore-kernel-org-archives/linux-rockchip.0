Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3930FCCA479
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 14:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPOaRDvYP0wJN1OLtz+C9n0kSL7PTjLU0CsECkXO1x8=; b=ni/bGRLFiX4rpw
	BN5vyk2obUP5i/PBUsetRlRw+abI/uDqnnTW933PvbnKAZ1bx5ox+2U4ZSO7S3CmFfA0xvPLdN88i
	HEqSXIDZqe62uhRyrxmbVNfpmCTHbjriuRwJPLZTzF0J/9nol0NxTEmVY9RIaxZnOg+zOw9JBPTCK
	a2z6vAur6MgtaKpV/StEzzpzuuAcLmdtj+pCeUIW55P2GIw7Kzc/gKe86yBHua04VouDdXEGqYq99
	1UanoKM8k2rj6fZr4CZwoyCD4kG2pwpHkf75DrBBOqqkyNwvttza8paMyBVo/2b2pdBMAO2R2c2Z1
	ysR2h0gnUSPSueId5vug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Snz-00GbCx-So; Thu, 07 Jul 2022 14:48:35 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Snu-00Gb8n-FC
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 14:48:32 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 95FBC326;
	Thu,  7 Jul 2022 16:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657205308;
	bh=XC1WR/Gw6LfjJ8b1BbAg3Dw4N0ZBqngLCBiD8W/eWO0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JOcqjCBAhABpMep5reCDv0xg2EtIS38lr8glCRVPLTJf7IQNq3thb8Bb2/H9J+x/b
	 NZJa02gYRIfIYJC+KxlWKxyCMpIa5fFUASY1Oh1J5JqjmjOIP7Hgv0SJD7u8zYBs52
	 /pL2mWfvE9PApI3DdB+bcFdsG0hoDl4Coq+bRKj4=
Date: Thu, 7 Jul 2022 23:48:20 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 38/55] media: rkisp1: isp: Disallow multiple active
 sources
Message-ID: <20220707144820.GO3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-39-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-39-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_074830_785287_2DB5B4B3 
X-CRM114-Status: GOOD (  22.09  )
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

Hi Laurent,

On Fri, Jul 01, 2022 at 02:06:56AM +0300, Laurent Pinchart wrote:
> The ISP supports multiple source subdevs, but can only capture from a
> single one at a time. The source is selected through link setup. The
> driver finds the active source in its .s_stream() handler using the
> media_entity_remote_pad() function. This fails to reject invalid
> configurations with multiple active sources. Fix it by using the
> media_entity_remote_source_pad() helper instead, and inline
> rkisp1_isp_get_source() in rkisp1_isp_s_stream() as the function is
> small and has a single caller.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 30 ++++++++-----------
>  1 file changed, 13 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 37623b73b1d9..d7e2802d11f5 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -58,20 +58,6 @@
>   * Helpers
>   */
>  
> -static struct v4l2_subdev *rkisp1_isp_get_source(struct v4l2_subdev *sd)
> -{
> -	struct media_pad *local, *remote;
> -	struct media_entity *sensor_me;
> -
> -	local = &sd->entity.pads[RKISP1_ISP_PAD_SINK_VIDEO];
> -	remote = media_pad_remote_pad_first(local);
> -	if (!remote)
> -		return NULL;
> -
> -	sensor_me = remote->entity;
> -	return media_entity_to_v4l2_subdev(sensor_me);
> -}
> -
>  static struct v4l2_mbus_framefmt *
>  rkisp1_isp_get_pad_fmt(struct rkisp1_isp *isp,
>  		       struct v4l2_subdev_state *sd_state,
> @@ -743,6 +729,8 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
>  	struct rkisp1_device *rkisp1 = isp->rkisp1;
>  	const struct rkisp1_sensor_async *asd;
> +	struct media_pad *source_pad;
> +	struct media_pad *sink_pad;
>  	int ret;
>  
>  	if (!enable) {
> @@ -754,10 +742,18 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  		return 0;
>  	}
>  
> -	rkisp1->source = rkisp1_isp_get_source(sd);
> +	sink_pad = &isp->pads[RKISP1_ISP_PAD_SINK_VIDEO];
> +	source_pad = media_pad_remote_pad_unique(sink_pad);
> +	if (IS_ERR(source_pad)) {
> +		dev_dbg(rkisp1->dev, "Failed to get source for ISP: %ld\n",
> +			PTR_ERR(source_pad));
> +		return -EPIPE;
> +	}
> +
> +	rkisp1->source = media_entity_to_v4l2_subdev(source_pad->entity);
>  	if (!rkisp1->source) {
> -		dev_warn(rkisp1->dev, "No link between isp and source\n");
> -		return -ENODEV;
> +		/* This should really not happen, so is not worth a message. */
> +		return -EPIPE;
>  	}
>  
>  	asd = container_of(rkisp1->source->asd, struct rkisp1_sensor_async,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
