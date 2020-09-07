Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 136CDC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:20:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B600E21481
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:20:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cmlM2T0a"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B600E21481
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VTblJH0cRBVVuMBa2OizygTJe3kElabKYZ4XLW3Zo/U=; b=cmlM2T0awhYdQjuXfE1eGRiK/
	0xhBVqV6/XM5pockjuTZK47gId3VPYa9D4LfA0J4VW02pe4IuWn/g+7r6BN6Ln4CHyBf3dCIgvSkM
	dtx065ObP9OROSVsbET4MKnQyrcgHH/gdFvy8vjI62TIAHxBmg40vBPwkYCVyBb5JKlKDfByOGuIi
	ZdVqeAeVOEbcPeAc9tHIBm5KJULCwe4iYhmp4yiV6UoYpYydz0dcu7frbGjwc/fIEwdU/a9vfOdDe
	YS89pyNfuZRO4acbhP/At4nEBm8hJnrTY0ybylB5Dis4S/el4zzGDkL2vmzmmvsl/khK0QixxAD1n
	B4GbzFbXw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFHzy-0005l5-5C; Mon, 07 Sep 2020 14:19:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFHzw-0005kF-46
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 14:19:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 1E1BD29226B
Subject: Re: [PATCH v4 09/10] media: staging: rkisp1: cap: simplify the link
 validation by compering the media bus code
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-10-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <671e22c5-2856-d527-e3dd-3bceb77844d5@collabora.com>
Date: Mon, 7 Sep 2020 11:19:42 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200901111612.10552-10-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_101956_257618_D3D28793 
X-CRM114-Status: GOOD (  17.77  )
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

typo in the title

s/compering/comparing

On 9/1/20 8:16 AM, Dafna Hirschfeld wrote:
> The capture has a mapping of the mbus code needed for each pixelformat.
> This can be used to simplify the link validation by comparing the mbus
> code in the capture with the code in the resizer.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>


Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 531381e1801a..79ee6795a58f 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1265,22 +1265,11 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  	struct v4l2_subdev *sd =
>  		media_entity_to_v4l2_subdev(link->source->entity);
>  	struct rkisp1_capture *cap = video_get_drvdata(vdev);
> -	struct rkisp1_isp *isp = &cap->rkisp1->isp;
> -	u8 isp_pix_enc = isp->src_fmt->pixel_enc;
> -	u8 cap_pix_enc = cap->pix.info->pixel_enc;
> +	const struct rkisp1_capture_fmt_cfg *fmt =
> +		rkisp1_find_fmt_cfg(cap, cap->pix.fmt.pixelformat);
>  	struct v4l2_subdev_format sd_fmt;
>  	int ret;
>  
> -	if (cap_pix_enc != isp_pix_enc &&
> -	    !(isp_pix_enc == V4L2_PIXEL_ENC_YUV &&
> -	      cap_pix_enc == V4L2_PIXEL_ENC_RGB)) {
> -		dev_err(cap->rkisp1->dev,
> -			"format type mismatch in link '%s:%d->%s:%d'\n",
> -			link->source->entity->name, link->source->index,
> -			link->sink->entity->name, link->sink->index);
> -		return -EPIPE;
> -	}
> -
>  	sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
>  	sd_fmt.pad = link->source->index;
>  	ret = v4l2_subdev_call(sd, pad, get_fmt, NULL, &sd_fmt);
> @@ -1288,7 +1277,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  		return ret;
>  
>  	if (sd_fmt.format.height != cap->pix.fmt.height ||
> -	    sd_fmt.format.width != cap->pix.fmt.width)
> +	    sd_fmt.format.width != cap->pix.fmt.width ||
> +	    sd_fmt.format.code != fmt->mbus)
>  		return -EPIPE;
>  
>  	return 0;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
