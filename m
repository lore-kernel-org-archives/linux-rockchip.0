Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3803C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 13:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DzRK5LZPkWxv9lzN5oxaPt0MXohXNBhQG8kh3QWHsI=; b=wdMucqc19WTyUB
	9X/ZVrHjVdkl0uQJoylDItUkygn5DCSyxRVD41r0YDCMI/QekZ4B4gcCCWenaAXYHUFsmS5Z3qwZ/
	/LPkj2q9YmQhRiacGfN7qe+G5x6zcXDSuF4eubb0qnk8qM4BGeB91tDfM+W0cnHA7y7ptLcKo0sK2
	JyxBJIxh3rqcy1S124SV+Orjf9QAzkBoaqRlQCkckmziZ0WnqY0guxrx7yeK7bEePvu63LB5Yqw4U
	DgKnBvDDCGOJAIY1qNxx7WPvpH9PW0jmhks04gYMii6e4KDDlWtyj/XOSXKO2uXJo7D8rDoYNNeRw
	ZuTSE53XOGFCG/lgryjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Ri1-00GIGj-TY; Thu, 07 Jul 2022 13:38:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rhz-00GIF1-Bg
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 13:38:20 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 261DBD00;
	Thu,  7 Jul 2022 15:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657201094;
	bh=LbsJnxGU9iYd6zfMNbJdS8L/YRRNIr+LQftTx73xm2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vKp8aK5Vq44sPcR5cpUHtDPSabO2yY3vH0zU3jit83gnvN0tPgsEycfqbvUwkBaCM
	 G+tGovoIH87nrfe/RbDUlamsbePtRkfVizQxsU+kdvELchNHa1bYP3UY09JVbIviYD
	 HUOw9iy7n+5OMo0OeFQONWhqYl+59eMzM0cjErWE=
Date: Thu, 7 Jul 2022 22:38:05 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 10/55] media: rkisp1: Access ISP version from info
 pointer
Message-ID: <20220707133805.GH3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-11-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-11-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_063819_628762_502D4F13 
X-CRM114-Status: GOOD (  19.31  )
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

On Fri, Jul 01, 2022 at 02:06:28AM +0300, Laurent Pinchart wrote:
> The ISP version is stored in the media_device hw_revision field and
> access from there in the driver. Now that we store a pointer to the
> match data in the rkisp1_device structure, access the ISP version from
> there to make the code clearer and avoid depending on the media_device.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c    | 4 ++--
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 2 +-
>  drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c  | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index bc94a51124b0..69c60814ecc1 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -417,7 +417,7 @@ static int rkisp1_config_mipi(struct rkisp1_device *rkisp1)
>  	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL, mipi_ctrl);
>  
>  	/* V12 could also use a newer csi2-host, but we don't want that yet */
> -	if (rkisp1->media_dev.hw_revision == RKISP1_V12)
> +	if (rkisp1->info->isp_ver == RKISP1_V12)
>  		rkisp1_write(rkisp1, RKISP1_CIF_ISP_CSI0_CTRL0, 0);
>  
>  	/* Configure Data Type and Virtual Channel */
> @@ -535,7 +535,7 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
>  	rkisp1_write(rkisp1, RKISP1_CIF_VI_ICCL, val);
>  
>  	/* ensure sp and mp can run at the same time in V12 */
> -	if (rkisp1->media_dev.hw_revision == RKISP1_V12) {
> +	if (rkisp1->info->isp_ver == RKISP1_V12) {
>  		val = RKISP1_CIF_CLK_CTRL_MI_Y12 | RKISP1_CIF_CLK_CTRL_MI_SP |
>  		      RKISP1_CIF_CLK_CTRL_MI_RAW0 | RKISP1_CIF_CLK_CTRL_MI_RAW1 |
>  		      RKISP1_CIF_CLK_CTRL_MI_READ | RKISP1_CIF_CLK_CTRL_MI_RAWRD |
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index c88a9c0fa86e..9da7dc1bc690 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1801,7 +1801,7 @@ static void rkisp1_init_params(struct rkisp1_params *params)
>  	params->vdev_fmt.fmt.meta.buffersize =
>  		sizeof(struct rkisp1_params_cfg);
>  
> -	if (params->rkisp1->media_dev.hw_revision == RKISP1_V12)
> +	if (params->rkisp1->info->isp_ver == RKISP1_V12)
>  		params->ops = &rkisp1_v12_params_ops;
>  	else
>  		params->ops = &rkisp1_v10_params_ops;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index b7ae9166c52f..7d82356b5345 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -427,7 +427,7 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
>  	stats->vdev_fmt.fmt.meta.buffersize =
>  		sizeof(struct rkisp1_stat_buffer);
>  
> -	if (stats->rkisp1->media_dev.hw_revision == RKISP1_V12)
> +	if (stats->rkisp1->info->isp_ver == RKISP1_V12)
>  		stats->ops = &rkisp1_v12_stats_ops;
>  	else
>  		stats->ops = &rkisp1_v10_stats_ops;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
