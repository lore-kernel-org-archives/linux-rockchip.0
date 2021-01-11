Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696B7C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 12:22:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CA3A22257
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 12:22:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CA3A22257
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=knuj6NNc5fdRu6iZJ7jcPAJ29tEZvUdrC2xydIb6itw=; b=yDIKisKdZh0BY9QjQEAhqqkeO
	DeWkym9UTRth6jBOcqIdUXIfhcoZaO0pxBujGDrGw4af2fs0bcy8p9Z5MeQdaUztXN+ZmQYt3DHSm
	Ij8v3qtOhseIwehjzEVIEbXrjFUk+rCDBw7PKuZiSEDHgxI7fCtjOi2MDjmzyCGwUcphGG+AJ61SN
	4We96ARjyiChf+x5/pK/MP5LOghT2VZ/GQheyNSDVi/jbtNfSZhSqptknu16G6EedMpimDS8xIMx2
	NjlQblOTU0Q8k0Y6I7p0RVet6vNLvTZFpDF9vsOc8W/G4HqcpInchOO6cmGhOh4gjenOCPEnmMBIo
	EF63Y8HEA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kywDL-0000x7-Sp; Mon, 11 Jan 2021 12:22:27 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kywDH-0000vX-1l
 for linux-rockchip@lists.infradead.org; Mon, 11 Jan 2021 12:22:25 +0000
Received: by mail-io1-xd2a.google.com with SMTP id r9so17536461ioo.7
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Jan 2021 04:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E3TObj0DpnQ+C6+diTMVXIRK8fmCTHUzn1Fp+y0pweE=;
 b=ZGDMj2yXM/sj19/ajRO5Z3wQwVep6XJ3i5tFwpvUIEBz7202mNkOILo5acwjn/Q/On
 p1HhQRcnCM8uvdlT6VFHgeQcnbTfbQATmu+he4Vn4HBQpgZyKHgW6pyoSdH+TdDoeR53
 q2Vf5u0VpfCoo4pE/BEzVZLGebm7L0rtZiGeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3TObj0DpnQ+C6+diTMVXIRK8fmCTHUzn1Fp+y0pweE=;
 b=eiiPyOotCsKcNDol5yd5l8DvuEyf2vVdOPvzyvFUezeSddkPARJRCHvzaBMjTWemBo
 ohfA5VwLURbZBNlNqqpiqgTu8OVVvgMcYkLufCcGx01arxwS7UjGJf2422wj5e2wQVdl
 QMpU57zBUv+IPT9l/xRc9b7nHxK+uz3i0/Zn2etUUesOZgCOHBguX9OPUglgj+A7t6r9
 Mz/ty39FAFXSzeGaMBBBu90XMg3uUVsn+2tGYg7VjUR03YR68MoCY7yg5vWCj2O+xSr+
 g0Z5Ok1hiHWK4nS38fQf3tnrrdiwThmdnOvpE8+rBoMVvruIWJiUiUKqk3SRt8xgb5ow
 bjeQ==
X-Gm-Message-State: AOAM532+I/u6/CmcWK7wlnUKuQY58POpaXph6xSUEERj3yhmydOsv2xG
 Bc3iUPBd5YIVhwgJfe6qfKSwz8iWMJQJepq4
X-Google-Smtp-Source: ABdhPJwbYY4x/tTRTIa/Tq+X7Wo+l9OZIjjXMS/ygJhgJyFI+zxCyFMKatY4mbJpDGEgeY9GV/jZwA==
X-Received: by 2002:a05:6602:120f:: with SMTP id
 y15mr13993422iot.109.1610367739722; 
 Mon, 11 Jan 2021 04:22:19 -0800 (PST)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com.
 [209.85.166.49])
 by smtp.gmail.com with ESMTPSA id t2sm16401808ili.31.2021.01.11.04.22.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Jan 2021 04:22:18 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id p187so17549863iod.4
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Jan 2021 04:22:18 -0800 (PST)
X-Received: by 2002:a6b:c414:: with SMTP id y20mr14242726ioa.150.1610367737624; 
 Mon, 11 Jan 2021 04:22:17 -0800 (PST)
