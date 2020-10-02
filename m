Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35C33C4363C
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 15:30:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5731206DC
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 15:30:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YaykzVIv";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HF1LrcZ7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D5731206DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UxdT6/ZgggeD3OvqgspqiVi12VKaWcDDj/2duAuI4tY=; b=YaykzVIv1WYiaP5VNrKa3tzg9
	hbjlNZnnN9IdU38mjH4qPCf4/Ejl51ieq7HLAyEenq0T0ER/V9abTigOiplZTQT3jhPsCye0G3wOM
	bILdqjVW6sb0xEV+RGPCD4wvfovG0ojNb2WmXvpmlq1xA6zVGnraOijFnv4oSwQxtYcDPKPGJ9Nw5
	WiVMmS+YR7S9vpm7mZ0eAIuaDJlMbR+9fePEM3Nt449EQGjOANjCi9UDj5kQ+sgbHvibYlfIr+d3X
	8cW0Lz/BAsb7uek7Tc+MeiDobYA1/B0zZH3uQeGcndYlAdoCHLQhrgqDj2H7R7LkYFiAV9kK+6hAa
	LP/Eu0OMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kON1A-0003tM-V6; Fri, 02 Oct 2020 15:30:45 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kON17-0003rN-Ia
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 15:30:42 +0000
Received: by mail-ed1-x544.google.com with SMTP id n22so2073127edt.4
 for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2020 08:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M6QjC8wDXu6YbtNqxFL7ep0NA+hYSc+Cr6b4CxgP5co=;
 b=HF1LrcZ7OkwY9QvnWIPrwSYQnb1+XqjVXZP5W/LTB3F+pWVUNqSbS7JgGyZFbW+w+p
 RzLLn8mVxMqE7tUixlIzdWLM6tArkXqdfVMgLN8CTttoMjqpDC1I+foYbSUi76G+2tfR
 Jsx8HPcdzKP1dyVUa1Ya7oqkvnBFJPen/+f7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M6QjC8wDXu6YbtNqxFL7ep0NA+hYSc+Cr6b4CxgP5co=;
 b=mMPOmKp3IiQ0A7OUW1g6PBbFw/Vaqj4pTM9KKx4qs/BknCIDmot2ugMKInUmj/xLtz
 aSahyxiM94FcKianqZEWDCn2Bom+sRkd2o4lYLc3xbGPd2EVCLsuhdxavw9PYvKD8fXS
 2H0/7LK8UkxwIc0gUTU6bhownB/4CAPyzi0k0gs1U7TeVrCtLE/BxFGyEOMn9jIq8G7E
 1EsZuBxiiYymBbkAIdfbWJ1tFcSOZHlRZZpEicagNu8Kr8UFpyXNO6SvWFSY6lhdl+VW
 ZijmxqE6JKt1TTtPcqrFMhDEzT3kBvCfsyhmniOv0TLsmZsPG4F2zRERnV/zsFQj53qK
 Iwkg==
X-Gm-Message-State: AOAM533A4yhPsksYm1sKs49YbPMWEU9TBcVArPP26JYeie3eN/zHC8M1
 e6T6NE/liSd1O1AfcBRCXeoCNrbMwJmJ9A==
X-Google-Smtp-Source: ABdhPJxL3QDWZjbI7T2OEwmMIUzA1q9m9X6Qzi0iS15LnLUhryttcyW5U2WU5Z92Tx0mjOYWghiVxA==
X-Received: by 2002:aa7:dad4:: with SMTP id x20mr2938297eds.283.1601652638214; 
 Fri, 02 Oct 2020 08:30:38 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id bu23sm921412edb.69.2020.10.02.08.30.37
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 Oct 2020 08:30:37 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id k18so2181501wmj.5
 for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2020 08:30:37 -0700 (PDT)
X-Received: by 2002:a7b:cd05:: with SMTP id f5mr3507171wmj.116.1601652636571; 
 Fri, 02 Oct 2020 08:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-7-dafna.hirschfeld@collabora.com>
 <20200925204222.GG3607091@chromium.org>
 <bebacafe-11bb-5d9a-f889-4d16bb5d1817@collabora.com>
In-Reply-To: <bebacafe-11bb-5d9a-f889-4d16bb5d1817@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 2 Oct 2020 17:30:24 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BeWOYadUU8nBtFpaA5Eb2T0qFk0kDVf9eYmYzXJj+sZA@mail.gmail.com>
Message-ID: <CAAFQd5BeWOYadUU8nBtFpaA5Eb2T0qFk0kDVf9eYmYzXJj+sZA@mail.gmail.com>
Subject: Re: [PATCH v3 06/12] media: staging: rkisp1: remove atomic operations
 for frame sequence
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_113041_658429_CFD0588B 
X-CRM114-Status: GOOD (  35.74  )
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

