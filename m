Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0517C4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 12:02:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DC332389F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 12:02:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2feZzNFK";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="A8UOtGFo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4DC332389F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rLwvzbMfGv5M6dXvqRhmQAictUQ20xcF1MjgLppxrPE=; b=2feZzNFKXY10FIGIDiF/Pb63P
	QguFURqtQm5gSjDm2Lu8GqO6c5luqp7f9HTVFzDxST9JAs4M66nE2jrjxHjI8XobARSLLgUIpwYzW
	G2sBcwJh664ZtCRi8CMCS3jz6F4DQpg0rtrp/qwVR9Szb2MbpupmxLyFNCJfN9/2gmLRlUZcuqmgf
	oJ+pvEMAJPsS1E35iT9m42ovM8L9VD7/Ng6e6LC46IlKZ9g8HyFiG/rdD3uBGzAu+MSDRNvokx8ag
	y7+/oywXrxbB4x3hW/F0iqMsNlaFpSOVCvz8476FDYGYPH63h0AlweRRi/NESdEL/rQz1ZC7075qg
	umrPVGGVw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMVNi-0000IF-AA; Sun, 27 Sep 2020 12:02:18 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMVNg-0000Hf-K3
 for linux-rockchip@lists.infradead.org; Sun, 27 Sep 2020 12:02:17 +0000
Received: by mail-ej1-x641.google.com with SMTP id u21so4571689eja.2
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Sep 2020 05:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kMNZXCsFPJ5Yj9MinqhxrpNg+ne7y9z3VvRD3ob/tmI=;
 b=A8UOtGFozTIUewfXMpSBinX97KX132eg0eXOdSYcijKTcVD14qPO3fOQcJoqsHqEzn
 f2WJhBNkS4WyS2JGJWdqkY7uYm1/YUiQJ8qTzbTG0IwhNfBCH8W7x7mhFVZ6kQvg6QQG
 5VWZkUiBkiKLPaRXcJ4bP0s/1WXKHfE6nlkpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kMNZXCsFPJ5Yj9MinqhxrpNg+ne7y9z3VvRD3ob/tmI=;
 b=rp1gt6yA39w447Srn3JfbuJe6YzLc+haz4nhpIENEu0lg++V05drwMMB5pypvppt90
 FkwpKZIlVKFrcNlYlHoHnRFgqrHTWYMx1jNxScDGDFh/s5UsxJTgR8HnpSoM5DKWbZ/Y
 QAWQNrChB4CpdOEoMTMd0W/4epLQFnwqtNpqrzj2sdI/7mQ+/DyQrDV/c+ArtmsW/e+g
 tkkhwj31xC5uVl22QeO+G51b5TSFz/HzirDKRd5N1ayy4z8Ay4/1DZ8TZlz7Hh/45TlS
 f04a/CxPn1HxCm/avycmH816lwgH8uEljZ2XFNYrFD/jLp/31qSCnCbNIZarQDJj9hsL
 pf0Q==
X-Gm-Message-State: AOAM530OBQUbXmYMAMW0L8myGOGeJ5yNRJGK8C6gODa0adP5wGiJtjJc
 CsvV+rDsedJNwotshcdFjEw3hOaMpcSFKA==
X-Google-Smtp-Source: ABdhPJyZNIgFI3DFapSUOotw1yUjXXqcI1Ioh8NCyM69/CedfvUyF+mCicxkXtc0CmojSWlgi/wVcg==
X-Received: by 2002:a17:906:934e:: with SMTP id
 p14mr10773356ejw.348.1601208134040; 
 Sun, 27 Sep 2020 05:02:14 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id i26sm6950410edq.47.2020.09.27.05.02.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Sep 2020 05:02:13 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id c18so8619758wrm.9
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Sep 2020 05:02:12 -0700 (PDT)
X-Received: by 2002:a5d:6552:: with SMTP id z18mr13318065wrv.32.1601208132469; 
 Sun, 27 Sep 2020 05:02:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-3-dafna.hirschfeld@collabora.com>
 <20200926131708.GE3781977@chromium.org>
 <86b5262f-6bb3-7c02-f49e-cbe8edab3490@collabora.com>
In-Reply-To: <86b5262f-6bb3-7c02-f49e-cbe8edab3490@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sun, 27 Sep 2020 14:01:56 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CXv9EvqpoxG4JGHSVydK=XtHK3kRu9hxf1E6AQUN_3Ww@mail.gmail.com>
Message-ID: <CAAFQd5CXv9EvqpoxG4JGHSVydK=XtHK3kRu9hxf1E6AQUN_3Ww@mail.gmail.com>
Subject: Re: [PATCH v4 02/10] media: staging: rkisp1: cap: remove unsupported
 formats
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_080216_690582_135BB271 
X-CRM114-Status: GOOD (  24.49  )
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Sep 27, 2020 at 11:33 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> Hi,
>
> Am 26.09.20 um 15:17 schrieb Tomasz Figa:
> > Hi Dafna,
> >
> > On Tue, Sep 01, 2020 at 01:16:04PM +0200, Dafna Hirschfeld wrote:
> >> For Ycbcr packed formats only YUYV can be supported by
> >> the driver. This patch removes the other formats.
> >
> > I can see the driver already setting the
> > RKISP1_CIF_MI_XTD_FMT_CTRL_*_CB_CR_SWAP register according to the
> > uv_swap flag, but it currently does it so only if comp_planes is 2.
> > Wouldn't just doing the same if the number of planes is 1 fix the
> > support for at least the YVYU format?
>
> Hi, Laurent already suggested it and I found out it does not
> work, see: https://patchwork.kernel.org/patch/11471301/

I see, okay, thanks for double checking.

Best regards,
Tomasz

>
> Thanks,
> Dafna
>
> >
> > Best regards,
> > Tomasz
> >
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> Acked-by: Helen Koike <helen.koike@collabora.com>
> >> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >> ---
> >>   drivers/staging/media/rkisp1/rkisp1-capture.c | 17 -----------------
> >>   1 file changed, 17 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> >> index f4d5cc3e2f12..79195e74d995 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> >> @@ -88,13 +88,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
> >>              .fourcc = V4L2_PIX_FMT_YUYV,
> >>              .uv_swap = 0,
> >>              .write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> >> -    }, {
> >> -            .fourcc = V4L2_PIX_FMT_YVYU,
> >> -            .uv_swap = 1,
> >> -            .write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> >> -    }, {
> >> -            .fourcc = V4L2_PIX_FMT_VYUY,
> >> -            .write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> >>      }, {
> >>              .fourcc = V4L2_PIX_FMT_YUV422P,
> >>              .uv_swap = 0,
> >> @@ -197,16 +190,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
> >>              .uv_swap = 0,
> >>              .write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> >>              .output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> >> -    }, {
> >> -            .fourcc = V4L2_PIX_FMT_YVYU,
> >> -            .uv_swap = 1,
> >> -            .write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> >> -            .output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> >> -    }, {
> >> -            .fourcc = V4L2_PIX_FMT_VYUY,
> >> -            .uv_swap = 1,
> >> -            .write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> >> -            .output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> >>      }, {
> >>              .fourcc = V4L2_PIX_FMT_YUV422P,
> >>              .uv_swap = 0,
> >> --
> >> 2.17.1
> >>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