MIME-Version: 1.0
References: <20210111113529.45488-1-ribalda@chromium.org>
 <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
 <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
In-Reply-To: <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 11 Jan 2021 13:22:06 +0100
X-Gmail-Original-Message-ID: <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
Message-ID: <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
Subject: Re: [PATCH] hantro: Format IOCTLs compliance fixes
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_072223_163800_A6B8C0C6 
X-CRM114-Status: GOOD (  24.88  )
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

On Mon, Jan 11, 2021 at 12:55 PM Ricardo Ribalda <ribalda@chromium.org> wrote:
>
> Hi Ezequiel
>
> On Mon, Jan 11, 2021 at 12:48 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >
> > Hi Ricardo,
> >
> > On Mon, 2021-01-11 at 12:35 +0100, Ricardo Ribalda wrote:
> > > Clear the reserved fields.
> > >
> > > Fixes:
> > >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > > test VIDIOC_TRY_FMT: FAIL
> > >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > > test VIDIOC_S_FMT: FAIL
> > >
> > > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > > ---
> > >  drivers/staging/media/hantro/hantro_v4l2.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > > index b668a82d40ad..9b384fbffc93 100644
> > > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > > @@ -239,6 +239,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> > >         const struct hantro_fmt *fmt, *vpu_fmt;
> > >         bool capture = V4L2_TYPE_IS_CAPTURE(type);
> > >         bool coded;
> > > +       int i;
> > >
> > >         coded = capture == ctx->is_encoder;
> > >
> > > @@ -293,6 +294,10 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> > >                         pix_mp->width * pix_mp->height * fmt->max_depth;
> > >         }
> > >
> > > +       for (i = 0; i < pix_mp->num_planes; i++)
> > > +               memset(pix_mp->plane_fmt[i].reserved, 0,
> > > +                      sizeof(pix_mp->plane_fmt[i].reserved));
> > > +
> >
> > This looks like something that should be handled at the core,
> > probably in drivers/media/v4l2-core/v4l2-ioctl.c::v4l_try_fmt().
>
> The core does clear the reserved field from v4l2_pix_format_mplane,

My bad, It is also clearing the per plane reserved field. I was
testing in an old kernel.

The grep it is still valid though. We can remove all the memsets in the drivers.

> but not the reserved field for every plane. I can try to add it to the
> core as well. At least these drivers have code duplication:



>
> git grep reserved | grep memset | grep plane_fmt
> drivers/media/pci/intel/ipu3/ipu3-cio2.c:
> memset(mpix->plane_fmt[0].reserved, 0,
> drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c:
> memset(pix_mp->plane_fmt[i].reserved, 0,
> drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c:
> memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
> drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
> memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
> drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
> memset(&(pix->plane_fmt[i].reserved[0]), 0x0,
> drivers/media/platform/rcar_fdp1.c:
> memset(pix->plane_fmt[i].reserved, 0,
> drivers/media/platform/rcar_fdp1.c:
> memset(pix->plane_fmt[2].reserved, 0,
> drivers/media/platform/rcar_jpu.c:
> memset(pix->plane_fmt[0].reserved, 0,
> drivers/media/platform/rcar_jpu.c:
> memset(pix->plane_fmt[i].reserved, 0,
> drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c:
> memset(pix->plane_fmt[i].reserved, 0,
> drivers/media/platform/ti-vpe/vpe.c:
> memset(plane_fmt->reserved, 0, sizeof(plane_fmt->reserved));
> drivers/media/test-drivers/vicodec/vicodec-core.c:
> memset(pix_mp->plane_fmt[0].reserved, 0,
> drivers/staging/media/hantro/hantro_v4l2.c:
> memset(pix_mp->plane_fmt[i].reserved, 0,
> drivers/staging/media/ipu3/ipu3-v4l2.c: memset(pixm->plane_fmt[0].reserved, 0,
>
> >
> > Thanks,
> > Ezequiel
> >
>
>
> --
> Ricardo Ribalda



-- 
Ricardo Ribalda

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
