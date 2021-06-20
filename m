Return-Path: <SRS0=GbX+=LO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC51C49361
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 07:23:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA8BC6113C
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 07:23:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EA8BC6113C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AzzZ21VrJgNejHCMfDmQnejnm5mPQiOYzVlcT7n5g8w=; b=j4QJmZ7qKeIicmEau/6GETOXw7
	UcZFEm3sBi7K1ofax0MnuWQ5mq1i4gReRNw+JyaOJsKTMyBjsUahpcVD/i4Ial9WCE9Ne8bBwMqhk
	hJ74RVNzrkc4/iLZBiac0EjwamiY0I7wkIpm1XruljEKl4w0sn+fM7H58ZqfnApQltyMksUKCaKJ8
	BLkCFzjGjMid3RHXDbyt8f7ag1FMEuKfW2HjLgs827SnZYNDnvf6m/tkEMPIfuzOLD7HzLe2+03pk
	1oAwfy+RYZdoXzcjdPYlYGNUPVMMElL1L1C4nsk53MxxzlwesrXwwGwMXCqeIF07cIQ4QV9tjy153
	OrqQbx+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lurnO-000c9W-Gc; Sun, 20 Jun 2021 07:23:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lurnL-000c8n-Jl
 for linux-rockchip@lists.infradead.org; Sun, 20 Jun 2021 07:23:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 0F85A1F41AB5
Subject: Re: [PATCH v6 06/10] media: rockchip: rkisp1: make some isp-stats
 functions variable
To: Heiko Stuebner <heiko@sntech.de>, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, helen.koike@collabora.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
References: <20210618130238.4171196-1-heiko@sntech.de>
 <20210618130238.4171196-7-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <a1423726-d970-5310-e2b0-88c139b60ced@collabora.com>
Date: Sun, 20 Jun 2021 10:22:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210618130238.4171196-7-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_002303_839830_68BBC2F4 
X-CRM114-Status: GOOD (  19.01  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 18.06.21 16:02, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The isp block evolved in subsequent socs, so some functions
> will behave differently on newer variants.
> 
> Therefore make it possible to override the needed stats functions.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

> ---
>   .../media/platform/rockchip/rkisp1/rkisp1-common.h | 11 +++++++++++
>   .../media/platform/rockchip/rkisp1/rkisp1-stats.c  | 14 +++++++++++---
>   2 files changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 74ddd8256366..d7f93547fab6 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -236,6 +236,16 @@ struct rkisp1_capture {
>   	} pix;
>   };
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
>   /*
>    * struct rkisp1_stats - ISP Statistics device
>    *
> @@ -248,6 +258,7 @@ struct rkisp1_capture {
>   struct rkisp1_stats {
>   	struct rkisp1_vdev_node vnode;
>   	struct rkisp1_device *rkisp1;
> +	struct rkisp1_stats_ops *ops;
>   
>   	spinlock_t lock; /* locks the buffers list 'stats' */
>   	struct list_head stat;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index c1d07a2e8839..f68a5e78e54a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -287,6 +287,12 @@ static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
>   	}
>   }
>   
> +static struct rkisp1_stats_ops rkisp1_stats_ops = {
> +	.get_awb_meas = rkisp1_stats_get_awb_meas,
> +	.get_aec_meas = rkisp1_stats_get_aec_meas,
> +	.get_hst_meas = rkisp1_stats_get_hst_meas,
> +};
> +
>   static void
>   rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
>   {
> @@ -309,18 +315,18 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
>   		(struct rkisp1_stat_buffer *)(cur_buf->vaddr);
>   
>   	if (isp_ris & RKISP1_CIF_ISP_AWB_DONE)
> -		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
> +		stats->ops->get_awb_meas(stats, cur_stat_buf);
>   
>   	if (isp_ris & RKISP1_CIF_ISP_AFM_FIN)
>   		rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
>   
>   	if (isp_ris & RKISP1_CIF_ISP_EXP_END) {
> -		rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
> +		stats->ops->get_aec_meas(stats, cur_stat_buf);
>   		rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
>   	}
>   
>   	if (isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY)
> -		rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
> +		stats->ops->get_hst_meas(stats, cur_stat_buf);
>   
>   	vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
>   			      sizeof(struct rkisp1_stat_buffer));
> @@ -354,6 +360,8 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
>   		V4L2_META_FMT_RK_ISP1_STAT_3A;
>   	stats->vdev_fmt.fmt.meta.buffersize =
>   		sizeof(struct rkisp1_stat_buffer);
> +
> +	stats->ops = &rkisp1_stats_ops;
>   }
>   
>   int rkisp1_stats_register(struct rkisp1_device *rkisp1)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
