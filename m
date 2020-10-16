Return-Path: <SRS0=QPul=DX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC618C433E7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 14:53:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2720320874
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 14:53:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jyK/b549";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hlcWzha/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2720320874
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5HmLcKtlcNrfX4sgdM4hgw0ppXVzpz0lSVgCU37KVjM=; b=jyK/b549Mzm+xAQp+fRd7ULJ9
	iKNLcK7WfJTCsdZJfJIQW0HiFkzPSWbVlsjzW6t0SJlP81SeigMDat1W9CMsqUFipi9onW9zl1Rx3
	oWfGxjw9eSm7DD7nK89h9nnXyUapwfA2OoQrioHYYMh9KxirOqqaiF3z6VGfEdvesOTaUZYYl24AK
	2gSt65AqJeR+dqKlXYLeTI87HGre9D8s6Dowzcpwhys2fxqZoFleSesbiFUL3QbKQVxLURX5LAWdq
	NKP8oyao5FDeiOIrlySdWtrtPCkPmBOLHIjzWeWTrlMGT/8pt8Q1L+X9vczPXV2eAdCCuiJzrDc5E
	mE/aXMU5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kTR6l-0003An-OD; Fri, 16 Oct 2020 14:53:27 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTR6i-0003AH-E7
 for linux-rockchip@lists.infradead.org; Fri, 16 Oct 2020 14:53:25 +0000
Received: by mail-ej1-x644.google.com with SMTP id h24so3575651ejg.9
 for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2020 07:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JbcxjXmky0ZVQym5aCWYX3Osbuks/NOgNftBZgZ9Csk=;
 b=hlcWzha/+Oc8NDyB60ArQltW+/tTS8Fjn/mQpq1Wz9D3jC2RbaURqTddcw4vdD19JO
 0KjZMSXruF9wuBHm8meYOzM6XKtk7Zzj+qjiLpaW0EwUlu6G2TyH1WwmCpQjhS/AhQhz
 SGuJgrvu1MxYOmk5UzK3pZolrY1GDAA04lnCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JbcxjXmky0ZVQym5aCWYX3Osbuks/NOgNftBZgZ9Csk=;
 b=DcfS0K1P9ck0hWIQHKm+4oiV88YiqnbgtjsBpCVBkYuENmzelYjdapujNBRcPKtrzj
 uBYobXaELmGOSuLvUZ5Bi8yGqNz8+FSFiJUNH/0u8BEPQoFewm+wIzMOqU9T6Wese5Y4
 fOKqsH+8dGSGRxwsdo5ajHacCKThDiR0kgCDHpdcRD4Ds8lW+Ou5Y0u38Ft64qPFs6DV
 WUYHJiHWYfe1gSGGGO1wrbMDr4RgXcCfQMDr6CymwycYEhSQucuSZADR8FM4X0gojDwc
 e2VgcnPReSvaYXUIhWetkhEOD0UvPNrNTrqnJTnw/+LhU76DOUL3i0SXvEDN75Mgw5jk
 hP4Q==
X-Gm-Message-State: AOAM533lXCO5XSu4vyof+vOaRy9YLnUxViEd7ePKBOnvZ3yGu8cyplgI
 sOkLTQshlykS8h3I4nj77Ojb3d/XJ4ShOQ==
X-Google-Smtp-Source: ABdhPJxjcVUF9rHO3hztYYJFX21e3pdxldU+6buEbEoqRi4Ndz8rC6u/4fJRcwKi4DikQF7hhfiC6w==
X-Received: by 2002:a17:906:e10e:: with SMTP id
 gj14mr4333834ejb.134.1602860000651; 
 Fri, 16 Oct 2020 07:53:20 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id b4sm1876218eja.3.2020.10.16.07.53.19
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Oct 2020 07:53:19 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id q5so3289176wmq.0
 for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2020 07:53:19 -0700 (PDT)
X-Received: by 2002:a1c:8057:: with SMTP id b84mr4150078wmd.116.1602859998763; 
 Fri, 16 Oct 2020 07:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <20201015195746.264722-1-helen.koike@collabora.com>
 <8b31c5a3-9b01-9536-384a-b06d9a0a2e1a@collabora.com>
