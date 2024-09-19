Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0866CF3959
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 15:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+fnMaTODpDfgjLT3tnHSU9iH19jKLyvKb78AvbtaIg=; b=i7I68aFujlLFj0
	obolqmjRbNym+Gtl2WN5FD/JftxeVL+VamCeQUW2SDx3KD9dsgqexmynfG6pfn/1DiTeZiRXeLn8m
	R6sQUD1ocIEBIZEHo6Qac0gzRUVn6Qt0yEJxDQiMjKbp6XstzQ2elSmdJDpjbOjKLjLSGyYE+yaWI
	KhtmTFMpkYAA/HyDRokTcIe4w/l5srNRg7OO9Zb1peVoMN/Oud/5VCJPr9runAA5tt5WCe2q8dWcX
	TQhQkkC038ED5r9jtl2/H9cudChYOw+9pcnuAvixxkW/TwkgPC2uwozmaGl/+/Vk9MAGEN7JqUCUj
	ETCXa8k/ynryC8H2VhLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srIwD-0000000AX6y-3C7F;
	Thu, 19 Sep 2024 15:19:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srIpA-0000000AW7P-3l21;
	Thu, 19 Sep 2024 15:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=IV8+8ZWHAALvR0hrP9GkXzZ6zlc7DVgRJqAHVxnUbpg=; b=ac6qqGxvt1gafK8Q8SSddwk8CV
	i813GDlasoPimS5/br/9eVXM8B3XwduoYG7rfTWGdlzTiSyFVBUHhxlijWtZ9sKaBGgDPVkVB03I6
	3UEUjoRvEkl2a0hmFoqnhEg9m9O/kX48Mf9hKxUXtGNUyTL3NR4hUTxjgrzLTbTLsFls1/XkP4BJX
	6hfu5YZVQyT3T/qqcbs+d/07g1Eaw3N4/Bjp+TsDEt2GcwA8jI93/2hCgzR7Xs8enTqiiXz+gpqEf
	ikjqpGQM47/56Jq+Nrfz6Yy+dbh7Uf8dRnQdr6f7zyxxI3E5OrRy8WEvdh/8PfvztLc0cjz4Q2opv
	YCgRRCGQ==;
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1srIp0-0003k7-8X; Thu, 19 Sep 2024 17:11:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, jic23@kernel.org,
 Jinjie Ruan <ruanjinjie@huawei.com>
Cc: ruanjinjie@huawei.com
Subject: Re: [PATCH -next v2 2/3] drm/rockchip: Simplified with dev_err() and __free()
Date: Thu, 19 Sep 2024 17:11:53 +0200
Message-ID: <2234687.1BCLMh4Saa@phil>
In-Reply-To: <20240827030357.1006220-3-ruanjinjie@huawei.com>
References: <20240827030357.1006220-1-ruanjinjie@huawei.com>
 <20240827030357.1006220-3-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_081204_972465_95BB513E 
X-CRM114-Status: GOOD (  21.84  )
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

Hi,

Am Dienstag, 27. August 2024, 05:03:56 CEST schrieb Jinjie Ruan:
> Avoid need to manually handle of_node_put() by using __free(), and use
> dev_err() to replace deprecated() DRM_DEV_ERROR(), which can simplfy
> code.

please make that two separate commits, one for the dev_err conversion
and one for the __free() thing.

The general rule of thumb is that if you need an "and" to describe your
changes it's somewhat likely that things should be split.

Also patch subject should be "drm/rockchip: lvds: ...."


Thanks
Heiko

