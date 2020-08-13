Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99221C433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 13:05:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 560612078D
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 13:05:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rKB4kDW3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Yv7MYbs+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 560612078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AfwMlQnwxDJafzTXHvifPm1r3c4wNkGVv++sYmSGlQw=; b=rKB4kDW3LKV63y5kXMG5skrDU
	we5tTGMnsn4ecVfcXQImIi67ntU6ZPCljLP0zh+0uphPWjDNjL8RUCEwW4RaiYg539mZK6fMMFsgQ
	XC4JtRUEtPNO0ylmH3b6eKIxbAeP6WuBbKZeNNwFqrY/UwszahFMHzKrL+FrtTMtfk8QKKLnRb+2q
	ZhylKpBVG51QdTZv3+xXvaqMjIHPYwiJTuu5XaRr0BARCkUH2DZxsCh4Th/n9JTK7xgGEjwztKnAA
	B+J9o2lCaOJJmhPE6ZkdudkW4i3eNtUrJI59rVH1pCSmFShTfWaKD/2KZEzFCro1BxjhP+qJPQqi8
	h1yqlq8+g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6Cv7-0000M9-OA; Thu, 13 Aug 2020 13:05:25 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6Cv5-0000LA-Nm
 for linux-rockchip@lists.infradead.org; Thu, 13 Aug 2020 13:05:24 +0000
Received: by mail-ej1-x642.google.com with SMTP id jp10so6107695ejb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2020 06:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PxC+kNvoOOizW5jUolITF+2wwjkQt7V/7WvlENsLwx8=;
 b=Yv7MYbs+FxrsF5iOW+34Mj+ZksuSocfETdJrztOuN6C5QWj5V6yeaF5+BVx6uhobxe
 7RUq7KzGu+bGFJ4oQgYrH2jnQOwKRFTw/PV5fUPCyncoFxdFrLDEnuirjrsF/o6xhbCl
 YXgqlXY9NHtt/trctJ4USzZElwWEG8wm7v2wU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PxC+kNvoOOizW5jUolITF+2wwjkQt7V/7WvlENsLwx8=;
 b=VrgdYyW2rSx8TbCvUJzHCMZlisIQmgjBmNgKpOCWHDqvYxy5ZL0RBkosc78ElO28Yx
 sSItLm7GNIevGoP4Muks2Pcx77+3bRi4cW42DMdKigRgtD+D+DqgviXZRx2IRLp0mIzO
 2yD6tATEwuLg2r8yS/CByy4KAnmB1QwPmTEBeopg31+l4C9D6wkEuOEPgTbSYFg99j4Y
 3Q6ljpOCbYvBAVqvbr/FA0EAY0T1ke4UwlhtJbHdFdI5XG1usrxb6+t9ANROh+MwIcq0
 m7GjjvmQl3rdU8LJh/dWisF5DxAnJPeBUH80dNR7PJr6LA6GbCWudVarEqZopE+LoBSC
 XIGA==
X-Gm-Message-State: AOAM531VYjH1P1qyXDFyIeJfCMRWGJieITrEBi0yCXFJxk3AFiTeK/VO
 TsMwyuy0+gZA0OCf0GyU7O4mIlpG4xM=
X-Google-Smtp-Source: ABdhPJzDc/WBNX3q8z+yAfrr9YzVbrmW4f41Etwqfq8pQMdNcb44zk+UqUpjjqg0dS0RMh/1N5x4rA==
X-Received: by 2002:a17:906:496:: with SMTP id
 f22mr4609000eja.180.1597323921911; 
 Thu, 13 Aug 2020 06:05:21 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id ca3sm3648767edb.72.2020.08.13.06.05.20
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Aug 2020 06:05:21 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id d190so4624231wmd.4
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2020 06:05:20 -0700 (PDT)
X-Received: by 2002:a1c:9a81:: with SMTP id c123mr4186242wme.46.1597323920054; 
 Thu, 13 Aug 2020 06:05:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
 <20200625174257.22216-4-dafna.hirschfeld@collabora.com>
 <e269f2f5-c24c-7009-e624-3545af206709@arm.com>
 <CAAFQd5AsJG=YJC4eG6+qdt_dPyr-dwcXrmujxLaHfoe9==Es1g@mail.gmail.com>
 <e680474a-1b47-7904-b7ab-5a026d0db05f@collabora.com>
 <CAAFQd5CHK+c=zED-evW3sqgF+WpuAYW6M8kvPZCVCrf2_KHG8A@mail.gmail.com>
 <16ea1aba-0b0d-6bcf-8e72-5e253ead9218@arm.com>
 <4d90a5d1-25a7-ab49-f3e5-2d54b6b8ecba@collabora.com>
 <20200813105314.GA6258@pendragon.ideasonboard.com>
 <CAAFQd5CAV7=7reKcwts=9C581xn1B4skTMocstCTctiJtW9=7w@mail.gmail.com>
 <20200813130220.GH6057@pendragon.ideasonboard.com>
