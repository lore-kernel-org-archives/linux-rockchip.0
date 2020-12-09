Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A36C4361B
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 16:53:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 211BF23BC7
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 16:53:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 211BF23BC7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PZmPNrDRhwOKFGA4VV88MjCA2cZ3adFOrA4KXq7pb9c=; b=gu4MutHyIsZYldvXOpt4l3P9p
	HssAxbtUR0G0Obu/11UwQ6jtxGEn/HqfjuEcfbz0BGG6uUXDyYXKsK5clno4bIx8CMCSBCcGNVxDA
	CL+mfuthRWoC+H8ZrJ1F6o+YOqSKcl8YAcvAt0bFYooJi+3X2BNzaHWa6e4ow3ihqjQjJpYVqGzBC
	20+v2qJIDdkupzdlxEnZ8mOQ8zc7pbZhkYe5ocA4zn3qe2rEfRfL+pi/pNeNKd0vnU9VTgFW5jp2t
	AKcDuDVJ+LCu3zUMFDQt5D2HkVPO9kqZbCrlsstMv20vNuz/YANwlD4q3zKClU3cpMFm/5HojCAva
	Ks/SVSK3w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn2iG-0003ml-MT; Wed, 09 Dec 2020 16:53:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn2iE-0003mC-Jc
 for linux-rockchip@lists.infradead.org; Wed, 09 Dec 2020 16:53:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 55CB91F45369
Subject: Re: [PATCH] media: rkisp1: rsz: crash fix when setting src format
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201209161510.31399-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <1154106a-6c66-5560-189d-d67251026745@collabora.com>
Date: Wed, 9 Dec 2020 13:53:00 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201209161510.31399-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_115310_744355_F38AB743 
X-CRM114-Status: GOOD (  20.30  )
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



On 12/9/20 1:15 PM, Dafna Hirschfeld wrote:
> When setting the source media bus code in the resizer,
> we first check that the current media bus code in the
> source is yuv encoded format. This is done by
> retrieving the data from the formats list of the isp
> entity. This cause a crash when the media bus code on the
> source is YUYV8_1_5X8 which is not supported by the isp
> entity. Instead we should test the sink format of the resizer
> which is guaranteed to be supported by the isp entity.
> 
> Fixes: 251b6eebb6c49 ("media: staging: rkisp1: rsz: Add support to more YUV encoded mbus codes on src pad")
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index 813670ed9577..79deed8adcea 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -520,14 +520,15 @@ static void rkisp1_rsz_set_src_fmt(struct rkisp1_resizer *rsz,
>  				   struct v4l2_mbus_framefmt *format,
>  				   unsigned int which)
>  {
> -	const struct rkisp1_isp_mbus_info *mbus_info;
> -	struct v4l2_mbus_framefmt *src_fmt;
> +	const struct rkisp1_isp_mbus_info *sink_mbus_info;
> +	struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
>  
> +	sink_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SINK, which);
>  	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SRC, which);
> -	mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
> +	sink_mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>  
>  	/* for YUV formats, userspace can change the mbus code on the src pad if it is supported */
> -	if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
> +	if (sink_mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
>  	    rkisp1_rsz_get_yuv_mbus_info(format->code))
>  		src_fmt->code = format->code;
>  
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
