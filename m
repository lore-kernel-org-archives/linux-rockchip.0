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
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2EC5C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:20:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 826CB21481
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 14:20:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bNFHirBD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 826CB21481
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5lwa8XzSYBxwpASGRcGChA8CXJCizEqmwQUKkrUZ0hE=; b=bNFHirBD/hO1dVPuZgqujxDzr
	EyD0YvIgedTM7TEvdCkAZFL2HlRiKkr/W7oIyQYSYBgqYS2sGL5D6zXcDgAtgrlrE1nCsp32PixZK
	KmOACuBgwWIzcGmxx2IkuhV1dvUFQcAt/k+Or+01TMXy3BAt5bImyUgUxvNDj9ra8nAzE0nd4GoHL
	92ragfhYFidA8YjvOJM1J8mtKll5m9D2zFx0gSPO6bsHBSwH2lISqzU1NVc2etmkT3Lpgcg6oJh1s
	cM1Ks9YEwo/So6OIIhfThv3ZLy+iqOLACYOViDPkNB5b2UPIWY4RCRhH1pxn1OP1KIOXKP24p7dsK
	AwB8cObMw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFI00-0005mN-Hi; Mon, 07 Sep 2020 14:20:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFHzy-0005kl-7Q
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 14:19:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id E56E72925F1
Subject: Re: [PATCH v4 10/10] media: staging: rkisp1: fix configuration for
 GREY pixelformat
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-11-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <a87930d2-f7b1-c6c7-00b8-bb8213558e3b@collabora.com>
Date: Mon, 7 Sep 2020 11:19:50 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200901111612.10552-11-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_101958_368363_783AE7CB 
X-CRM114-Status: GOOD (  17.83  )
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



On 9/1/20 8:16 AM, Dafna Hirschfeld wrote:
> This patch changes the device configuration to support capture
> of V4L2_PIX_FMT_GREY video. The 'write_format' field of the format
> description should be planar.
> Also the array 'pixm->plane_fmt' that describes the planes should
> be memset to 0 before filling it since the the cb, cr planes should
> be 0.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>


Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 79ee6795a58f..6d02cb1c9c5b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -120,7 +120,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>  	{
>  		.fourcc = V4L2_PIX_FMT_GREY,
>  		.uv_swap = 0,
> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> +		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	},
>  	/* yuv420 */
> @@ -248,7 +248,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	{
>  		.fourcc = V4L2_PIX_FMT_GREY,
>  		.uv_swap = 0,
> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> +		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
>  		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>  	},
> @@ -1059,6 +1059,7 @@ rkisp1_fill_pixfmt(struct v4l2_pix_format_mplane *pixm,
>  	unsigned int i;
>  	u32 stride;
>  
> +	memset(pixm->plane_fmt, 0, sizeof(pixm->plane_fmt));
>  	info = v4l2_format_info(pixm->pixelformat);
>  	pixm->num_planes = info->mem_planes;
>  	stride = info->bpp[0] * pixm->width;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
