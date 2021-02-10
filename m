Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04183C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 06:10:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80CC464E45
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 06:10:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80CC464E45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k+mALqqLOXSV2NII/xF36lnat4ORyR7KoRjK0wXNl0M=; b=QFLlkzfPRyr8ZX9+nfk/tRGc+
	Iy4s/SlfF8hCbMSDxWuE/QsasVCe6kS4uMXT7HXEn7Xkx0ih3xHm/YgKaCw0WoMaD8/b7UzufMLai
	mqTgad2GXjE4P34RBGP7BKLVWDZbiO/0VyzhiTbhnES6aaasinojDbCdMH9eaj1ElmO3Ta4ARwKPD
	UURprzczzkyoTzKes3HNHdBjaKOQRX0xW/0+W2MG4u7JQN95ruJB5w1OPtjNMudVPJyUF6wdVHDuX
	P8rpT1tt0YCmYAgchDX78sh+sLI5UPKhtJWmUSLtFZqoasQMDu9aIh2N46fzNYTzVJYCkjgzA1Vm9
	1rwNsM9mA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9ihT-0001GM-FG; Wed, 10 Feb 2021 06:10:07 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9ihS-0001Fy-12
 for linux-rockchip@lists.infradead.org; Wed, 10 Feb 2021 06:10:06 +0000
Received: by mail-ed1-x529.google.com with SMTP id c6so1435533ede.0
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Feb 2021 22:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wwlKP1RTFNLDabVbts09rwYJYD2gNRuoRgrutcdNUcA=;
 b=YktyyTdnCMLomK78yb17A6z9gU6O3heQRRJUqp3xYfwVkA8xGCFeZDl5GXnE0PkGFw
 NdkDcJvEBCP1HWIrbMH+wfQHPqi/DfzN+V3sMy8uax8LciAjCd+PaUVTE8ffNDQldi1f
 TVe2fm3XMF7NaaFawhKRn2WPMzUK3EnTiCmV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wwlKP1RTFNLDabVbts09rwYJYD2gNRuoRgrutcdNUcA=;
 b=F5nPiMjoglb7vGlCiqOgCTPHoOReHxUxwH27O3m3oIQgNgN4vOndsuKFgSvGAe9sm8
 Kvbx7EndmRwurdIs3OstWB4dAr9b6qgLkBTgpx383288lM8qL4QJ9olSTSxDQ37Pg7Lp
 KNdFXNrhx8e8IW6CCf42h1U5QLq3Dg4Dvz2uJJPwlR9GA/Ntv2cwDKflWvL+0Zb9pO/3
 bf2fRYJ8RzeW/O3f1u7cycHMlcwMBnZR2o4Wc7dv/a2nbfQSHOOKLxc33oo+VGccnqJ8
 Iy2lpcExm/LzMCUsFbkvUgIN1PDk0tNaAFvS4BBiAftfIXPNATkNbnz5efQGqm39MmvW
 e7PA==
X-Gm-Message-State: AOAM53081DP25K8nemQfKOjkoiwCeo2G5KfFBoZTV17fArhFa6r4WqYC
 4SeJXx+KPjit09ewqspDw54zclELf0o7ow==
X-Google-Smtp-Source: ABdhPJwY6AHPPoPZqYW1ZkMfpBEQiVkmDIj9wy5Mj6EZMSk5xKPAB9GVKDNeX8YRy0HD60tSZrdomg==
X-Received: by 2002:aa7:d28a:: with SMTP id w10mr1631923edq.278.1612937404128; 
 Tue, 09 Feb 2021 22:10:04 -0800 (PST)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id u9sm471245ejc.57.2021.02.09.22.10.02
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Feb 2021 22:10:02 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id i9so827418wmq.1
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Feb 2021 22:10:02 -0800 (PST)
X-Received: by 2002:a1c:107:: with SMTP id 7mr1346852wmb.28.1612937401698;
 Tue, 09 Feb 2021 22:10:01 -0800 (PST)
MIME-Version: 1.0
References: <20201209161510.31399-1-dafna.hirschfeld@collabora.com>
In-Reply-To: <20201209161510.31399-1-dafna.hirschfeld@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 10 Feb 2021 15:09:50 +0900
X-Gmail-Original-Message-ID: <CAAFQd5ChELzM8suj5SGZXLPQJgciAmx-chumTe3=g5VSo+Hzjg@mail.gmail.com>
Message-ID: <CAAFQd5ChELzM8suj5SGZXLPQJgciAmx-chumTe3=g5VSo+Hzjg@mail.gmail.com>
Subject: Re: [PATCH] media: rkisp1: rsz: crash fix when setting src format
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_011006_116506_2CA645D6 
X-CRM114-Status: GOOD (  23.73  )
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
Cc: Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 10, 2020 at 1:15 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
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
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index 813670ed9577..79deed8adcea 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -520,14 +520,15 @@ static void rkisp1_rsz_set_src_fmt(struct rkisp1_resizer *rsz,
>                                    struct v4l2_mbus_framefmt *format,
>                                    unsigned int which)
>  {
> -       const struct rkisp1_isp_mbus_info *mbus_info;
> -       struct v4l2_mbus_framefmt *src_fmt;
> +       const struct rkisp1_isp_mbus_info *sink_mbus_info;
> +       struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
>
> +       sink_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SINK, which);
>         src_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SRC, which);
> -       mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
> +       sink_mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>
>         /* for YUV formats, userspace can change the mbus code on the src pad if it is supported */
> -       if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
> +       if (sink_mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV &&
>             rkisp1_rsz_get_yuv_mbus_info(format->code))
>                 src_fmt->code = format->code;
>
> --
> 2.17.1
>

Gentle ping on this patch. I think it should also go to stable, as it
fixes a crash.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
