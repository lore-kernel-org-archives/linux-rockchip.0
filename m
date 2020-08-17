Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CB1BC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:46:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 083DC2072E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:46:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DWm19W3R"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 083DC2072E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GUGef9RRNLfG+oYbxal4h65koxSUopK3Gcxy0d9zsdM=; b=DWm19W3R+VenIf29Vr+iBmb96
	ICLGekzMguON4w5m7AEzmNm9JHn3Vhe6hR2unBHKjom37paSFYtQ+ZZZ+BaKGK01EpxVALi7BfDir
	ESluFqmMYOK0Nm0RyuOsm9ekUO1/z3m/pAqgKtPJj1shDXVWLfalGihmb5JNfB89+YXDyOwlJ4OBj
	o2CQo6QJsxDn6AqsQ3Rjzp94H4HLiNcEvSXPWfF/L88a3MWjlAMPYDxG8WHXcS5Gm9De0/32eMETF
	Ti4acLhFZ5BW2hOyx3ajoCjaK5fp9BuJMgTsWVwcFLQlnJh2wkMBUiYH9TVynSGDqosV8tNaDKSJo
	l9YLVsh+A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7mxt-0001Oy-Pl; Mon, 17 Aug 2020 21:46:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7mxr-0001OO-IK
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 21:46:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id E1ADE2945A0
Subject: Re: [PATCH v2 01/14] media: staging: rkisp1: call params isr only
 upon frame out
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <f612f3a3-c273-c0c5-fd37-e1a415145bd0@collabora.com>
Date: Mon, 17 Aug 2020 18:46:36 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200815103734.31153-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_174647_779190_8CDFAB00 
X-CRM114-Status: GOOD (  21.12  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

Thanks for the patch, nice cleanup.

On 8/15/20 7:37 AM, Dafna Hirschfeld wrote:
> Currently the params isr is called and then returned when
> isp-frame interrupt is not set. This condition is already
> tested in the isp's isr so move the call under the condition
> in the isp's isr.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-isp.c    | 12 ++++----
>  drivers/staging/media/rkisp1/rkisp1-params.c | 29 +++++++++-----------
>  3 files changed, 20 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 3dc51d703f73..29eaadc58489 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -313,7 +313,7 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1);
>  void rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
>  void rkisp1_capture_isr(struct rkisp1_device *rkisp1);
>  void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
> -void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis);
> +void rkisp1_params_isr(struct rkisp1_device *rkisp1);
>  
>  int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1);
>  void rkisp1_capture_devs_unregister(struct rkisp1_device *rkisp1);
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 6ec1e9816e9f..ad2ece78abbf 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -1141,12 +1141,12 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
>  		isp_ris = rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
>  		if (isp_ris & RKISP1_STATS_MEAS_MASK)
>  			rkisp1_stats_isr(&rkisp1->stats, isp_ris);
> +		/*
> +		 * Then update changed configs. Some of them involve
> +		 * lot of register writes. Do those only one per frame.
> +		 * Do the updates in the order of the processing flow.
> +		 */
> +		rkisp1_params_isr(rkisp1);
>  	}
>  
> -	/*
> -	 * Then update changed configs. Some of them involve
> -	 * lot of register writes. Do those only one per frame.
> -	 * Do the updates in the order of the processing flow.
> -	 */
> -	rkisp1_params_isr(rkisp1, status);
>  }
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 797e79de659c..6d69df36c495 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1193,12 +1193,13 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  	}
>  }
>  
> -void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis)
> +void rkisp1_params_isr(struct rkisp1_device *rkisp1)
>  {
>  	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
>  	struct rkisp1_params *params = &rkisp1->params;
>  	struct rkisp1_params_cfg *new_params;
>  	struct rkisp1_buffer *cur_buf = NULL;
> +	u32 isp_ctrl;
>  
>  	spin_lock(&params->config_lock);
>  	if (!params->is_streaming) {
> @@ -1217,24 +1218,20 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis)
>  
>  	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
>  
> -	if (isp_mis & RKISP1_CIF_ISP_FRAME) {
> -		u32 isp_ctrl;
> +	rkisp1_isp_isr_other_config(params, new_params);
> +	rkisp1_isp_isr_meas_config(params, new_params);
>  
> -		rkisp1_isp_isr_other_config(params, new_params);
> -		rkisp1_isp_isr_meas_config(params, new_params);
> +	/* update shadow register immediately */
> +	isp_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_CTRL);
> +	isp_ctrl |= RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD;
> +	rkisp1_write(params->rkisp1, isp_ctrl, RKISP1_CIF_ISP_CTRL);
>  
> -		/* update shadow register immediately */
> -		isp_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_CTRL);
> -		isp_ctrl |= RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD;
> -		rkisp1_write(params->rkisp1, isp_ctrl, RKISP1_CIF_ISP_CTRL);
> -
> -		spin_lock(&params->config_lock);
> -		list_del(&cur_buf->queue);
> -		spin_unlock(&params->config_lock);
> +	spin_lock(&params->config_lock);
> +	list_del(&cur_buf->queue);
> +	spin_unlock(&params->config_lock);
>  
> -		cur_buf->vb.sequence = frame_sequence;
> -		vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> -	}
> +	cur_buf->vb.sequence = frame_sequence;
> +	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
>  }
>  
>  static const struct rkisp1_cif_isp_awb_meas_config rkisp1_awb_params_default_config = {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
