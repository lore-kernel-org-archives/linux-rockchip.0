Return-Path: <SRS0=cmcl=EQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EDDDC388F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2020 10:40:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C802206B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2020 10:40:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="P7WXRe1q";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ELLMJUYV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C802206B2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WbWlcugl25jul8HnHq18u1fBTO9q3SSw6zpXvC/FXtI=; b=P7WXRe1qDZSvQQa+5t+DZgk4x
	qIOns376cQkKNzJm7WB3WtMw8Ei3+P5Kce0MR+naTA1gfhOlRJ3upnqAVHZjrWCGNvz//y8OKYLAL
	dv1uLPQg0QJRE2KYt8kRufGfiYX/Ax8EdaZJVt0ogk1N03HX8E33fuj2+9SxB2pjZmvzB6PoZoPzg
	IFXPtG0hbMkQ2W4t0V+9c0UIMAye59pIPoeivNRmr0qe/drBLYnJLm3i0zMhRBBWlSpMye632PgLq
	U/Mf7XA7X/7W6QCJ+jfNq77JHI4Zt3cG2FcbOOwZcJt+UuNvJf2NOztc65WvXlhNPphhDjHl2wioE
	6DTxmUMYQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcR4b-0005g6-Jq; Tue, 10 Nov 2020 10:40:25 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcR4Y-0005ej-UT
 for linux-rockchip@lists.infradead.org; Tue, 10 Nov 2020 10:40:24 +0000
Received: by mail-ej1-x644.google.com with SMTP id f23so10183503ejk.2
 for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2020 02:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h1CiCaWNTDTWaZ9Bu49enQinQUFWYt7Tgp79S2fH2C4=;
 b=ELLMJUYViEjvWsM+mCbJHlfbYk54gs4RGAAc9PI6+oRdmmuOrgVidJ4GzKO7OO/2H/
 XZOe9aPCmYVVELkPMS6PDmTj4bTnD11Mw/BE6lrwrfc1XDaC4K50y8A+K+Z9FmdYjlri
 5/zDzpdxphlsnEng/97VAWFMkvmIMOzSMoL1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h1CiCaWNTDTWaZ9Bu49enQinQUFWYt7Tgp79S2fH2C4=;
 b=b4E0eKnunbCInI5iDpqrG1ymvP32GHnDdF3BigdAJA9rfL+7wioTfMiql69ZjwtQfm
 /YEAj8vC0itZOwFO64PzpeUR8+2jX5iRBNtbtrmfkgRJcqyy+XlqHk640L7NMU58aT2N
 RvVius09ssI2Z6SLLCCBdnFbJacAaABqUNj1Igpo5fQCwcOSrPFLOhRN5GRX4m90j7f5
 Ldy3f+NwQdK4o+kTLxLLHxrZeflH9I2pAhytQzleeIGIqy/TEC0Lo/8NuINnB1vihWrm
 PDU2RvlmpSGlQTmSBtom2eVH4prw50RSCqKjU3IODXqVQ7X+bmqIUzCvv1afY/xE7m3z
 y+5g==
X-Gm-Message-State: AOAM531R3Cv8pxx3oZewF0Wd3UtUTPIrmu8ni4btSnAwykGc5s05Cy5k
 y4OSsRfF0poahonlgKF1qlNyeoyFhjB2fyVs
