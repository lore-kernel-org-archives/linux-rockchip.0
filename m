Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAEDC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:47:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5471620738
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:47:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZlhMjOyf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5471620738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pd6r56pS8FtDoz9AbGU1XkqX300azRCVDEix09awJXg=; b=ZlhMjOyf9eC1m9hhFRaBP1OF1
	2vMhr7OdNKIupPxy+hlIAtIZ22lt/78SUReByWKdg5fy+4r37FlrnFIl7HC6Hn6GqL3YIotI96O2C
	VpINC1qPgRAiGFD6eOpjeYXW0rzJ2eLB0BL1Nwvk/+V1okgwzliTRPS3l2rqzMmDF4mlCxkMnafZP
	Kw/uhkB3SbDcROJHg5AXZuIod19tQxUZPQbs6VfP6TtVsuZ3vjy/JE6WUiSTn6EaiApnpRBbLl1Zp
	WxNvw2p8+NbEU7Ef1PVsDk84e/EL7KYlcnSvbiEEsbajgkdSA0qQgyHaRBd8PYZF8hSgo59O62ran
	XIJt4PPEQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7myM-0001WX-0b; Mon, 17 Aug 2020 21:47:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7myI-0001V5-Kc
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 21:47:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 77FDC2945A0
Subject: Re: [PATCH v2 04/14] media: staging: rkisp1: params: don't release
 lock in isr before buffer is done
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-5-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <e6e7a3d0-eeb8-851a-af9e-3596caff02ec@collabora.com>
Date: Mon, 17 Aug 2020 18:47:05 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200815103734.31153-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_174714_764990_0EFBC599 
X-CRM114-Status: GOOD (  16.63  )
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



On 8/15/20 7:37 AM, Dafna Hirschfeld wrote:
> In the irq handler 'rkisp1_params_isr', the lock 'config_lock'
> should be held as long as the current buffer is used. Otherwise the
> stop_streaming calback might remove it from the list and
> pass it to userspace while it is referenced in the irq handler.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index eb77b4ed8655..0c2bb2eefb22 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1210,10 +1210,11 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
>  	if (!list_empty(&params->params))
>  		cur_buf = list_first_entry(&params->params,
>  					   struct rkisp1_buffer, queue);
> -	spin_unlock(&params->config_lock);
>  
> -	if (!cur_buf)
> +	if (!cur_buf) {
> +		spin_unlock(&params->config_lock);
>  		return;
> +	}
>  
>  	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
>  
> @@ -1223,12 +1224,11 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
>  	/* update shadow register immediately */
>  	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL, RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
>  
> -	spin_lock(&params->config_lock);
>  	list_del(&cur_buf->queue);
> -	spin_unlock(&params->config_lock);
>  
>  	cur_buf->vb.sequence = frame_sequence;
>  	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> +	spin_unlock(&params->config_lock);
>  }
>  
>  static const struct rkisp1_cif_isp_awb_meas_config rkisp1_awb_params_default_config = {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
