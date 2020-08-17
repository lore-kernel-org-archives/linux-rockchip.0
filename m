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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5797CC433E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:49:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2641A2072E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:49:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dcublZPm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2641A2072E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G5tfCziFdMaonJVuQNZljXaE+6rkYmsz9spbG8m3QDs=; b=dcublZPmjxIKnxfY4EnyEbv42
	5iVfUKkbrCtFSmVXDWVH3Un/iCD3TO3KXkg3OZo0U5NP1WzZZ/LLTr5cK0Cjdds2uhALLEXciYdD3
	xRet83JkH83dmGK4mLSp1HEqrFZYWyE1S78Z/8LQsJTn9MOavcaH+5uQZxtRbQrsEQsAe7FyqX6Yx
	Z5rKH17e9EK/Ao3Pwx82xV3XKjI/SHzcevoDVFLZ8tkIH5NAA8FqzVT2Ke+hqdmmmzb1OacOIHgpo
	frkwyagiz9Hv3sZScNpNU0WsvdwDwXS/MQJYVSmz1SR3IiJcvPqkMPlm41t3TTOnaSkxOyu19XU73
	ofDcOod/w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7n02-00022m-Cs; Mon, 17 Aug 2020 21:49:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7n00-00021V-8x
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 21:49:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 05D60298623
Subject: Re: [PATCH v2 14/14] media: staging: rkisp1: params: no need to lock
 default config
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-15-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <db5d1b73-34fc-e417-1ab0-d37210346943@collabora.com>
Date: Mon, 17 Aug 2020 18:48:51 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200815103734.31153-15-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_174900_430953_09C18BC3 
X-CRM114-Status: GOOD (  18.37  )
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
> In the function 'rkisp1_params_config_parameter' the lock
> is taken while applying the default config. But the lock
> only needs to protect the buffers list and the 'is_streaming'
> field, so move the locking to lock only what is needed.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 7d5c21fa630e..6c71da311294 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1283,8 +1283,6 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
>  {
>  	struct rkisp1_cif_isp_hst_config hst = rkisp1_hst_params_default_config;
>  
> -	spin_lock(&params->config_lock);
> -
>  	rkisp1_awb_meas_config(params, &rkisp1_awb_params_default_config);
>  	rkisp1_awb_meas_enable(params, &rkisp1_awb_params_default_config,
>  			       true);
> @@ -1309,6 +1307,8 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
>  	else
>  		rkisp1_csm_config(params, false);
>  
> +	spin_lock(&params->config_lock);
> +
>  	/* apply the first buffer if there is one already */
>  	if (params->is_streaming)
>  		rkisp1_params_apply_params_cfg(params, 0);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
