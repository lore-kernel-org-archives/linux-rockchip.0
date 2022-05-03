Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB3D0C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 May 2022 13:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYq2KjyajT7ImE15UWxI3IQGpbi1gNKrkqGmJJ35/0A=; b=necAWdM4yDGoXu
	QxrDOH6SxK8LxPLI27WD7giVU9YmleQ2fbgr+/PEMgqPk2JEWGKZ5JTtDbn43vxxaQDmd2zXV43Ms
	B9loM/ZbIoIgSKdnDC4KDpDJcsxsK4uUGPJPbmbdMocw0o/P9jvSVQ427t/L63oC0p4JGVU1aCpFr
	qjJ3WD5bQbz68EI9nTTbDZw71dIpA3THGdSQBaxn0ldjSMZvPhPKGdvi/E4YJpU4sNGVyR5atjqRU
	k7AVAoB1caRg4BSPmYOxlkEz/tRTBUeuFr2Eg6tCi2UqmxTba7GaxStpDIx7PyT0L/+D7pbK9mihP
	QgtTxNzUMNR9JFSdPCXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlsL5-00609R-Ok; Tue, 03 May 2022 13:13:15 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlsL2-00607C-BG
 for linux-rockchip@lists.infradead.org; Tue, 03 May 2022 13:13:14 +0000
Received: by mail-ed1-x52e.google.com with SMTP id g20so19782496edw.6
 for <linux-rockchip@lists.infradead.org>; Tue, 03 May 2022 06:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m9EJXKOaKjDDNKQv1gqS5JQ7TFaPX71hGDmkIvDsda0=;
 b=jFHCvpg7kJ7bmVCanX+9zqu46ofKvbl/Xb/SqqfkaxIx/MLwrPEJg27OzILpJiK3qZ
 clfA5sgrVh2Kl2tk4tnXaUwgNoSJR/UxnYJtAMAVNYN46DEXN2H5Yxk2XMCg10vUFo2W
 flWDfcAqisasCl/8EA5Sqq3PU4sVOVUSVBhgGhP0qVURTSGw2Pyn2Y1AiCt4CyQFVy3t
 Hhq487eMpjhKhV8B69S3+eJcbhkRiXS5GJJYz2gHKcJoeFijCo1oWCm31Ksvl4l+zTiJ
 UyGrqOsLINbNMXAMr5Wp9Gy2eGkXHGRw/kU5XL+C9hWsBV0zJuPeVpgs97XjYg4MPeMz
 8k+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m9EJXKOaKjDDNKQv1gqS5JQ7TFaPX71hGDmkIvDsda0=;
 b=ikW4iM493Y50A0grvxX3LK/YtJowfS5urg8TrDBGlbfPnvbjnxHtglAi1qhfc8olBm
 v+kbFfxW/ouf398/WVopH5f0BUkuDGRlz4Vi/DJDup9PKwo1MxqRBbiVtfP7p6ls6ewU
 Fat/mPclo1foSFcOH0GSC/byi0xwC8VVZwXF50IxUrpE0gmyNEMZu4OlcSxrfnrvnobx
 Nebjpa4gjPzsrcimf08W9lAPQJantRiuUHE25Dtgub8Khq/JzA2m8B6YVo2Auaa4GRgH
 MbH4AGre1v8jYIctK3mqVfmTypprML2Qy93nnN1OYSn4EsNOPtKX63XgfI9o8hNyDDuK
 W+Pg==
X-Gm-Message-State: AOAM530rimeI+vkkuH9FdVOY4UqWsPkNGRcsvi9031iBuT//FgtnFZvH
 Uec2XmMEdKcXlzMBz0neUcAq//KrRvdNEh4lt9A/bA==
X-Google-Smtp-Source: ABdhPJxXwCm9IHHV3kTuM6DOq/lBLPdzGlFlGxt6I/BTiZE2k82vcX4wZYbW9ztH1iJfXbCDL0KsRXOdo34VWfoK7Fc=
X-Received: by 2002:a05:6402:2c4:b0:425:ac5c:4376 with SMTP id
 b4-20020a05640202c400b00425ac5c4376mr18103055edx.10.1651583588354; Tue, 03
 May 2022 06:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220426135034.694655-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20220426135034.694655-1-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 3 May 2022 10:12:57 -0300
Message-ID: <CAAEAJfAvUjtR4w0uaZ5yFueXu8jNbH-gmWUOEZxoJH78771RSA@mail.gmail.com>
Subject: Re: [PATCH v2] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg KH <gregkh@linuxfoundation.org>, linux-media <linux-media@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, jon@nanocrew.net, 
 Adam Ford <aford173@gmail.com>, Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_061312_628838_7EE0DD1C 
X-CRM114-Status: GOOD (  18.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin,

On Tue, Apr 26, 2022 at 10:50 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> Always set pps_cb_qp_offset and pps_cr_qp_offset values in Hantro/G2
> register whatever is V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT
> flag value.

I would say we need more justification why this is correct, or at least
checking what the reference vendor implementation is doing (and mentioning
in the commit description so we can track it in the future).

> This fix CAINIT_G_SHARP_3 test in fluster.
>

This could sound like a tad a pedantic detail, but I'd say it's
important we stop refering to tests
as "fluster tests", and instead say something more correct as "HEVC
conformance test CAINIT_G_SHARP_3".

Also, when we are fixing conformance tests, let's please add the
Fluster score (in this case, I think it's
OK to refer to Fluster).

PS: Same comments apply to patch "media: hantro: HEVC: Fix reference
frames management".

Thanks,
Ezequiel

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index 6deb31b7b993..503f4b028bc5 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -194,13 +194,8 @@ static void set_params(struct hantro_ctx *ctx)
>                 hantro_reg_write(vpu, &g2_max_cu_qpd_depth, 0);
>         }
>
> -       if (pps->flags & V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT) {
> -               hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
> -               hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
> -       } else {
> -               hantro_reg_write(vpu, &g2_cb_qp_offset, 0);
> -               hantro_reg_write(vpu, &g2_cr_qp_offset, 0);
> -       }
> +       hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
> +       hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
>
>         hantro_reg_write(vpu, &g2_filt_offset_beta, pps->pps_beta_offset_div2);
>         hantro_reg_write(vpu, &g2_filt_offset_tc, pps->pps_tc_offset_div2);
> --
> 2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
