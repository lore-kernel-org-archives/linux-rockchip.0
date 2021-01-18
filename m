Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BE0C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 18:06:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 887BB22CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 18:06:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 887BB22CA1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aTISX3ng/SkJiT4dqvQqpxP1hUx8kZ7zcxktqfaOf1Y=; b=OupmhfGG/s9BGC2WQ/qKCVrqf
	v58+4RaRbTFiPOTH8ZV99kjUQzOflBoqusra2dXjyco9Ef9fNFmeFO0DGbdpzYCFvxc1Gz0tKdZJ+
	a6VbswcXLoJI/DaFNp24DXahtTvfojEHaCn8C3379OSarl4RLYx6q+WIzZZaAHwlaxPtX4kLfgnOI
	hLnEqsjCZeNVH2DXhQrDbdIotOkTkIl/NyW7ceTibEwuk2d8kN3IfLBsKJ0lvMj9Mu4tayZqJUcS8
	NDYPVfOPlmPTZ+fG/FqaG79AYgwljWvmeWrGFlzqImEKPLuq+0IM5344IbOyryBNlYJtplZCIKp5O
	U8IGvWPtg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Yuh-0006EQ-Hp; Mon, 18 Jan 2021 18:06:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Yud-0006C7-Kv
 for linux-rockchip@lists.infradead.org; Mon, 18 Jan 2021 18:06:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id DC4431F449C2
Subject: Re: [PATCH RFC 09/11] media: rockchip: rkisp1: make some isp-stats
 functions variable
To: Heiko Stuebner <heiko@sntech.de>, ezequiel@collabora.com,
 dafna.hirschfeld@collabora.com, Laurent.pinchart@ideasonboard.com
References: <20210108193311.3423236-1-heiko@sntech.de>
 <20210108193311.3423236-10-heiko@sntech.de>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <e39838d8-6eec-1845-0f4b-2baf945577a9@collabora.com>
Date: Mon, 18 Jan 2021 15:05:52 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210108193311.3423236-10-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_130559_915065_2CBD13A1 
X-CRM114-Status: GOOD (  19.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 linux-media@vger.kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 1/8/21 4:33 PM, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The isp block evolved in subsequent socs, so some functions
> will behave differently on newer variants.
> 
> Therefore make it possible to override the needed stats functions.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-common.h  | 17 +++++++++++++
>  .../platform/rockchip/rkisp1/rkisp1-stats.c   | 24 +++++++++++++++----
>  2 files changed, 36 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 4034a05ef9d2..be0ae02165c9 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -240,6 +240,21 @@ struct rkisp1_capture {
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
> +struct rkisp1_stats_config {
> +	const int ae_mean_max;
> +	const int hist_bin_n_max;
> +};
> +
>  /*
>   * struct rkisp1_stats - ISP Statistics device
>   *
> @@ -252,6 +267,8 @@ struct rkisp1_capture {
>  struct rkisp1_stats {
>  	struct rkisp1_vdev_node vnode;
>  	struct rkisp1_device *rkisp1;
> +	struct rkisp1_stats_ops *ops;
> +	struct rkisp1_stats_config *config;
>  
>  	spinlock_t lock; /* locks the buffers list 'stats' */
>  	struct list_head stat;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index 3ddab8fa8f2d..7136292039f6 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -203,7 +203,7 @@ static void rkisp1_stats_get_aec_meas(struct rkisp1_stats *stats,
>  	unsigned int i;
>  
>  	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
> -	for (i = 0; i < RKISP1_CIF_ISP_AE_MEAN_MAX; i++)
> +	for (i = 0; i < stats->config->ae_mean_max; i++)
>  		pbuf->params.ae.exp_mean[i] =
>  			(u8)rkisp1_read(rkisp1,
>  					RKISP1_CIF_ISP_EXP_MEAN_00 + i * 4);
> @@ -233,7 +233,7 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
>  	unsigned int i;
>  
>  	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
> -	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
> +	for (i = 0; i < stats->config->hist_bin_n_max; i++)
>  		pbuf->params.hist.hist_bins[i] =
>  			(u8)rkisp1_read(rkisp1,
>  					RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
> @@ -286,6 +286,17 @@ static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
>  	}
>  }
>  
> +static struct rkisp1_stats_ops rkisp1_stats_ops = {
> +	.get_awb_meas = rkisp1_stats_get_awb_meas,
> +	.get_aec_meas = rkisp1_stats_get_aec_meas,
> +	.get_hst_meas = rkisp1_stats_get_hst_meas,
> +};
> +
> +static struct rkisp1_stats_config rkisp1_stats_config = {
> +	.ae_mean_max = 25,
> +	.hist_bin_n_max = 16,
> +};
> +
>  static void
>  rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
>  {
> @@ -308,18 +319,18 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
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
> @@ -353,6 +364,9 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
>  		V4L2_META_FMT_RK_ISP1_STAT_3A;
>  	stats->vdev_fmt.fmt.meta.buffersize =
>  		sizeof(struct rkisp1_stat_buffer);
> +
> +	stats->ops = &rkisp1_stats_ops;
> +	stats->config = &rkisp1_stats_config;
>  }
>  
>  int rkisp1_stats_register(struct rkisp1_device *rkisp1)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
