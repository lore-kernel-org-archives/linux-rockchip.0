Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4FB6D30CC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 21:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6lcrPY7g7eCexicX0AQjzB6aYlRMjpmc8XKxc84nsk=; b=WibzSJxD3VqhVS
	tgrOBtq1Mf4TM6dyTcQ636L5lw0v+kHhDWTxQZrmaQT0DRTYei5AYMFw8diddP66hZOkZlhMUlxRL
	S/ZhCRr9jjqlRw/Ah6XVj+CHAkm4DupWGHLJUf3UxcPGfmzFDbBP5HqHyZhZ8Flczd/5ezjyCqvN9
	GedStwYvhLlCndfj/3hE54fD/BI0hk3sj1HnAddsFCjyyew8uclbTDEHjjm50qwUr1Xaa14PhoU+6
	XlVy8A+TtbnI/GTIAvD2XuzzI/8ikMXGU+IEdNUcCGtzGPnA5PC4lZDprJY3e+DrcH0CwhJZuilaq
	F0S4RfNfsZ+SQaZPaW8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfm4p-00000007lOP-07FR;
	Tue, 13 Jan 2026 21:37:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfm4k-00000007lN6-3me7;
	Tue, 13 Jan 2026 21:37:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768340226; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MCM+rKGImSssg9iSfQ7g7c1e2cK6QXKDqzCjtSasZYEydr9Ih9j+78vDH5AJKzTzuXrl5OUrbNGeO8d0kbooiHFjRQLx66/wU2E4lLyTEIa4jWrPonZG3aVpTrmjvlKp1s1UifpvxKriqAcRSB9OVwtLryr2EKOxGjb81taaSCM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768340226; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Zei4KTAsJshp6Vcua+q2Y3zJ4iL6WdDmcJtZbA2kELI=; 
	b=I0e7drqOmD3iGkIaip9BwnplAucN+OrBooxvKX7s8jgPQiBjTW3gUqnaM1QLEcIS49OrK9hvkr7ovJBUF3iotQNbCsR35SQy1QnIQsg+8q8Q6+Frw7EoBigincZLkc9sHKJlFJhQAeul2EJipZgW7+FCpaZQb3RrA0FbzFxx518=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768340226;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Zei4KTAsJshp6Vcua+q2Y3zJ4iL6WdDmcJtZbA2kELI=;
	b=TwqKRaDwVsCAqoIMGtn2xssnDGLC35eHrg4Fu4QHtR1kNW/I7QLrVzWw9fWQYZVB
	NXGuUfUc1aWILS/gN2QxuSqsGhKK2XHK9GdfGshg8/3mdKmPb2FTPnLnJNryvCjT7+c
	ltFhr+Nc87Ap8a5Yr+pONCilQkptcQ/tjHGX93fU=
Received: by mx.zohomail.com with SMTPS id 1768340224730540.8247444863133;
	Tue, 13 Jan 2026 13:37:04 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id C6967181010; Tue, 13 Jan 2026 22:36:58 +0100 (CET)
Date: Tue, 13 Jan 2026 22:36:58 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by
 platform data
Message-ID: <aWa6v2ouVlGYeESo@venus>
References: <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109080054.228671-3-andyshrk@163.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_133718_994638_12EC4303 
X-CRM114-Status: GOOD (  21.89  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, robh@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Laurent.pinchart@ideasonboard.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Fri, Jan 09, 2026 at 04:00:45PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DW DisplayPort hardware block can be configured to work in single,
> dual,quad pixel mode on differnt platforms, so make the pixel mode set
> by plat_data to support the upcoming rk3576 variant.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

> 
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c   |  8 +-------
>  drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 19 +++++++++++++++----
>  include/drm/bridge/dw_dp.h                |  7 +++++++
>  3 files changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> index 82aaf74e1bc0..eccf6299bdb7 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> @@ -352,12 +352,6 @@ enum {
>  	DW_DP_YCBCR420_16BIT,
>  };
>  
> -enum {
> -	DW_DP_MP_SINGLE_PIXEL,
> -	DW_DP_MP_DUAL_PIXEL,
> -	DW_DP_MP_QUAD_PIXEL,
> -};
> -
>  enum {
>  	DW_DP_SDP_VERTICAL_INTERVAL = BIT(0),
>  	DW_DP_SDP_HORIZONTAL_INTERVAL = BIT(1),
> @@ -1984,7 +1978,7 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
>  		return ERR_CAST(dp);
>  
>  	dp->dev = dev;
> -	dp->pixel_mode = DW_DP_MP_QUAD_PIXEL;
> +	dp->pixel_mode = plat_data->pixel_mode;
>  
>  	dp->plat_data.max_link_rate = plat_data->max_link_rate;
>  	bridge = &dp->bridge;
> diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> index 25ab4e46301e..89d614d53596 100644
> --- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> @@ -75,7 +75,7 @@ static const struct drm_encoder_helper_funcs dw_dp_encoder_helper_funcs = {
>  static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *data)
>  {
>  	struct platform_device *pdev = to_platform_device(dev);
> -	struct dw_dp_plat_data plat_data;
> +	const struct dw_dp_plat_data *plat_data;
>  	struct drm_device *drm_dev = data;
>  	struct rockchip_dw_dp *dp;
>  	struct drm_encoder *encoder;
> @@ -89,7 +89,10 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
>  	dp->dev = dev;
>  	platform_set_drvdata(pdev, dp);
>  
> -	plat_data.max_link_rate = 810000;
> +	plat_data = of_device_get_match_data(dev);
> +	if (!plat_data)
> +		return -ENODEV;
> +
>  	encoder = &dp->encoder.encoder;
>  	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
>  	rockchip_drm_encoder_set_crtc_endpoint_id(&dp->encoder, dev->of_node, 0, 0);
> @@ -99,7 +102,7 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
>  		return ret;
>  	drm_encoder_helper_add(encoder, &dw_dp_encoder_helper_funcs);
>  
> -	dp->base = dw_dp_bind(dev, encoder, &plat_data);
> +	dp->base = dw_dp_bind(dev, encoder, plat_data);
>  	if (IS_ERR(dp->base)) {
>  		ret = PTR_ERR(dp->base);
>  		return ret;
> @@ -134,8 +137,16 @@ static void dw_dp_remove(struct platform_device *pdev)
>  	component_del(dp->dev, &dw_dp_rockchip_component_ops);
>  }
>  
> +static const struct dw_dp_plat_data rk3588_dp_plat_data = {
> +	.max_link_rate = 810000,
> +	.pixel_mode = DW_DP_MP_QUAD_PIXEL,
> +};
> +
>  static const struct of_device_id dw_dp_of_match[] = {
> -	{ .compatible = "rockchip,rk3588-dp", },
> +	{
> +		.compatible = "rockchip,rk3588-dp",
> +		.data = &rk3588_dp_plat_data,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dw_dp_of_match);
> diff --git a/include/drm/bridge/dw_dp.h b/include/drm/bridge/dw_dp.h
> index d05df49fd884..25363541e69d 100644
> --- a/include/drm/bridge/dw_dp.h
> +++ b/include/drm/bridge/dw_dp.h
> @@ -11,8 +11,15 @@
>  struct drm_encoder;
>  struct dw_dp;
>  
> +enum {
> +	DW_DP_MP_SINGLE_PIXEL,
> +	DW_DP_MP_DUAL_PIXEL,
> +	DW_DP_MP_QUAD_PIXEL,
> +};
> +
>  struct dw_dp_plat_data {
>  	u32 max_link_rate;
> +	u8 pixel_mode;
>  };
>  
>  struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
