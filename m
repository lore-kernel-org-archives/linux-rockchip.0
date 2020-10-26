Return-Path: <SRS0=TxuA=EB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85E8C4363A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 16:58:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58746223B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 16:58:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Oy6wM0fH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 58746223B0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dywLFAyyHZx2rMcAIJLfZAj2rH3eKwB4IYWWJ5LwLuM=; b=Oy6wM0fH0ndqcbNjmLuAvcrCv
	XeYx8jj9+nITaKUsfL5qily5BI/uZuUCGZS0SPUFyFGET03L/i8issF2Rb5A+cGm0l1eLOoA4s4it
	F8R0+7L5nNPpaoI0b8U19H+DlMhvZ95Smk2CI1t/to881jxu9gnai2zYYyJqXDfRllk16vmDlGbfa
	09XnCqlymfbUHipjh4RvTLYV6fJuC6RIkJet/YFiOEnhUFKj4FfJXKwjSmU95dD2fe+eIKoZwlvIP
	LHCl7x+k0fbfqZB7j8QV2Af7Ym9ogqCLIgr4g66ugUy7JJniMq9KcxDucTJfW9Q10tUMl2N0NB3Dn
	0Jei0rn+w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kX5pQ-0005re-B6; Mon, 26 Oct 2020 16:58:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kX5pM-0005os-EG
 for linux-rockchip@lists.infradead.org; Mon, 26 Oct 2020 16:58:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 24D8E1F44F7B
Subject: Re: [PATCH] media: staging: rkisp1: capture: set default quantization
 on 'set_fmt'
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201026162848.18310-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <56efb732-860c-a2e1-ef55-975d0ace2773@collabora.com>
Date: Mon, 26 Oct 2020 13:58:27 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201026162848.18310-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201026_125836_631782_6DC8109F 
X-CRM114-Status: GOOD (  15.32  )
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



On 10/26/20 1:28 PM, Dafna Hirschfeld wrote:
> On 's/try_fmt' ioctl, set the quantization field to
> V4L2_QUANTIZATION_DEFAULT. This fixes the compliance
> errors:
> 
> fail: v4l2-test-formats.cpp(357): quantization >= 0xff
> fail: v4l2-test-formats.cpp(473): testColorspace(!node->is_io_mc, pix_mp.pixelformat, pix_mp.colorspace, pix_mp.ycbcr_enc, pix_mp.quantization)
> test VIDIOC_TRY_FMT: FAIL
> fail: v4l2-test-formats.cpp(357): quantization >= 0xff
> fail: v4l2-test-formats.cpp(473): testColorspace(!node->is_io_mc, pix_mp.pixelformat, pix_mp.colorspace, pix_mp.ycbcr_enc, pix_mp.quantization)
> test VIDIOC_S_FMT: FAIL
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks!
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index b6f497ce3e95..9a0f88b2254b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1132,6 +1132,7 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
>  	pixm->field = V4L2_FIELD_NONE;
>  	pixm->colorspace = V4L2_COLORSPACE_DEFAULT;
>  	pixm->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> +	pixm->quantization = V4L2_QUANTIZATION_DEFAULT;
>  
>  	info = rkisp1_fill_pixfmt(pixm, cap->id);
>  
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