> 
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 38 ++++++++----------------
>  1 file changed, 13 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index f5b3f18794dd..700ac730887d 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -548,16 +548,14 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  	struct drm_encoder *encoder;
>  	struct drm_connector *connector;
>  	struct device_node *remote = NULL;
> -	struct device_node  *port;
>  	int ret = 0, child_count = 0;
>  	const char *name;
>  	u32 endpoint_id = 0;
>  
>  	lvds->drm_dev = drm_dev;
> -	port = of_graph_get_port_by_id(dev->of_node, 1);
> +	struct device_node *port __free(device_node) = of_graph_get_port_by_id(dev->of_node, 1);
>  	if (!port) {
> -		DRM_DEV_ERROR(dev,
> -			      "can't found port point, please init lvds panel port!\n");
> +		dev_err(dev, "can't found port point, please init lvds panel port!\n");
>  		return -EINVAL;
>  	}
>  	for_each_child_of_node_scoped(port, endpoint) {
> @@ -569,13 +567,10 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  			break;
>  	}
>  	if (!child_count) {
> -		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");
> -		ret = -EINVAL;
> -		goto err_put_port;
> -	} else if (ret) {
> -		dev_err_probe(dev, ret, "failed to find panel and bridge node\n");
> -		goto err_put_port;
> -	}
> +		dev_err(dev, "lvds port does not have any children\n");
> +		return -EINVAL;
> +	} else if (ret)
> +		return dev_err_probe(dev, ret, "failed to find panel and bridge node\n");
>  	if (lvds->panel)
>  		remote = lvds->panel->dev->of_node;
>  	else
> @@ -587,7 +582,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  		lvds->output = rockchip_lvds_name_to_output(name);
>  
>  	if (lvds->output < 0) {
> -		DRM_DEV_ERROR(dev, "invalid output type [%s]\n", name);
> +		dev_err(dev, "invalid output type [%s]\n", name);
>  		ret = lvds->output;
>  		goto err_put_remote;
>  	}
> @@ -599,7 +594,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  		lvds->format = rockchip_lvds_name_to_format(name);
>  
>  	if (lvds->format < 0) {
> -		DRM_DEV_ERROR(dev, "invalid data-mapping format [%s]\n", name);
> +		dev_err(dev, "invalid data-mapping format [%s]\n", name);
>  		ret = lvds->format;
>  		goto err_put_remote;
>  	}
> @@ -610,8 +605,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  
>  	ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_LVDS);
>  	if (ret < 0) {
> -		DRM_DEV_ERROR(drm_dev->dev,
> -			      "failed to initialize encoder: %d\n", ret);
> +		dev_err(drm_dev->dev, "failed to initialize encoder: %d\n", ret);
>  		goto err_put_remote;
>  	}
>  
> @@ -624,8 +618,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  					 &rockchip_lvds_connector_funcs,
>  					 DRM_MODE_CONNECTOR_LVDS);
>  		if (ret < 0) {
> -			DRM_DEV_ERROR(drm_dev->dev,
> -				      "failed to initialize connector: %d\n", ret);
> +			dev_err(drm_dev->dev, "failed to initialize connector: %d\n", ret);
>  			goto err_free_encoder;
>  		}
>  
> @@ -639,9 +632,8 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  
>  		connector = drm_bridge_connector_init(lvds->drm_dev, encoder);
>  		if (IS_ERR(connector)) {
> -			DRM_DEV_ERROR(drm_dev->dev,
> -				      "failed to initialize bridge connector: %pe\n",
> -				      connector);
> +			dev_err(drm_dev->dev, "failed to initialize bridge connector: %pe\n",
> +				connector);
>  			ret = PTR_ERR(connector);
>  			goto err_free_encoder;
>  		}
> @@ -649,14 +641,12 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  
>  	ret = drm_connector_attach_encoder(connector, encoder);
>  	if (ret < 0) {
> -		DRM_DEV_ERROR(drm_dev->dev,
> -			      "failed to attach encoder: %d\n", ret);
> +		dev_err(drm_dev->dev, "failed to attach encoder: %d\n", ret);
>  		goto err_free_connector;
>  	}
>  
>  	pm_runtime_enable(dev);
>  	of_node_put(remote);
> -	of_node_put(port);
>  
>  	return 0;
>  
> @@ -666,8 +656,6 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  	drm_encoder_cleanup(encoder);
>  err_put_remote:
>  	of_node_put(remote);
> -err_put_port:
> -	of_node_put(port);
>  
>  	return ret;
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
