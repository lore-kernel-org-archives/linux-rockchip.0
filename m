Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8B0C27C75
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 18:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnHIpguEqkGEF5XZlecxCCTP1FL2jto6zPFhZkPg9Ts=; b=O2AbwM6OrsaxWi
	ZIibnwWIzcXCZeodj49QqA2EHyq9GeWSAMhtHZuZXmouYxXnUT+zULRHK48EerAi5rgXyWTpX/bRl
	RM3flF9VOaRypJ57U9E4MVJgaKv9HBNPrelOcFkd0Zot+ffqmPzyx1uyEfOtgVpFbY2tqlMmx6iCK
	c4ERJn9OfV4y4GOHpWte5sihrJW1clTwxvP5IvPtXjUfmSm1rrOwhO9eT+e2ngJnOxo+bdFt0DEn2
	Ic7+efL383D+ZX44qx2lLgqgIcEzZT7zH9CEeKJKw7xhFJl/coexsp8VQcaNwhOeOWd0QODrGMQq7
	EznrmkTEHqH/GxtSi5wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHSP8-0000000DfA1-2y4L;
	Wed, 12 Jun 2024 18:09:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHSP5-0000000Df99-3Nbj
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 18:09:01 +0000
Received: from i53875be5.versanet.de ([83.135.91.229] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sHSOy-00025Y-8s; Wed, 12 Jun 2024 20:08:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>,
 Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v5 3/5] media: hantro: Add RK3588 VEPU121 support
Date: Wed, 12 Jun 2024 20:08:51 +0200
Message-ID: <1739853.izSxrag8PF@diego>
In-Reply-To: <20240612173213.42827-4-sebastian.reichel@collabora.com>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_110859_886123_1465B8B2 
X-CRM114-Status: GOOD (  27.16  )
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

Am Mittwoch, 12. Juni 2024, 19:15:43 CEST schrieb Sebastian Reichel:
> Avoid exposing each of the 4 Hantro H1 cores separately to userspace.
> For now just expose the first one.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../media/platform/verisilicon/hantro_drv.c   | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 34b123dafd89..b722a20c5fe3 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -722,6 +722,7 @@ static const struct of_device_id of_hantro_match[] = {
>  	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
>  	{ .compatible = "rockchip,rk3568-vepu", .data = &rk3568_vepu_variant, },
>  	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
> +	{ .compatible = "rockchip,rk3588-vepu121", .data = &rk3568_vpu_variant, },
>  	{ .compatible = "rockchip,rk3588-av1-vpu", .data = &rk3588_vpu981_variant, },
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
> @@ -992,6 +993,39 @@ static const struct media_device_ops hantro_m2m_media_ops = {
>  	.req_queue = v4l2_m2m_request_queue,
>  };
>  
> +/*
> + * Some SoCs, like RK3588 have multiple identical Hantro cores, but the
> + * kernel is currently missing support for multi-core handling. Exposing
> + * separate devices for each core to userspace is bad, since that does
> + * not allow scheduling tasks properly (and creates ABI). With this workaround
> + * the driver will only probe for the first core and early exit for the other
> + * cores. Once the driver gains multi-core support, the same technique
> + * for detecting the main core can be used to cluster all cores together.
> + */
> +static int hantro_disable_multicore(struct hantro_dev *vpu)
> +{
> +	const char *compatible;
> +	struct device_node *node;
> +	int ret;
> +
> +	/* Intentionally ignores the fallback strings */
> +	ret = of_property_read_string(vpu->dev->of_node, "compatible", &compatible);
> +	if (ret)
> +		return ret;
> +
> +	/* first compatible node found from the root node is considered the main core */
> +	node = of_find_compatible_node(NULL, NULL, compatible);
> +	if (!node)
> +		return -EINVAL; /* broken DT? */
> +
> +	if (vpu->dev->of_node != node) {
> +		dev_info(vpu->dev, "missing multi-core support, ignoring this instance\n");
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
>  static int hantro_probe(struct platform_device *pdev)
>  {
>  	const struct of_device_id *match;
> @@ -1011,6 +1045,10 @@ static int hantro_probe(struct platform_device *pdev)
>  	match = of_match_node(of_hantro_match, pdev->dev.of_node);
>  	vpu->variant = match->data;
>  
> +	ret = hantro_disable_multicore(vpu);
> +	if (ret)
> +		return ret;
> +

I think this might be better as two patches?

As this patch stands, the disable-multicore handling is done for _all_
hantro variants, so part of me wants this to be labeled as such.

The whole reasoning is completely ok, but somehow having this under
the "add rk3588" umbrella feels strange ;-)


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