X-Google-Smtp-Source: ABdhPJzFps9LZTxh46h3JEDG72iod4yVBn44IRTb7iQEXvUWbxoGACHv9JuuUg/b2teE27MAlYE4Pg==
X-Received: by 2002:a17:906:e20a:: with SMTP id
 gf10mr1784099ejb.518.1605004820036; 
 Tue, 10 Nov 2020 02:40:20 -0800 (PST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id a1sm10591399edk.52.2020.11.10.02.40.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Nov 2020 02:40:18 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id p1so12094630wrf.12
 for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2020 02:40:18 -0800 (PST)
X-Received: by 2002:adf:ed11:: with SMTP id a17mr8446143wro.197.1605004817647; 
 Tue, 10 Nov 2020 02:40:17 -0800 (PST)
MIME-Version: 1.0
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-7-dafna.hirschfeld@collabora.com>
 <20200925204222.GG3607091@chromium.org>
 <bebacafe-11bb-5d9a-f889-4d16bb5d1817@collabora.com>
 <CAAFQd5BeWOYadUU8nBtFpaA5Eb2T0qFk0kDVf9eYmYzXJj+sZA@mail.gmail.com>
 <d6b893e1-1177-ba6d-0499-a3e45f79503b@collabora.com>
In-Reply-To: <d6b893e1-1177-ba6d-0499-a3e45f79503b@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 10 Nov 2020 19:40:06 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BWAuzRMCDhYGAtBW-J61k81a-J-MXWgC7fD7kEne4sTg@mail.gmail.com>
Message-ID: <CAAFQd5BWAuzRMCDhYGAtBW-J61k81a-J-MXWgC7fD7kEne4sTg@mail.gmail.com>
Subject: Re: [PATCH v3 06/12] media: staging: rkisp1: remove atomic operations
 for frame sequence
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201110_054023_027391_1B7D7DD8 
X-CRM114-Status: GOOD (  42.31  )
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
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Helen,

On Fri, Nov 6, 2020 at 11:43 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Hi Tomasz,
>
> (sorry for not had replied this earlier)
>
> On 10/2/20 12:30 PM, Tomasz Figa wrote:
> > On Fri, Oct 2, 2020 at 11:16 AM Dafna Hirschfeld
> > <dafna.hirschfeld@collabora.com> wrote:
> >>
> >> Hi,
> >>
> >> Am 25.09.20 um 22:42 schrieb Tomasz Figa:
> >>> Hi Dafna,
> >>>
> >>> On Tue, Sep 22, 2020 at 01:33:56PM +0200, Dafna Hirschfeld wrote:
> >>>> The isp.frame_sequence is now read only from the irq handlers
> >>>> that are all fired from the same interrupt, so there is not need
> >>>> for atomic operation.
> >>>> In addition, the frame seq incrementation is moved from
> >>>> rkisp1_isp_queue_event_sof to rkisp1_isp_isr to make the code
> >>>> clearer and the incorrect inline comment is removed.
> >>>>
> >>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>>> Acked-by: Helen Koike <helen.koike@collabora.com>
> >>>>
> >>>> ---
> >>>> changes since v2:
> >>>> add a closing "}" to if condition
> >>>> remove usless inline comment
> >>>> ---
> >>>>   drivers/staging/media/rkisp1/rkisp1-capture.c |  2 +-
> >>>>   drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
> >>>>   drivers/staging/media/rkisp1/rkisp1-isp.c     | 16 +++++-----------
> >>>>   drivers/staging/media/rkisp1/rkisp1-params.c  |  2 +-
> >>>>   drivers/staging/media/rkisp1/rkisp1-stats.c   |  3 +--
> >>>>   5 files changed, 9 insertions(+), 16 deletions(-)
> >>>>
> >>>
> >>> Thank you for the patch. Please see my comments inline.
> >>>
> >>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> >>>> index 0632582a95b4..1c762a369b63 100644
> >>>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> >>>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> >>>> @@ -632,7 +632,7 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
> >>>>      curr_buf = cap->buf.curr;
> >>>>
> >>>>      if (curr_buf) {
> >>>> -            curr_buf->vb.sequence = atomic_read(&isp->frame_sequence);
> >>>> +            curr_buf->vb.sequence = isp->frame_sequence;
> >>>
> >>> I wonder if with higher resolutions, let's say full 5 Mpix, and/or some
> >>> memory-intensive system load, like video encoding and graphics rendering,
> >>> the DMA wouldn't take enough time to have the MI_FRAME interrupt fire after
> >>> the V_START for the next frame.
> >>>
> >>> I recall you did some testing back in time [1], showing that the two are
> >>> interleaved. Do you remember what CAPTURE resolution was it?
> >>
> >> I ran the testing again, I added a patch to allow streaming simultanously from
> >> both pathes: https://gitlab.collabora.com/dafna/linux/-/commit/8df0d15567b27cb88674fbbe33d1906c3c5a91da
> >> Then I ran two tests:
> >> stream simultaneously with 3280x2464 frames from the camera, and then downscaling them to 1920x1080 on selfpath, this is http://ix.io/2zoP
> >> stream simultaneously with 640x480 frames from the camera, and upscaling them to 1920x1080 on the selfpath. this is http://ix.io/2zoR
> >>
> >> the pixelformat for both is 422P.
> >> I don't know how meaningful and useful is to test it on the rockchip-pi4 board, I only use it with a serial console.
> >> The functionality can probably only be tested on the scarlet.
> >
> > Okay, thanks. It looks like there is always plenty of time margin on
> > the hardware side and if the interrupt handling is delayed for a short
> > time and both are handled by the same handler call, it's also going to
> > be handled fine because of rkisp1_capture_isr() being called before
> > rkisp1_isp_isr().
> >
> > By the way, do we need the MIPI interrupts every frame? Perhaps we
> > could enable the RKISP1_CIF_MIPI_ERR_CTRL* interrupts only and then,
> > when we get an error, we disable it and enable
> > RKISP1_CIF_MIPI_FRAME_END, which would then re-enable
> > RKISP1_CIF_MIPI_ERR_CTRL* and disable itself? WDYT?
>
> The driver already do this in a sense, it disables these interrupts on
> the first MIPI error and re-enable them on RKISP1_CIF_MIPI_FRAME_END.

Yes, it disables the ERR interrupts, but doesn't it keep the FRAME_END
interrupt enabled all the time? (At least that seems to be the case in
your traces.) Is it necessary?

Best regards,
Tomasz

>
> Please check:
>
> https://git.linuxtv.org/media_tree.git/tree/drivers/staging/media/rkisp1/rkisp1-isp.c#n1069
>
> For convenience:
>
> void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
> {
>         u32 val, status;
>
>         status = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_MIS);
>         if (!status)
>                 return;
>
>         rkisp1_write(rkisp1, status, RKISP1_CIF_MIPI_ICR);
>
>         /*
>          * Disable DPHY errctrl interrupt, because this dphy
>          * erctrl signal is asserted until the next changes
>          * of line state. This time is may be too long and cpu
>          * is hold in this interrupt.
>          */
>         if (status & RKISP1_CIF_MIPI_ERR_CTRL(0x0f)) {
>                 val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_IMSC);
>                 rkisp1_write(rkisp1, val & ~RKISP1_CIF_MIPI_ERR_CTRL(0x0f),
>                              RKISP1_CIF_MIPI_IMSC);
>                 rkisp1->isp.is_dphy_errctrl_disabled = true;
>         }
>
>         /*
>          * Enable DPHY errctrl interrupt again, if mipi have receive
>          * the whole frame without any error.
>          */
>         if (status == RKISP1_CIF_MIPI_FRAME_END) {
>                 /*
>                  * Enable DPHY errctrl interrupt again, if mipi have receive
>                  * the whole frame without any error.
>                  */
>                 if (rkisp1->isp.is_dphy_errctrl_disabled) {
>                         val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_IMSC);
>                         val |= RKISP1_CIF_MIPI_ERR_CTRL(0x0f);
>                         rkisp1_write(rkisp1, val, RKISP1_CIF_MIPI_IMSC);
>                         rkisp1->isp.is_dphy_errctrl_disabled = false;
>                 }
>         } else {
>                 rkisp1->debug.mipi_error++;
>         }
> }
>
> Regards,
> Helen
>
> >
> > Best regards,
> > Tomasz
> >
> >>
> >> Thanks,
> >> Dafna
> >>
> >>
> >>
> >>>
> >>>>              curr_buf->vb.vb2_buf.timestamp = ktime_get_boottime_ns();
> >>>>              curr_buf->vb.field = V4L2_FIELD_NONE;
> >>>>              vb2_buffer_done(&curr_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> >>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> >>>> index 232bee92d0eb..51c92a251ea5 100644
> >>>> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> >>>> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> >>>> @@ -131,7 +131,7 @@ struct rkisp1_isp {
> >>>>      const struct rkisp1_isp_mbus_info *src_fmt;
> >>>>      struct mutex ops_lock; /* serialize the subdevice ops */
> >>>>      bool is_dphy_errctrl_disabled;
> >>>> -    atomic_t frame_sequence;
> >>>> +    __u32 frame_sequence;
> >>>
> >>> nit: The __ prefixed types are defined for the UAPI to avoid covering userspace
> >>> types. For kernel types please just use the plain u32.
> >>>
> >>> Best regards,
> >>> Tomasz
> >>>
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
