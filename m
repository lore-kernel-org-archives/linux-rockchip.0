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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FC0BC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:47:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BFE320738
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:47:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="p3ylhR75"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3BFE320738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hkBGwSlzmTOxL+3CxPa/Q40Ow98iGtxifAHdta3QpKQ=; b=p3ylhR75i6Avtgz8FcuzEh5dB
	hfhW0FgB92USo21dua18QDMngg+7xz83f0QRCJVKvsWCg+zemKH2oYfcpaXqaYy3jLCXJtwnq8Ul+
	ZYspZPIUgHBwkE45h8w2y/si5uCcVyxPZ+HWjgWk70W0wyNs+o0KLATtl9fc3xCrQRFp9Wu8vckyQ
	lk+ST8HpUM1OMgWKlY/qu8o44XNR3f0n1SLpptbv6QtFQG3x8yjP6V11xLIbM68ShjtkGDPZX93aI
	PrBaIsApfpXKhfUVdgt7xyZEhwRwF+pDDbNPrIowBh5XfuWTGNmRYgvNUCz9uT2QdmlTiIFen5SfV
	CMcwbA6+g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7myd-0001dd-GI; Mon, 17 Aug 2020 21:47:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7mya-0001bp-S1
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 21:47:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 1D4312945A0
Subject: Re: [PATCH v2 06/14] media: staging: rkisp1: params: in the isr,
 return if buffer list is empty
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-7-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <99efbc23-b9bc-b86b-07bb-db9229e7948e@collabora.com>
Date: Mon, 17 Aug 2020 18:47:21 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200815103734.31153-7-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_174733_011918_D056EFDD 
X-CRM114-Status: GOOD (  17.90  )
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
> Currently the code in the isr checks if the buffer list is not
> empty before referencing a buffer and then check again if the
> buffer is not NULL. Instead we can save one 'if' statement by
> returning if the buffers list is empty.
> Also remove non-helpful inline doc 'get one empty buffer'
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 6a76c586e916..86bbd01e18c7 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1206,16 +1206,14 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
>  		return;
>  	}
>  
> -	/* get one empty buffer */
> -	if (!list_empty(&params->params))
> -		cur_buf = list_first_entry(&params->params,
> -					   struct rkisp1_buffer, queue);
> -
> -	if (!cur_buf) {
> +	if (list_empty(&params->params)) {
>  		spin_unlock(&params->config_lock);
>  		return;
>  	}
>  
> +	cur_buf = list_first_entry(&params->params,
> +				   struct rkisp1_buffer, queue);
> +
>  	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
>  
>  	rkisp1_isp_isr_other_config(params, new_params);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
