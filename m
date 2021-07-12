Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB1FC07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:45:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1CF8F60FE3
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:45:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1CF8F60FE3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ei974dx6ZB3K0HVEY6RfbGVIw1Jr4JGVffyFWPk8etU=; b=x/2hIa12Io1wul
	nbxyNsV9tzTN7yHVY6TL5YX5PoO12OmAf16Z7cpeKgfzwHrj85RgkYF6oWIDwM5YL+l+QmYbBLoo4
	wTBAjgIr5knqXv2IAWV9wNpOw+c2jmFk8fnW3CS+KDh+4v7bSeS/WBY5aF6enY2PiJNVPHXKBjcHw
	YSQgV1kQ6vIurIlbMQQJR5nb9dPeu4j4i2hiA0z0Lk3GzUftrdagpzGGIuhD5DzsaEhTxdKzDB2rd
	7BFynalCSVmRN52MAiGpvAKKwwLwy1hevc7nXjRI0nnyKDJcVS3WvcW40iwDgNOqJBqY6RHoyFOqE
	VYilncoJd1z55AIqaGpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m32nf-008RaF-3z; Mon, 12 Jul 2021 20:45:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m32nb-008RZJ-Ox
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 20:45:09 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 477AFCC;
 Mon, 12 Jul 2021 22:45:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1626122706;
 bh=96POWrX+4MY4d12tL7G5sQBESwBqqSVQYSn0UPOlRZg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KAf4XnVMWT+sJkAC+LWridO3YAf1D1PWi0vioy6a422QRLm3OnwgH+6LcigQcLUD4
 tzuorw+U9Fa+Vy6FxDXlQbMAN+yL/c92YYMVcb0QZpPARdgwdWNcfBQjLrUwlhiNRz
 /9irSdCX/O8JVNglMpbosN6WsVMtl3k+Fn9Gc5AM=
Date: Mon, 12 Jul 2021 23:44:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, ezequiel@collabora.com,
 dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH v6 06/10] media: rockchip: rkisp1: make some isp-stats
 functions variable
Message-ID: <YOypoyWRXghmu6mg@pendragon.ideasonboard.com>
References: <20210618130238.4171196-1-heiko@sntech.de>
 <20210618130238.4171196-7-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618130238.4171196-7-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_134508_010275_4C85787F 
X-CRM114-Status: GOOD (  18.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Heiko,

Thank you for the patch.

On Fri, Jun 18, 2021 at 03:02:34PM +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The isp block evolved in subsequent socs, so some functions
> will behave differently on newer variants.
> 
> Therefore make it possible to override the needed stats functions.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-common.h | 11 +++++++++++
>  .../media/platform/rockchip/rkisp1/rkisp1-stats.c  | 14 +++++++++++---
>  2 files changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 74ddd8256366..d7f93547fab6 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -236,6 +236,16 @@ struct rkisp1_capture {
>  	} pix;
>  };
>  
> +struct rkisp1_stats;
> +struct rkisp1_stats_ops {
> +	void (*get_awb_meas)(struct rkisp1_stats *stats,
> +			     struct rkisp1_stat_buffer *pbuf);
> +	void (*get_aec_meas)(struct rkisp1_stats *stats,
> +			     struct rkisp1_stat_buffer *pbuf);
> +	void (*get_hst_meas)(struct rkisp1_stats *stats,
> +			     struct rkisp1_stat_buffer *pbuf);
> +};
> +
>  /*
>   * struct rkisp1_stats - ISP Statistics device
>   *
> @@ -248,6 +258,7 @@ struct rkisp1_capture {
>  struct rkisp1_stats {
>  	struct rkisp1_vdev_node vnode;
>  	struct rkisp1_device *rkisp1;
> +	struct rkisp1_stats_ops *ops;

This should be const.

>  
>  	spinlock_t lock; /* locks the buffers list 'stats' */
>  	struct list_head stat;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index c1d07a2e8839..f68a5e78e54a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -287,6 +287,12 @@ static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
>  	}
>  }
>  
> +static struct rkisp1_stats_ops rkisp1_stats_ops = {

And this should be const too.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	.get_awb_meas = rkisp1_stats_get_awb_meas,
> +	.get_aec_meas = rkisp1_stats_get_aec_meas,
> +	.get_hst_meas = rkisp1_stats_get_hst_meas,
> +};
> +
>  static void
>  rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
>  {
> @@ -309,18 +315,18 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
>  		(struct rkisp1_stat_buffer *)(cur_buf->vaddr);
>  
>  	if (isp_ris & RKISP1_CIF_ISP_AWB_DONE)
> -		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
> +		stats->ops->get_awb_meas(stats, cur_stat_buf);
>  
>  	if (isp_ris & RKISP1_CIF_ISP_AFM_FIN)
>  		rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
>  
>  	if (isp_ris & RKISP1_CIF_ISP_EXP_END) {
> -		rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
> +		stats->ops->get_aec_meas(stats, cur_stat_buf);
>  		rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
>  	}
>  
>  	if (isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY)
> -		rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
> +		stats->ops->get_hst_meas(stats, cur_stat_buf);
>  
>  	vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
>  			      sizeof(struct rkisp1_stat_buffer));
> @@ -354,6 +360,8 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
>  		V4L2_META_FMT_RK_ISP1_STAT_3A;
>  	stats->vdev_fmt.fmt.meta.buffersize =
>  		sizeof(struct rkisp1_stat_buffer);
> +
> +	stats->ops = &rkisp1_stats_ops;
>  }
>  
>  int rkisp1_stats_register(struct rkisp1_device *rkisp1)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