On Fri, Oct 2, 2020 at 11:16 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> Hi,
>
> Am 25.09.20 um 22:42 schrieb Tomasz Figa:
> > Hi Dafna,
> >
> > On Tue, Sep 22, 2020 at 01:33:56PM +0200, Dafna Hirschfeld wrote:
> >> The isp.frame_sequence is now read only from the irq handlers
> >> that are all fired from the same interrupt, so there is not need
> >> for atomic operation.
> >> In addition, the frame seq incrementation is moved from
> >> rkisp1_isp_queue_event_sof to rkisp1_isp_isr to make the code
> >> clearer and the incorrect inline comment is removed.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> Acked-by: Helen Koike <helen.koike@collabora.com>
> >>
> >> ---
> >> changes since v2:
> >> add a closing "}" to if condition
> >> remove usless inline comment
> >> ---
> >>   drivers/staging/media/rkisp1/rkisp1-capture.c |  2 +-
> >>   drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
> >>   drivers/staging/media/rkisp1/rkisp1-isp.c     | 16 +++++-----------
> >>   drivers/staging/media/rkisp1/rkisp1-params.c  |  2 +-
> >>   drivers/staging/media/rkisp1/rkisp1-stats.c   |  3 +--
> >>   5 files changed, 9 insertions(+), 16 deletions(-)
> >>
> >
> > Thank you for the patch. Please see my comments inline.
> >
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> >> index 0632582a95b4..1c762a369b63 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> >> @@ -632,7 +632,7 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
> >>      curr_buf = cap->buf.curr;
> >>
> >>      if (curr_buf) {
> >> -            curr_buf->vb.sequence = atomic_read(&isp->frame_sequence);
> >> +            curr_buf->vb.sequence = isp->frame_sequence;
> >
> > I wonder if with higher resolutions, let's say full 5 Mpix, and/or some
> > memory-intensive system load, like video encoding and graphics rendering,
> > the DMA wouldn't take enough time to have the MI_FRAME interrupt fire after
> > the V_START for the next frame.
> >
> > I recall you did some testing back in time [1], showing that the two are
> > interleaved. Do you remember what CAPTURE resolution was it?
>
> I ran the testing again, I added a patch to allow streaming simultanously from
> both pathes: https://gitlab.collabora.com/dafna/linux/-/commit/8df0d15567b27cb88674fbbe33d1906c3c5a91da
> Then I ran two tests:
> stream simultaneously with 3280x2464 frames from the camera, and then downscaling them to 1920x1080 on selfpath, this is http://ix.io/2zoP
> stream simultaneously with 640x480 frames from the camera, and upscaling them to 1920x1080 on the selfpath. this is http://ix.io/2zoR
>
> the pixelformat for both is 422P.
> I don't know how meaningful and useful is to test it on the rockchip-pi4 board, I only use it with a serial console.
> The functionality can probably only be tested on the scarlet.

Okay, thanks. It looks like there is always plenty of time margin on
the hardware side and if the interrupt handling is delayed for a short
time and both are handled by the same handler call, it's also going to
be handled fine because of rkisp1_capture_isr() being called before
rkisp1_isp_isr().

By the way, do we need the MIPI interrupts every frame? Perhaps we
could enable the RKISP1_CIF_MIPI_ERR_CTRL* interrupts only and then,
when we get an error, we disable it and enable
RKISP1_CIF_MIPI_FRAME_END, which would then re-enable
RKISP1_CIF_MIPI_ERR_CTRL* and disable itself? WDYT?

Best regards,
Tomasz

>
> Thanks,
> Dafna
>
>
>
> >
> >>              curr_buf->vb.vb2_buf.timestamp = ktime_get_boottime_ns();
> >>              curr_buf->vb.field = V4L2_FIELD_NONE;
> >>              vb2_buffer_done(&curr_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> >> index 232bee92d0eb..51c92a251ea5 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> >> @@ -131,7 +131,7 @@ struct rkisp1_isp {
> >>      const struct rkisp1_isp_mbus_info *src_fmt;
> >>      struct mutex ops_lock; /* serialize the subdevice ops */
> >>      bool is_dphy_errctrl_disabled;
> >> -    atomic_t frame_sequence;
> >> +    __u32 frame_sequence;
> >
> > nit: The __ prefixed types are defined for the UAPI to avoid covering userspace
> > types. For kernel types please just use the plain u32.
> >
> > Best regards,
> > Tomasz
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
