Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 891A7C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 22:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LLcDG2NzfRZ8NRo8uDrg3qn8rRpfjloLSF++DsgOFc=; b=IlHBIF0VE+iGmx
	I+fJ8HTUL8BQtU2UULWSEFB0kHGPQQdVne567Eurnf5OIpONiGbt3D7Dha4zseVexXkV+70BnMh1e
	rHXHG5kq7CfhKcrEmT23QU8ttT4aO6cHrDuUwKqP7qY4m03C2YA9fxdk003Da9Z6C+ldBVzh1NXfQ
	SrPEmW1Ab2ZsSM6Ip7M2eq5SgSfrJAZTM3iGJos6bPPKfbHqK62MRRx5t2j6sL4iQ+6Tf65lByibc
	AHYnuqSHxQycUd2YqKgVwqkrWy1Sv6WI8gQWAIw19BNxEB5UDnK+AetAyCY0tdMC08V8NTYdf2awk
	JTzaBjj6MybLrLRIQ9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2KtT-009UIt-6c; Fri, 17 Jun 2022 22:56:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2KtQ-009UIT-Ku
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 22:56:46 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 38159383;
	Sat, 18 Jun 2022 00:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655506602;
	bh=LBfds/cfDy92GJ3Jmdn8PlfYD2Q5Q8hl/zqL+uiyxRc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nvhOwB/YBjjwnvn4NDdlANdpfdnkc4HUj9o64R1CaQIAmzrE6Xu4xgwR8CpTblf4w
	 8B7RI3mCvA5T3ru0HP1yhhcEkYmwnugZ9mpI1Dz2Ju1g8CG6ZbqFczAQ7StcOeNcpq
	 IIM+K1PlGR6FO6Cp5mksz6tkezT1XYSKhq6zSxag=
Date: Sat, 18 Jun 2022 01:56:30 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 42/55] media: rkisp1: Use fwnode_graph_for_each_endpoint
Message-ID: <Yq0Gns59bytOf/ea@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-43-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-43-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_155644_879741_5E5E69D9 
X-CRM114-Status: GOOD (  18.27  )
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

On Wed, Jun 15, 2022 at 04:11:14AM +0900, Paul Elder wrote:
> When registering the notifier, replace the manual while loop with
> fwnode_graph_for_each_endpoint. This simplifies error handling.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 44 +++++++++----------
>  1 file changed, 20 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index a3e182c86bdd..00ace8224575 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -158,29 +158,28 @@ static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops =
>  static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>  {
>  	struct v4l2_async_notifier *ntf = &rkisp1->notifier;
> -	unsigned int next_id = 0;
> +	struct fwnode_handle *fwnode = dev_fwnode(rkisp1->dev);
> +	struct fwnode_handle *ep;
>  	unsigned int index = 0;
> -	int ret;
> +	int ret = 0;
>  
>  	v4l2_async_nf_init(ntf);
>  
> -	while (1) {
> +	ntf->ops = &rkisp1_subdev_notifier_ops;
> +
> +	fwnode_graph_for_each_endpoint(fwnode, ep) {
>  		struct v4l2_fwnode_endpoint vep = {
>  			.bus_type = V4L2_MBUS_CSI2_DPHY
>  		};
>  		struct rkisp1_sensor_async *rk_asd;
> -		struct fwnode_handle *source = NULL;
> -		struct fwnode_handle *ep;
> -
> -		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
> -						     0, next_id,
> -						     FWNODE_GRAPH_ENDPOINT_NEXT);
> -		if (!ep)
> -			break;
> +		struct fwnode_handle *source;
>  
>  		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
> -		if (ret)
> -			goto err_parse;
> +		if (ret) {
> +			dev_err(rkisp1->dev, "failed to parse endpoint %pfw\n",
> +				ep);
> +			break;
> +		}
>  
>  		source = fwnode_graph_get_remote_endpoint(ep);
>  		if (!source) {
> @@ -188,14 +187,15 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>  				"endpoint %pfw has no remote endpoint\n",
>  				ep);
>  			ret = -ENODEV;
> -			goto err_parse;
> +			break;
>  		}
>  
>  		rk_asd = v4l2_async_nf_add_fwnode(ntf, source,
>  						  struct rkisp1_sensor_async);
>  		if (IS_ERR(rk_asd)) {
> +			fwnode_handle_put(source);
>  			ret = PTR_ERR(rk_asd);
> -			goto err_parse;
> +			break;
>  		}
>  
>  		rk_asd->index = index++;
> @@ -206,27 +206,23 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>  
>  		dev_dbg(rkisp1->dev, "registered ep id %d with %d lanes\n",
>  			vep.base.id, rk_asd->lanes);
> +	}
>  
> -		next_id = vep.base.id + 1;
> -
> -		fwnode_handle_put(ep);
> -
> -		continue;
> -err_parse:
> +	if (ret) {
>  		fwnode_handle_put(ep);
> -		fwnode_handle_put(source);
>  		v4l2_async_nf_cleanup(ntf);
>  		return ret;
>  	}
>  
> -	if (next_id == 0)
> +	if (!index)
>  		dev_dbg(rkisp1->dev, "no remote subdevice found\n");
> -	ntf->ops = &rkisp1_subdev_notifier_ops;
> +
>  	ret = v4l2_async_nf_register(&rkisp1->v4l2_dev, ntf);
>  	if (ret) {
>  		v4l2_async_nf_cleanup(ntf);
>  		return ret;
>  	}
> +
>  	return 0;
>  }
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
