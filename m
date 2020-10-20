Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 366B8C388F2
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:13:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD37F22242
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:13:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CS25fAn0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD37F22242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/wcTo7mZMRSzx5rqp8ufuBTDuNHXXFFpMf2CeHkBphs=; b=CS25fAn0sC85QpcSww5hO7rb0
	U1moSx9Rt1qQJC5XxYyzDEycpE+oNhb1Cr0aJNWOOyl+LpT4X5D0nBSXQYH5+nWzV8oMpHvi+VeHr
	IgNvKzoL+45FYNeSKvZmWGiIT+PRNdIogi1vn4RdKZr/UHI4jB/PZdcO5oNLsunroDQzsJ7fTCKZL
	u5hg/503n7cBdPZNAOT9cuJf5AO4O18zBPnGG4fCZVYvme3ZR59QCOy0bnafUcFrgfWTfy6gM//2r
	ySc2TuEbnbHgvR0WHZ6KAPj7lZ20oWe5XnqQwiGm0/p8EmO2XwrIOsFqdvrkKfaOxWeOx8Z/stQ3I
	o8/9RRAtg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUvCN-0004P8-8i; Tue, 20 Oct 2020 17:13:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUvCL-0004OR-Gm
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 17:13:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 62B641F44F32
Subject: Re: [PATCH 1/4] media: staging: rkisp1: fix coding style issues
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
 <20201019205956.6980-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <42b40780-f9ca-18fb-161c-e45f8500d161@collabora.com>
Date: Tue, 20 Oct 2020 14:13:11 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201019205956.6980-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_131321_657691_5A9258D2 
X-CRM114-Status: GOOD (  15.85  )
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

On 10/19/20 5:59 PM, Dafna Hirschfeld wrote:
> Fix checkpatch issues:
> Blank lines aren't necessary before a close brace '}'
> Alignment should match open parenthesis

Just a nit, usually, it's one patch per checkpatch error.

With the split:

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-dev.c     | 4 ++--
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 1 -
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
>  3 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 91584695804b..4f6ae1a01253 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -254,8 +254,8 @@ static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
>  		struct rkisp1_sensor_async *rk_asd = NULL;
>  		struct fwnode_handle *ep;
>  
> -		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
> -			0, next_id, FWNODE_GRAPH_ENDPOINT_NEXT);
> +		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev), 0, next_id,
> +						     FWNODE_GRAPH_ENDPOINT_NEXT);
>  		if (!ep)
>  			break;
>  
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index a9715b0b7264..fb23461d865c 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -1157,5 +1157,4 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
>  		 */
>  		rkisp1_params_isr(rkisp1);
>  	}
> -
>  }
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 1687d82e6c68..a9d537c11ecb 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -610,8 +610,8 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>  				  RKISP1_ISP_MIN_WIDTH,
>  				  RKISP1_ISP_MAX_WIDTH);
>  	sink_fmt->height = clamp_t(u32, format->height,
> -				  RKISP1_ISP_MIN_HEIGHT,
> -				  RKISP1_ISP_MAX_HEIGHT);
> +				   RKISP1_ISP_MIN_HEIGHT,
> +				   RKISP1_ISP_MAX_HEIGHT);
>  
>  	*format = *sink_fmt;
>  
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
