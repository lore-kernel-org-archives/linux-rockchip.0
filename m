Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A110C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 11:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwXZRkxF8qihFgUtILOrTJMtfYHDu5B+OZauM6BEJ7I=; b=GuKYckZNIV0Qv5
	S9Ga/exdJcOouBaA6A0O8LQPFFewJYsnnLfzSkMYJWf1mJ3+h7EZ/9in8XCHofTYiOONOFG2Fh72D
	4DfP5WtXi5zk7qzWpmcYMydTdM531fRPR45kP2g3RofnrQoolyv+bCQRX6kJuX95ycvATAKpt1Yo6
	Jnu3NwpraE7cW1Ll8hD0QxHv5zOEDFrSl9mZm+1kUSuH7V1LDnTX2Zs4sxrWd3WjdEhxwPnRb0+A2
	8CQqvPwzL6Wp2DvFLg3NCI8FpuG2PaTpm1UjntcAPZDPLT1kaSRmJnFe2axBiiwC8vJ8dTndzH5Qc
	iDKJCyQtFN0lullawPJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shSXU-0000000GWhZ-2OFJ;
	Fri, 23 Aug 2024 11:33:08 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shSWi-0000000GWa0-1lYe;
	Fri, 23 Aug 2024 11:32:22 +0000
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WqyWm6gp2z6K5qM;
	Fri, 23 Aug 2024 19:29:08 +0800 (CST)
Received: from lhrpeml500005.china.huawei.com (unknown [7.191.163.240])
	by mail.maildlp.com (Postfix) with ESMTPS id 44505140447;
	Fri, 23 Aug 2024 19:32:13 +0800 (CST)
Received: from localhost (10.203.177.66) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Fri, 23 Aug
 2024 12:32:04 +0100
Date: Fri, 23 Aug 2024 12:32:03 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Jinjie Ruan <ruanjinjie@huawei.com>
CC: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
Subject: Re: [PATCH -next 1/5] drm/rockchip: Use
 for_each_child_of_node_scoped()
Message-ID: <20240823123203.00002aac@Huawei.com>
In-Reply-To: <20240823092053.3170445-2-ruanjinjie@huawei.com>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
	<20240823092053.3170445-2-ruanjinjie@huawei.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.203.177.66]
X-ClientProxiedBy: lhrpeml100001.china.huawei.com (7.191.160.183) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_043220_782743_B74547E6 
X-CRM114-Status: GOOD (  18.43  )
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

On Fri, 23 Aug 2024 17:20:49 +0800
Jinjie Ruan <ruanjinjie@huawei.com> wrote:

> Avoids the need for manual cleanup of_node_put() in early exits
> from the loop.
> 
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>

There is more to do here, and looking at the code, I'm far from
sure it isn't releasing references it never had.

> ---
>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index 9a01aa450741..f5b3f18794dd 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -548,7 +548,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  	struct drm_encoder *encoder;
>  	struct drm_connector *connector;
>  	struct device_node *remote = NULL;
> -	struct device_node  *port, *endpoint;

Odd extra space before *port in original. Clean that up whilst here.


> +	struct device_node  *port;

Use __free(device_node) for *port as well.

So where the current asignment is.
	struct device_node *port = of_graph_get_port_by_id(dev->of_node, 1);

>  	int ret = 0, child_count = 0;
>  	const char *name;
>  	u32 endpoint_id = 0;
> @@ -560,15 +560,13 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
>  			      "can't found port point, please init lvds panel port!\n");
>  		return -EINVAL;
>  	}
> -	for_each_child_of_node(port, endpoint) {
> +	for_each_child_of_node_scoped(port, endpoint) {
>  		child_count++;
>  		of_property_read_u32(endpoint, "reg", &endpoint_id);
>  		ret = drm_of_find_panel_or_bridge(dev->of_node, 1, endpoint_id,
>  						  &lvds->panel, &lvds->bridge);
> -		if (!ret) {
> -			of_node_put(endpoint);
> +		if (!ret)
>  			break;

This then can simply be
			return dev_err_probe(dev, ret,
					     "failed to find pannel and bridge node\n");
> -		}

Various other paths become direct returns as well.

>  	}

The later code with remote looks suspect as not obvious who got the reference that
is being put but assuming that is correct, it's another possible place for __free based
cleanup.


>  	if (!child_count) {
>  		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