In-Reply-To: <20200813130220.GH6057@pendragon.ideasonboard.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 13 Aug 2020 15:05:09 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BQWMnpaM4DtACTVyNuSLS4c5-zvy4UQmmoyGHRpw7n8g@mail.gmail.com>
Message-ID: <CAAFQd5BQWMnpaM4DtACTVyNuSLS4c5-zvy4UQmmoyGHRpw7n8g@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming'
 don't release the lock while returning buffers
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_090523_826705_7AE138F4 
X-CRM114-Status: GOOD (  48.40  )
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
Cc: kernel@collabora.com, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Dafna Hirschfeld <dafna3@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Aug 13, 2020 at 3:02 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Tomasz,
>
> On Thu, Aug 13, 2020 at 02:50:17PM +0200, Tomasz Figa wrote:
> > On Thu, Aug 13, 2020 at 12:53 PM Laurent Pinchart wrote:
> > > On Thu, Aug 13, 2020 at 12:44:35PM +0200, Dafna Hirschfeld wrote:
> > > > Am 26.06.20 um 18:58 schrieb Robin Murphy:
> > > > > On 2020-06-26 16:59, Tomasz Figa wrote:
> > > > >> On Fri, Jun 26, 2020 at 5:48 PM Dafna Hirschfeld wrote:
> > > > >>> On 26.06.20 16:03, Tomasz Figa wrote:
> > > > >>>> On Fri, Jun 26, 2020 at 3:32 PM Robin Murphy wrote:
> > > > >>>>> On 2020-06-25 18:42, Dafna Hirschfeld wrote:
> > > > >>>>>> In the stop_streaming callback 'rkisp1_params_vb2_stop_streaming'
> > > > >>>>>> there is no need to release the lock 'config_lock' and then acquire
> > > > >>>>>> it again at each iteration when returning all buffers.
> > > > >>>>>> This is because the stream is about to end and there is no need
> > > > >>>>>> to let the isr access a buffer.
> > > > >>>>>>
> > > > >>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > >>>>>> ---
> > > > >>>>>>     drivers/staging/media/rkisp1/rkisp1-params.c | 7 +------
> > > > >>>>>>     1 file changed, 1 insertion(+), 6 deletions(-)
> > > > >>>>>>
> > > > >>>>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> > > > >>>>>> index bf006dbeee2d..5169b02731f1 100644
> > > > >>>>>> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> > > > >>>>>> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> > > > >>>>>> @@ -1488,19 +1488,13 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
> > > > >>>>>>         /* stop params input firstly */
> > > > >>>>>>         spin_lock_irqsave(&params->config_lock, flags);
> > > > >>>>>>         params->is_streaming = false;
> > > > >>>>>> -     spin_unlock_irqrestore(&params->config_lock, flags);
> > > > >>>>>>
> > > > >>>>>>         for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
> > > > >>>>>> -             spin_lock_irqsave(&params->config_lock, flags);
> > > > >>>>>>                 if (!list_empty(&params->params)) {
> > > > >>>>>>                         buf = list_first_entry(&params->params,
> > > > >>>>>>                                                struct rkisp1_buffer, queue);
> > > > >>>>>>                         list_del(&buf->queue);
> > > > >>>>>> -                     spin_unlock_irqrestore(&params->config_lock,
> > > > >>>>>> -                                            flags);
> > > > >>>>>>                 } else {
> > > > >>>>>> -                     spin_unlock_irqrestore(&params->config_lock,
> > > > >>>>>> -                                            flags);
> > > > >>>>>>                         break;
> > > > >>>>>>                 }
> > > > >>>>>
> > > > >>>>> Just skimming through out of idle curiosity I was going to comment that
> > > > >>>>> if you end up with this pattern:
> > > > >>>>>
> > > > >>>>>           if (!x) {
> > > > >>>>>                   //do stuff
> > > > >>>>>           } else {
> > > > >>>>>                   break;
> > > > >>>>>           }
> > > > >>>>>
> > > > >>>>> it would be better as:
> > > > >>>>>
> > > > >>>>>           if (x)
> > > > >>>>>                   break;
> > > > >>>>>           //do stuff
> > > > >>>>>
> > > > >>>>> However I then went and looked at the whole function and frankly it's a
> > > > >>>>> bit of a WTF. As best I could decipher, this whole crazy loop appears to
> > > > >>>>> be a baroque reinvention of:
> > > > >>>>>
> > > > >>>>>           list_for_each_entry_safe(&params->params, ..., buf) {
> > > > >>>>>                   list_del(&buf->queue);
> > > > >>>>>                   vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
> > > > >>>>>           }
> > > > >>> Hi, indeed this is a much simpler implementation, greping 'return_all_buffers'
> > > > >>> I see that many drivers implement it this way.
> > > > >>> thanks!
> > > > >>>
> > > > >>>>>
> > > > >>>>> (assuming from context that the list should never contain more than
> > > > >>>>> RKISP1_ISP_PARAMS_REQ_BUFS_MAX entries in the first place)
> > > > >>>>
> > > > >>>> Or if we want to avoid disabling the interrupts for the whole
> > > > >>>> iteration, we could use list_splice() to move all the entries of
> > > > >>>
> > > > >>> But this code runs when userspace asks to stop the streaming so I don't
> > > > >>> think it is important at that stage to allow the interrupts.
> > > > >>
> > > > >> It's generally a good practice to reduce the time spent with
> > > > >> interrupts disabled. Disabling the interrupts prevents the system from
> > > > >> handling external events, including timer interrupts, and scheduling
> > > > >> higher priority tasks, including real time ones. How much the system
> > > > >> runs with interrupts disabled is one of the factors determining the
> > > > >> general system latency.
> > > > >
> > > > > Right, with the way we handle interrupt affinity on Arm an IRQ can't
> > > > > target multiple CPUs in hardware, so any time spent with IRQs
> > > > > disabled might be preventing other devices' interrupts from being
> > > > > taken even if they're not explicitly affine to the current CPU.
> > > > >
> > > > > Now that I've looked, it appears that vb2_buffer_done() might end up
> > > > > performing a DMA sync on the buffers, which, if it has to do
> > > > > order-of-megabytes worth of cache maintenance for large frames, is
> > > > > the kind of relatively slow operation that really doesn't want to be
> > > > > done with IRQs disabled (or under a lock at all, ideally) unless it
> > > > > absolutely *has* to be. If the lock is only needed here to protect
> > > > > modifications to the params list itself, then moving the whole list
> > > > > at once to do the cleanup "offline" sounds like a great idea to me.
> > >
> > > Ouch.
> > >
> > > > ok, that might be a problem in v4l2 in general since vb2_buffer_done
> > > > is actually often used inside an irq handler
> > >
> > > Correct. The DMA sync should be moved to DQBUF time, there shouldn't be
> > > any reason to do it in the IRQ handler. I thought this had already been
> > > fixed :-(
> >
> > For reference, there was a patch [1] proposed, but it moved the
> > synchronization to a wrong place in the sequence, already after the
> > .buf_finish queue callback, ending up breaking the drivers which need
> > to access the buffer contents there.
> >
> > [1] https://patchwork.linuxtv.org/project/linux-media/patch/1494255810-12672-4-git-send-email-sakari.ailus@linux.intel.com/
>
> I think we need to fix the drivers. We just can't do cache sync in IRQ
> context by default because a few drivers need to access the buffer
> contents. Those drivers should instead deffer access to a work queue,
> and sync explicitly. We could possibly provide helpers for that, making
> it transparent if a queue flag is set.

The drivers don't access the buffers explicitly from the IRQ. The vb2
queue .buf_finish callback is called at DQBUF time. It was just the
patch mentioned that moved it to a part of DQBUF executed too late.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
