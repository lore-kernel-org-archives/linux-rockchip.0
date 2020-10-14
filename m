Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BBC0C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:40:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 883DC22247
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:40:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rrG3pTYk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 883DC22247
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LAyNlY1wEWOX+HmoxtTjW6IxNeuKLClNpe91ucaIPnc=; b=rrG3pTYkB/GaeGf8oTQkSK7gA
	cjq7xrGSrsbpXq14QLLrDPe3YewIYz8ZOqOkuUx46k5NCX0z0WNNwXXlus85THazdsJ8dfLaPCS8/
	/H0Bc41KKr784OFdpH70Gos61jff3ZTzod9ufUdweYs6zZSeGvchQUfs5GVvFx8jFJvXhYGUikJS4
	WVBc3rNirJz10kMHl4WTz1YYPe6/N8DYido2T2Cx5C3VfsRBnxbN0JrY46aT4UxV853ixfB8H9JN7
	i3LQ1YrbIuRVSUtGuooBL6jFLG9pyXxCxDhPf3seXRsPZ2bOmvcWFvYVXOGRXTjyKUEk98KGcPnKx
	h8jhdSa6g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSnZR-0001FW-W4; Wed, 14 Oct 2020 20:40:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSnZQ-0001F8-MC
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 20:40:25 +0000
Received: from [IPv6:2804:14c:483:7f66::1004] (unknown
 [IPv6:2804:14c:483:7f66::1004])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 18BD91F4582E;
 Wed, 14 Oct 2020 21:40:20 +0100 (BST)
Subject: Re: [PATCH 2/2] media: staging: rkisp1: isp: set metadata pads to
 MEDIA_BUS_FMT_METADATA_FIXED
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200922165813.19378-1-dafna.hirschfeld@collabora.com>
 <20200922165813.19378-3-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <10d04515-3fbe-1b19-b142-ec6727b9aa2a@collabora.com>
Date: Wed, 14 Oct 2020 17:40:17 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20200922165813.19378-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_164024_841172_01A9ED8F 
X-CRM114-Status: GOOD (  18.78  )
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



On 9/22/20 1:58 PM, Dafna Hirschfeld wrote:
> Set the code of the metadata pads of the isp entity to
> MEDIA_BUS_FMT_METADATA_FIXED and set the width and
> height of their formats to 0. This solves the TODO
> item:
> "Fix pad format size for statistics and parameters entities."
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/TODO         | 1 -
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 8 ++++----
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
> index f0c90d1c86a8..f4a94eca6d31 100644
> --- a/drivers/staging/media/rkisp1/TODO
> +++ b/drivers/staging/media/rkisp1/TODO
> @@ -1,4 +1,3 @@
> -* Fix pad format size for statistics and parameters entities.
>  * Fix checkpatch errors.
>  * Review and comment every lock
>  * Handle quantization
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 02eafea92863..a6c0f1eb0c5a 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -574,7 +574,7 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
>  	} else {
>  		if (code->index > 0)
>  			return -EINVAL;
> -		code->code = MEDIA_BUS_FMT_FIXED;
> +		code->code = MEDIA_BUS_FMT_METADATA_FIXED;
>  		return 0;
>  	}
>  
> @@ -630,10 +630,10 @@ static int rkisp1_isp_init_config(struct v4l2_subdev *sd,
>  					      RKISP1_ISP_PAD_SINK_PARAMS);
>  	src_fmt = v4l2_subdev_get_try_format(sd, cfg,
>  					     RKISP1_ISP_PAD_SOURCE_STATS);
> -	sink_fmt->width = RKISP1_DEFAULT_WIDTH;
> -	sink_fmt->height = RKISP1_DEFAULT_HEIGHT;
> +	sink_fmt->width = 0;
> +	sink_fmt->height = 0;
>  	sink_fmt->field = V4L2_FIELD_NONE;
> -	sink_fmt->code = MEDIA_BUS_FMT_FIXED;
> +	sink_fmt->code = MEDIA_BUS_FMT_METADATA_FIXED;
>  	*src_fmt = *sink_fmt;
>  
>  	return 0;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
