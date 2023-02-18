Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0E4C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Feb 2023 12:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TVVknONZGMxEE0MeVFrsHbGj/kUSrvGkZMrfooxSpjg=; b=Zo5FoAVRVn/GeBta8TSlAybyfH
	kTDO9gk4U6FtlrdX4tbPI2aIrm6Z31THqejORCaNrsUe1S44ey8VLU7hrv0VeGaLzpTVgsR5zpodi
	KbW+b7z6lCBcefFlQw9kpC208ihxd19DidQalMPOXc7jgBSKGBMEuUDzk6Raj5ijGVrzcgDSE3SFW
	Z8kyK1yUKe9Q9DLfEzEGmimeWNaehaMc7cIbdhjE3MKjxL4zgYCPZD+cm1Tx6chG6IAMwu3lnwGhQ
	rOfoWht42CVx/jsWWewlJaOfM+wh844MHWeSSKwz8A5wBAGWZ7ArHtVDegGqWbpZ/yl1fCUEbBiIW
	iN59ohaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTMn3-00H1RM-PX; Sat, 18 Feb 2023 12:58:09 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTMn0-00H1Q7-AZ
	for linux-rockchip@lists.infradead.org; Sat, 18 Feb 2023 12:58:07 +0000
Received: by mail-oo1-xc31.google.com with SMTP id v14-20020a056820004e00b005200c0d4a2aso153779oob.11
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Feb 2023 04:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112; t=1676725085;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=heB0LSPERxtNOuR2XXO/S13lArXamWKUpciLIk5RPJQ=;
        b=FMZjJIh2uILxt3mdEAV2y56p6GbGQZL5CT+raq4rSjrhYunspFS4t80uEzwgnh1YLh
         1uH0hu/M/g/RCraP6ENjSimA36idXoKpLf1QEll/LepVq9iYoJDLbHpr+fDZcmwG0gg/
         JaDwBGJxLMXdkGT4DLpnupxoDPicKzJtfL20aQWvR9z6hNLoUQi7Nix7bSG//51lwxUG
         63NYAaU6a127r6s4FJ01BVqUR4wX3LzvXdAkRdMnI9fCO2YZEWl5bzfZT0jCn48eiFVN
         j8+pr0GHBKaaaTKoEzTCTVqxBgRG8HJoBB+7u+FWOuydB1FOifOY5DODqRv5ezeg9YJC
         7qfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676725085;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=heB0LSPERxtNOuR2XXO/S13lArXamWKUpciLIk5RPJQ=;
        b=7zeXWpW67dqNBPvRxz07gTsC59dwtoAPjiCVwLYiDWvjS36JK35JPyFSFEEBmUl1n0
         BDZLkCe/qK77h68QbN9qdAFRDkzzFUXLxnGo2NGvzV46LMde0JTG3gijTraqtHFaAWli
         AmVv4AX48mgeaB8jfjW2svw+pnJV5SWMZ06FwyDzcHYdhECs0VQPC19o8QsUfhnM+Z6h
         pVcMiEErQ5NWYZmglSLmZGwVL5PCd//QZURnBzBheVX0Sl6C4WZaWfUE8dtHH1XitWWO
         /ETYRHN3ujjzgUgF9K/n0MnXTbLUbMFacDn3qSlf0JVTwugQ056JbHor/Wm5yrnHz1Nc
         a0hw==
X-Gm-Message-State: AO0yUKVLWtQzubo3LYfTOBB1zw9S2aghNII5Zd9iUdaF8GrBoqiiqPKi
	DE+mNegOpsml5s/KD292eNTG8Q==
X-Google-Smtp-Source: AK7set8XPnUmsRlxZBklZLpDgfpIOdRVMYbHg18Hiw7ix7n3RpdMa2n0YRWdO3VzWN+jrHShf1eG1Q==
X-Received: by 2002:a4a:3559:0:b0:51f:b89d:7c22 with SMTP id w25-20020a4a3559000000b0051fb89d7c22mr2092600oog.1.1676725085062;
        Sat, 18 Feb 2023 04:58:05 -0800 (PST)
Received: from [192.168.10.175] ([190.11.59.127])
        by smtp.gmail.com with ESMTPSA id y2-20020a4ad642000000b0051ff746e2b2sm2535402oos.8.2023.02.18.04.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 04:58:04 -0800 (PST)
Date: Sat, 18 Feb 2023 09:57:52 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v8 5/6] media: verisilicon: HEVC: Only propose 10 bits
 compatible pixels formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>
Message-Id: <GC1AQR.P5N43DMFQK0D1@vanguardiasur.com.ar>
In-Reply-To: <20230203091622.127279-6-benjamin.gaignard@collabora.com>
References: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
	<20230203091622.127279-6-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230218_045806_413975_7D0D95E0 
X-CRM114-Status: GOOD (  17.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin,

On Fri, Feb 3 2023 at 10:16:21 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> When decoding a 10bits bitstreams HEVC driver should only expose
> 10bits pixel formats.
> To fulfill this requirement it is needed to call 
> hantro_reset_raw_fmt()
> when bit depth change and to correctly set match_depth in pixel 
> formats
> enumeration.
> 
> Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c   | 11 +++++++++--
>  drivers/media/platform/verisilicon/imx8m_vpu_hw.c |  2 ++
>  2 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c 
> b/drivers/media/platform/verisilicon/hantro_drv.c
> index 6d8bc55ea627..fa31b200b097 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -326,8 +326,15 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl 
> *ctrl)
> 
>  	switch (ctrl->id) {
>  	case V4L2_CID_STATELESS_HEVC_SPS:
> -		ctx->bit_depth = ctrl->p_new.p_hevc_sps->bit_depth_luma_minus8 + 8;
> -		break;
> +	{

Should be:

case V4L2_CID_STATELESS_HEVC_SPS: {

...

Same for VP9.

Thanks,
Ezequiel

> +		const struct v4l2_ctrl_hevc_sps *sps = ctrl->p_new.p_hevc_sps;
> +		int bit_depth = sps->bit_depth_luma_minus8 + 8;
> +
> +		if (ctx->bit_depth == bit_depth)
> +			return 0;
> +
> +		return hantro_reset_raw_fmt(ctx, bit_depth);
> +	}
>  	default:
>  		return -EINVAL;
>  	}
> diff --git a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c 
> b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
> index b390228fd3b4..f850d8bddef6 100644
> --- a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
> +++ b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
> @@ -152,6 +152,7 @@ static const struct hantro_fmt 
> imx8m_vpu_g2_postproc_fmts[] = {
>  	{
>  		.fourcc = V4L2_PIX_FMT_NV12,
>  		.codec_mode = HANTRO_MODE_NONE,
> +		.match_depth = true,
>  		.postprocessed = true,
>  		.frmsize = {
>  			.min_width = FMT_MIN_WIDTH,
> @@ -165,6 +166,7 @@ static const struct hantro_fmt 
> imx8m_vpu_g2_postproc_fmts[] = {
>  	{
>  		.fourcc = V4L2_PIX_FMT_P010,
>  		.codec_mode = HANTRO_MODE_NONE,
> +		.match_depth = true,
>  		.postprocessed = true,
>  		.frmsize = {
>  			.min_width = FMT_MIN_WIDTH,
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