In-Reply-To: <8b31c5a3-9b01-9536-384a-b06d9a0a2e1a@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 16 Oct 2020 16:53:07 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CBBgrr2MckWua4XiM8paydevVkckfhHibTs-hVhFpWiQ@mail.gmail.com>
Message-ID: <CAAFQd5CBBgrr2MckWua4XiM8paydevVkckfhHibTs-hVhFpWiQ@mail.gmail.com>
Subject: Re: [PATCH] media: staging: rkisp1: cap: refactor enable/disable
 stream to allow multistreaming
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201016_105324_512381_3B6A78FD 
X-CRM114-Status: GOOD (  48.02  )
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Oct 16, 2020 at 4:28 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> Hi,
>
> Am 15.10.20 um 21:57 schrieb Helen Koike:
> > Allow streaming from self picture path and main picture path at the same
> > time.
> >
> > Take care for s_stream() callbacks to not be called twice.
> > When starting a stream, s_stream(true) shouldn't be called for the isp
> > and the sensor if the other stream is already enabled (since it was
> > already called).
> > When stopping a stream, s_stream(false) shouldn't be called for isp and
> > the sensor if the other stream is still enabled.
> >
> > Remove the callback function scheme for navigating through the topology,
> > simplifying the code, improving readability, while calling
> > media_pipeline_{start,stop}() in the right order.
> >
> > Remove multistreaming item from the TODO list.
> >
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >
> > ---
> > Hello,
> >
> > Since we didn't reach an agreement on the helpers in the core[1], I'm
> > sending this patch to fix this limitation only for rkisp1.
> >
> > [1] https://patchwork.linuxtv.org/project/linux-media/cover/20200415013044.1778572-1-helen.koike@collabora.com/
> >
> > If we decide to add the helpers in the future, we can clean up drivers
> > even more, but I don't want to block this feature.
> >
> > Overview of the patch:
> > ======================
> >
> > * Rename rkisp1_stream_{start,stop}() to
> >    rkisp1_cap_stream_{enable,disable}() to clarify the difference between
> >    other stream enable/disable functions
> >
> > * Implement rkisp1_pipeline_stream_{enable,disable}() to replace
> >    rkisp1_pipeline_{enable,disable}_cb() and rkisp1_pipeline_sink_walk(),
> >    which were removed.
> >
> > * Call rkisp1_cap_stream_{enable,disable}() from
> >    rkisp1_pipeline_stream_{enable,disable}() for better
> >    unwind handling and function name semantics.
> >
> > * Call media_pipeline_{start,stop}() in the right order.
> >
> > * Remove item from TODO list (I also reviewed the use of the
> >    is_streaming var in the code and lgtm).
> >
> > This patch was tested on rockpi4 board with:
> > ============================================
> >
> > "media-ctl" "-d" "platform:rkisp1" "-r"
> > "media-ctl" "-d" "platform:rkisp1" "-l" "'imx219 4-0010':0 -> 'rkisp1_isp':0 [1]"
> > "media-ctl" "-d" "platform:rkisp1" "-l" "'rkisp1_isp':2 -> 'rkisp1_resizer_selfpath':0 [1]"
> > "media-ctl" "-d" "platform:rkisp1" "-l" "'rkisp1_isp':2 -> 'rkisp1_resizer_mainpath':0 [1]"
> >
> > "media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"imx219 4-0010":0 [fmt:SRGGB10_1X10/1640x1232]'
> >
> > "media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_isp":0 [fmt:SRGGB10_1X10/1640x1232 crop: (0,0)/1600x1200]'
> > "media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_isp":2 [fmt:YUYV8_2X8/1600x1200 crop: (0,0)/1500x1100]'
> >
> > "media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_selfpath":0 [fmt:YUYV8_2X8/1500x1100 crop: (300,400)/1400x1000]'
> > "media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_selfpath":1 [fmt:YUYV8_2X8/900x800]'
> >
> > "v4l2-ctl" "-z" "platform:rkisp1" "-d" "rkisp1_selfpath" "-v" "width=900,height=800,"
> > "v4l2-ctl" "-z" "platform:rkisp1" "-d" "rkisp1_selfpath" "-v" "pixelformat=422P"
> >
> > "media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_mainpath":0 [fmt:YUYV8_2X8/1500x1100 crop: (300,400)/1400x1000]'
> > "media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_mainpath":1 [fmt:YUYV8_2X8/900x800]'
> >
> > "v4l2-ctl" "-z" "platform:rkisp1" "-d" "rkisp1_mainpath" "-v" "width=900,height=800,"
> > "v4l2-ctl" "-z" "platform:rkisp1" "-d" "rkisp1_mainpath" "-v" "pixelformat=422P"
> >
> > sleep 1
> >
> > time v4l2-ctl "-z" "platform:rkisp1" "-d" "rkisp1_mainpath" "--stream-mmap" "--stream-count" "100" &
> > time v4l2-ctl "-z" "platform:rkisp1" "-d" "rkisp1_selfpath" "--stream-mmap" "--stream-count" "100" &
> >
> > wait
> > echo "Completed"
> >
> > Thanks
> > Helen
> > ---
> >   drivers/staging/media/rkisp1/TODO             |   3 -
> >   drivers/staging/media/rkisp1/rkisp1-capture.c | 227 +++++++++---------
> >   2 files changed, 113 insertions(+), 117 deletions(-)
> >
> > diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
> > index e7c8398fc2cef..a2dd0ad951c25 100644
> > --- a/drivers/staging/media/rkisp1/TODO
> > +++ b/drivers/staging/media/rkisp1/TODO
> > @@ -1,9 +1,6 @@
> >   * Fix pad format size for statistics and parameters entities.
> >   * Fix checkpatch errors.
> >   * Add uapi docs. Remember to add documentation of how quantization is handled.
> > -* streaming paths (mainpath and selfpath) check if the other path is streaming
> > -in several places of the code, review this, specially that it doesn't seem it
> > -supports streaming from both paths at the same time.
> >
> >   NOTES:
> >   * All v4l2-compliance test must pass.
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > index b6f497ce3e95c..254936873c6c1 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > @@ -830,71 +830,43 @@ static void rkisp1_return_all_buffers(struct rkisp1_capture *cap,
> >   }
> >
> >   /*
> > - * rkisp1_pipeline_sink_walk - Walk through the pipeline and call cb
> > - * @from: entity at which to start pipeline walk
> > - * @until: entity at which to stop pipeline walk
> > - *
> > - * Walk the entities chain starting at the pipeline video node and stop
> > - * all subdevices in the chain.
> > - *
> > - * If the until argument isn't NULL, stop the pipeline walk when reaching the
> > - * until entity. This is used to disable a partially started pipeline due to a
> > - * subdev start error.
> > + * Most of registers inside rockchip ISP1 have shadow register since
> > + * they must be not be changed during processing a frame.
> > + * Usually, each sub-module updates its shadow register after
> > + * processing the last pixel of a frame.
> >    */
> > -static int rkisp1_pipeline_sink_walk(struct media_entity *from,
> > -                                  struct media_entity *until,
> > -                                  int (*cb)(struct media_entity *from,
> > -                                            struct media_entity *curr))
> > +static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
> >   {
> > -     struct media_entity *entity = from;
> > -     struct media_pad *pad;
> > -     unsigned int i;
> > -     int ret;
> > -
> > -     while (1) {
> > -             pad = NULL;
> > -             /* Find remote source pad */
> > -             for (i = 0; i < entity->num_pads; i++) {
> > -                     struct media_pad *spad = &entity->pads[i];
> > -
> > -                     if (!(spad->flags & MEDIA_PAD_FL_SINK))
> > -                             continue;
> > -                     pad = media_entity_remote_pad(spad);
> > -                     if (pad && is_media_entity_v4l2_subdev(pad->entity))
> > -                             break;
> > -             }
> > -             if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> > -                     break;
> > +     struct rkisp1_device *rkisp1 = cap->rkisp1;
> > +     struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
> >
> > -             entity = pad->entity;
> > -             if (entity == until)
> > -                     break;
> > +     cap->ops->set_data_path(cap);
> > +     cap->ops->config(cap);
> >
> > -             ret = cb(from, entity);
> > -             if (ret)
> > -                     return ret;
> > +     /* Setup a buffer for the next frame */
> > +     spin_lock_irq(&cap->buf.lock);
> > +     rkisp1_set_next_buf(cap);
> > +     cap->ops->enable(cap);
> > +     /* It's safe to config ACTIVE and SHADOW regs for the
> > +      * first stream. While when the second is starting, do NOT
> > +      * force update because it also update the first one.
> > +      *
> > +      * The latter case would drop one more buf(that is 2) since
> > +      * there's not buf in shadow when the second FE received. This's
> > +      * also required because the second FE maybe corrupt especially
> > +      * when run at 120fps.
> > +      */
> > +     if (!other->is_streaming) {
> > +             /* force cfg update */
> > +             rkisp1_write(rkisp1,
> > +                          RKISP1_CIF_MI_INIT_SOFT_UPD, RKISP1_CIF_MI_INIT);
> > +             rkisp1_set_next_buf(cap);
> >       }
> > -
> > -     return 0;
> > -}
> > -
> > -static int rkisp1_pipeline_disable_cb(struct media_entity *from,
> > -                                   struct media_entity *curr)
> > -{
> > -     struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
> > -
> > -     return v4l2_subdev_call(sd, video, s_stream, false);
> > -}
> > -
> > -static int rkisp1_pipeline_enable_cb(struct media_entity *from,
> > -                                  struct media_entity *curr)
> > -{
> > -     struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(curr);
> > -
> > -     return v4l2_subdev_call(sd, video, s_stream, true);
> > +     spin_unlock_irq(&cap->buf.lock);
> > +     cap->is_streaming = true;
> >   }
> >
> > -static void rkisp1_stream_stop(struct rkisp1_capture *cap)
> > +static void rkisp1_cap_stream_disable(struct rkisp1_capture *cap)
> >   {
> >       int ret;
> >
> > @@ -911,6 +883,81 @@ static void rkisp1_stream_stop(struct rkisp1_capture *cap)
> >       }
> >   }
> >
> > +/*
> > + * rkisp1_pipeline_stream_disable - disable nodes in the pipeline
> > + *
> > + * Call s_stream(false) in the reverse order from
> > + * rkisp1_pipeline_stream_enable() and disable the DMA engine.
> > + * Should be called before media_pipeline_stop()
> > + */
> > +static void rkisp1_pipeline_stream_disable(struct rkisp1_capture *cap)
> > +     __must_hold(&cap->rkisp1->stream_lock)
> > +{
> > +     struct rkisp1_device *rkisp1 = cap->rkisp1;
> > +
> > +     rkisp1_cap_stream_disable(cap);
> > +
> > +     /*
> > +      * If the other capture is streaming, isp and sensor nodes shouldn't
> > +      * be disabled, skip them.
> > +      */
> > +     if (rkisp1->pipe.streaming_count < 2) {
> > +             v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
> > +                              false);
> > +             v4l2_subdev_call(&rkisp1->isp.sd, video, s_stream, false);
> > +     }
> > +
> > +     v4l2_subdev_call(&rkisp1->resizer_devs[cap->id].sd, video, s_stream,
> > +                      false);
>
> I wonder if the order of the disable matters. If it should be from the sensor up to the
> capture then we should call 'rkisp1_cap_stream_disable' at the end of this
> function.

According to our downstream code [1] and my recollection of discussion
with Rockchip, the power up order was:
 - ISP
 - sensor
 - PHY
and power down the opposite.

That said, the sensor drivers we had didn't implement s_power and used
runtime PM at streaming time, so I think in practice the order ended
up as:
 - ISP,
 - PHY,
 - sensor.

The streaming enable order [2] was:
 - ISP,
 - PHY,
 - sensor
and disable:
 - PHY,
 - sensor,
 - ISP.

It's possible that the powering order probably was irrelevant and just
the streaming itself is important or actually it doesn't matter. Some
testing would be appreciated.

[1] https://source.chromium.org/chromiumos/chromiumos/codesearch/+/master:src/third_party/kernel/v4.4/drivers/media/platform/rockchip/isp1/dev.c;drc=4372c82fc2f0d63b4fbb5390e72464709f8a34e9;l=110
[2] https://source.chromium.org/chromiumos/chromiumos/codesearch/+/master:src/third_party/kernel/v4.4/drivers/media/platform/rockchip/isp1/dev.c;drc=4372c82fc2f0d63b4fbb5390e72464709f8a34e9;l=175

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
