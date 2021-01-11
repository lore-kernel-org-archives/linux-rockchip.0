Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86AC5C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 11:56:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2267A224BD
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 11:56:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2267A224BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C17cP6xVO8u1aSg3gUwz44TrwPtNiW64lv2Z6JwW3JU=; b=hh6td/z0YYhTDcHtMr3hn44hS
	szX0zL43vYYXmitw8QEOsrUY8MvfJPEHyvRvQDzP4qOBcbTKIpT+HxFzQSAOp6Fa2VBdJx1+YEKSS
	9aXpObUFLFoj5JDNmRgsO9r2TGtCjUjbCBPJUubib6m3YZr8YlMXrm/62eBoxRGcA2w5abBKAGgNX
	XYrJrsiEjEn0w/v8QNIv4tn+xVFHR4wSvlPNihv8c1/+fG70vsaYksJZBtfFtO9700Co73RT2IFCe
	qkL3gsCHMnH7xZvu4x2baWLdgX6hu0FdFvINsxjKedd8pJ+dOndlK8hUiy8DmvYfdIikB4rI5K/Xn
	jbSvgszwA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyvnt-0006p9-EB; Mon, 11 Jan 2021 11:56:09 +0000
Received: from mail-il1-x12f.google.com ([2607:f8b0:4864:20::12f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyvnq-0006oE-S6
 for linux-rockchip@lists.infradead.org; Mon, 11 Jan 2021 11:56:07 +0000
Received: by mail-il1-x12f.google.com with SMTP id h3so10325357ils.4
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Jan 2021 03:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uA3TKz8uECHG3k4yaFsUscxG5WEGEfU+DDgmBoAkS/o=;
 b=cIvAbCgayxCKoOYNityjL7wT9stWwPvV5eiCz7X38vD43GczvDqDpmuctteU9QyQ+e
 Km9UDE+qcaQ+wrWWNECGFkMSGJXhz5AW0uKH50716CeXLrfWfAe0i4OFHhFv79uQxpSy
 gnOsEH9u8HNzIAWUO1mhanlP45jDlmTwtKBbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uA3TKz8uECHG3k4yaFsUscxG5WEGEfU+DDgmBoAkS/o=;
 b=mANn3Y9r2o+DFgMDjU3OIKp7lAMtdsm5BmR74LB7L4rKszEplkWIWvLL6/2XOt35xk
 q4jrxZfIlOKW2vV1NM7sFFYtfSWP1Ay0XgsfigAhTMKvS5kRO74ODHreG+ZRyub82JYA
 sZpThhtiBR/Lq3w8uAyEzBxapui8gDz/aSYJzaD4Ozr3nDNk6puGjoRYdK5FsGVGGq5J
 fdz2psN2RfIr3EYOaJhKrsMA+1BDp0vmIsFwCIoxT/kvaWZQD0BuMchKJtVhi5//GUOe
 QnOaxL0vcHsm+LQG33e/tZ+jLUClDng+uTVjfKMhqUvRJfSMoH2PyRytBOWd9LnOnNAH
 1qew==
X-Gm-Message-State: AOAM532q68TOg1k4Ne7/6ShxQiTy47p4ik9LxZhn1ov8NkrH95ig+mp4
 Z1YVZYwMaqGUDYR0F8UDbECnyTeCz8vQQA==
X-Google-Smtp-Source: ABdhPJzAVdf1rgRCF9VoO0y59byJvK4KACLIx87cJDe9CQb6A3eHOCOp6us6/m8PGHGe8QOLQio2FQ==
X-Received: by 2002:a05:6e02:e45:: with SMTP id
 l5mr14858788ilk.294.1610366164340; 
 Mon, 11 Jan 2021 03:56:04 -0800 (PST)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com.
 [209.85.166.42])
 by smtp.gmail.com with ESMTPSA id b6sm14203884ilv.79.2021.01.11.03.56.03
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Jan 2021 03:56:03 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id d9so17497422iob.6
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Jan 2021 03:56:03 -0800 (PST)
X-Received: by 2002:a02:c042:: with SMTP id u2mr13813149jam.32.1610366162852; 
 Mon, 11 Jan 2021 03:56:02 -0800 (PST)
MIME-Version: 1.0
References: <20210111113529.45488-1-ribalda@chromium.org>
 <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
In-Reply-To: <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 11 Jan 2021 12:55:52 +0100
X-Gmail-Original-Message-ID: <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
Message-ID: <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
Subject: Re: [PATCH] hantro: Format IOCTLs compliance fixes
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_065606_963647_7CFC9212 
X-CRM114-Status: GOOD (  22.60  )
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Ezequiel

On Mon, Jan 11, 2021 at 12:48 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi Ricardo,
>
> On Mon, 2021-01-11 at 12:35 +0100, Ricardo Ribalda wrote:
> > Clear the reserved fields.
> >
> > Fixes:
> >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > test VIDIOC_TRY_FMT: FAIL
> >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > test VIDIOC_S_FMT: FAIL
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/staging/media/hantro/hantro_v4l2.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > index b668a82d40ad..9b384fbffc93 100644
> > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > @@ -239,6 +239,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> >         const struct hantro_fmt *fmt, *vpu_fmt;
> >         bool capture = V4L2_TYPE_IS_CAPTURE(type);
> >         bool coded;
> > +       int i;
> >
> >         coded = capture == ctx->is_encoder;
> >
> > @@ -293,6 +294,10 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> >                         pix_mp->width * pix_mp->height * fmt->max_depth;
> >         }
> >
> > +       for (i = 0; i < pix_mp->num_planes; i++)
> > +               memset(pix_mp->plane_fmt[i].reserved, 0,
> > +                      sizeof(pix_mp->plane_fmt[i].reserved));
> > +
>
> This looks like something that should be handled at the core,
> probably in drivers/media/v4l2-core/v4l2-ioctl.c::v4l_try_fmt().

The core does clear the reserved field from v4l2_pix_format_mplane,
but not the reserved field for every plane. I can try to add it to the
core as well. At least these drivers have code duplication:

git grep reserved | grep memset | grep plane_fmt
drivers/media/pci/intel/ipu3/ipu3-cio2.c:
memset(mpix->plane_fmt[0].reserved, 0,
drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c:
memset(pix_mp->plane_fmt[i].reserved, 0,
drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c:
memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
memset(&(pix->plane_fmt[i].reserved[0]), 0x0,
drivers/media/platform/rcar_fdp1.c:
memset(pix->plane_fmt[i].reserved, 0,
drivers/media/platform/rcar_fdp1.c:
memset(pix->plane_fmt[2].reserved, 0,
drivers/media/platform/rcar_jpu.c:
memset(pix->plane_fmt[0].reserved, 0,
drivers/media/platform/rcar_jpu.c:
memset(pix->plane_fmt[i].reserved, 0,
drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c:
memset(pix->plane_fmt[i].reserved, 0,
drivers/media/platform/ti-vpe/vpe.c:
memset(plane_fmt->reserved, 0, sizeof(plane_fmt->reserved));
drivers/media/test-drivers/vicodec/vicodec-core.c:
memset(pix_mp->plane_fmt[0].reserved, 0,
drivers/staging/media/hantro/hantro_v4l2.c:
memset(pix_mp->plane_fmt[i].reserved, 0,
drivers/staging/media/ipu3/ipu3-v4l2.c: memset(pixm->plane_fmt[0].reserved, 0,

>
> Thanks,
> Ezequiel
>


-- 
Ricardo Ribalda

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
