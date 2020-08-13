Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523C2C433E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 12:51:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F2DB20791
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 12:51:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="L6tQ3iUd";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iNiwCUJS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F2DB20791
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xtih+Es5VF9e8izngFfPvVS+hGXQNza3A9o2ZUpn27g=; b=L6tQ3iUdYFwthLqnsGD2BxdbH
	H0ctCW6khJvA5EVRhI3o7h8g8GoNzLDk98taFZdF0rIexz0l5d0iOFoatND2jbp6K95yjPaJ8ef1Y
	2lyBowpApxZI6Mpfrrjy8lBMSK8NN6KmsK/BvJcPXaOfAGmcZm/bvUh6WeD7w8FZTk6R48VXHe7dJ
	LXLnvEv0MZQZ3OfUu/8CdfeMfwLSyw1p7zp9Evng4VvclXxTYZIbmcN8UYFVeCHhXm5w7ds6oF4B3
	C2Oh0/kBAob/Rma19eTG1eXkH9WtnvfkGVFYoFbdaFB4k44d5QtOI26DEuSVCiCD4ADZZA92ajwV5
	pUPjIqGhg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6ChE-0005UE-Bv; Thu, 13 Aug 2020 12:51:04 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6Cgk-0005AU-Ul
 for linux-rockchip@lists.infradead.org; Thu, 13 Aug 2020 12:50:36 +0000
Received: by mail-ej1-x643.google.com with SMTP id d6so6036100ejr.5
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2020 05:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dFJNbsOK4aIRKxuNK34asi2cYG/Qwey9+NniGIhLqYo=;
 b=iNiwCUJSuJt+nSV6IvF7C8z97e1LnzC3Bq+jiP5D6K4zSycQ5jIOSx4LMQcKHKPdxf
 hQPY+M90IDupsl50+lkBsE2Kt4DjqzrBW2wM4myt998A3Pz3tnHkid1QRq+j5NTfo/ZD
 17vZEdrQggerHYNuFj802rBaYtbagmyk0HEB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dFJNbsOK4aIRKxuNK34asi2cYG/Qwey9+NniGIhLqYo=;
 b=YC8J7yJRCyx5LopNif7laMVkH2iJ2umua53BG5J4jUtGmB4QcXRdHEnCb+ke+eRJsO
 BxL7E1ClBZ9cQy8Ods2NBBndZLtMKnEAhCb6BeIi1jzC4GaLZmx+G8vuz+XdDRAdLmIX
 tWL0qxRAEkoX7aRfTUgNx8mPnJpb4bZdZ8d1t8mwDBuJKcZ/rYfAJm2LppbIIbGuxWWR
 wP+yB22vPRw4Du6BB5JcCz4UCw7FOmToB8PQnkv6w+2LwY+T5OOmOYGSSEb4SqeduCtd
 LZxsQmSWRNVFlAtDRo8wMETVMu9/kLivLOQ0qpUkZsod0bdV4LHVvYnamAj8AQujPT6p
 gl3w==
X-Gm-Message-State: AOAM532cymnrrj9PLdTXZbTOFhR7kyQga1P1bd7K2Q8V/tG6+71O2Qpk
 bDzINyse5/k1Nys7w1VmA3Q7lGT42UQ=
X-Google-Smtp-Source: ABdhPJwSozM7gz7e11CsH67Y9vJqRmuipZz43B543NUETV/ShI6iqG6oMeV4M8gmEtIZfIcozgmWoA==
X-Received: by 2002:a17:906:fa0c:: with SMTP id
 lo12mr4833982ejb.390.1597323030127; 
 Thu, 13 Aug 2020 05:50:30 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id d2sm3735092ejm.19.2020.08.13.05.50.28
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Aug 2020 05:50:29 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id f1so5184906wro.2
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2020 05:50:28 -0700 (PDT)
X-Received: by 2002:adf:ec4f:: with SMTP id w15mr3727129wrn.385.1597323028320; 
 Thu, 13 Aug 2020 05:50:28 -0700 (PDT)
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
In-Reply-To: <20200813105314.GA6258@pendragon.ideasonboard.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 13 Aug 2020 14:50:17 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CAV7=7reKcwts=9C581xn1B4skTMocstCTctiJtW9=7w@mail.gmail.com>
Message-ID: <CAAFQd5CAV7=7reKcwts=9C581xn1B4skTMocstCTctiJtW9=7w@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming'
 don't release the lock while returning buffers
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_085035_142548_01E30204 
X-CRM114-Status: GOOD (  42.05  )
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

On Thu, Aug 13, 2020 at 12:53 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hello,
>
> On Thu, Aug 13, 2020 at 12:44:35PM +0200, Dafna Hirschfeld wrote:
> > Am 26.06.20 um 18:58 schrieb Robin Murphy:
> > > On 2020-06-26 16:59, Tomasz Figa wrote:
> > >> On Fri, Jun 26, 2020 at 5:48 PM Dafna Hirschfeld wrote:
> > >>> On 26.06.20 16:03, Tomasz Figa wrote:
> > >>>> On Fri, Jun 26, 2020 at 3:32 PM Robin Murphy wrote:
> > >>>>> On 2020-06-25 18:42, Dafna Hirschfeld wrote:
> > >>>>>> In the stop_streaming callback 'rkisp1_params_vb2_stop_streaming'
> > >>>>>> there is no need to release the lock 'config_lock' and then acquire
> > >>>>>> it again at each iteration when returning all buffers.
> > >>>>>> This is because the stream is about to end and there is no need
> > >>>>>> to let the isr access a buffer.
> > >>>>>>
> > >>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > >>>>>> ---
> > >>>>>>     drivers/staging/media/rkisp1/rkisp1-params.c | 7 +------
> > >>>>>>     1 file changed, 1 insertion(+), 6 deletions(-)
> > >>>>>>
> > >>>>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> > >>>>>> index bf006dbeee2d..5169b02731f1 100644
> > >>>>>> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> > >>>>>> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> > >>>>>> @@ -1488,19 +1488,13 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
> > >>>>>>         /* stop params input firstly */
> > >>>>>>         spin_lock_irqsave(&params->config_lock, flags);
> > >>>>>>         params->is_streaming = false;
> > >>>>>> -     spin_unlock_irqrestore(&params->config_lock, flags);
> > >>>>>>
> > >>>>>>         for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
> > >>>>>> -             spin_lock_irqsave(&params->config_lock, flags);
> > >>>>>>                 if (!list_empty(&params->params)) {
> > >>>>>>                         buf = list_first_entry(&params->params,
> > >>>>>>                                                struct rkisp1_buffer, queue);
> > >>>>>>                         list_del(&buf->queue);
> > >>>>>> -                     spin_unlock_irqrestore(&params->config_lock,
> > >>>>>> -                                            flags);
> > >>>>>>                 } else {
> > >>>>>> -                     spin_unlock_irqrestore(&params->config_lock,
> > >>>>>> -                                            flags);
> > >>>>>>                         break;
> > >>>>>>                 }
> > >>>>>
> > >>>>> Just skimming through out of idle curiosity I was going to comment that
> > >>>>> if you end up with this pattern:
> > >>>>>
> > >>>>>           if (!x) {
> > >>>>>                   //do stuff
> > >>>>>           } else {
> > >>>>>                   break;
> > >>>>>           }
> > >>>>>
> > >>>>> it would be better as:
> > >>>>>
> > >>>>>           if (x)
> > >>>>>                   break;
> > >>>>>           //do stuff
> > >>>>>
> > >>>>> However I then went and looked at the whole function and frankly it's a
> > >>>>> bit of a WTF. As best I could decipher, this whole crazy loop appears to
> > >>>>> be a baroque reinvention of:
> > >>>>>
> > >>>>>           list_for_each_entry_safe(&params->params, ..., buf) {
> > >>>>>                   list_del(&buf->queue);
> > >>>>>                   vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
> > >>>>>           }
> > >>> Hi, indeed this is a much simpler implementation, greping 'return_all_buffers'
> > >>> I see that many drivers implement it this way.
> > >>> thanks!
> > >>>
> > >>>>>
> > >>>>> (assuming from context that the list should never contain more than
> > >>>>> RKISP1_ISP_PARAMS_REQ_BUFS_MAX entries in the first place)
> > >>>>
> > >>>> Or if we want to avoid disabling the interrupts for the whole
> > >>>> iteration, we could use list_splice() to move all the entries of
> > >>>
> > >>> But this code runs when userspace asks to stop the streaming so I don't
> > >>> think it is important at that stage to allow the interrupts.
> > >>
> > >> It's generally a good practice to reduce the time spent with
> > >> interrupts disabled. Disabling the interrupts prevents the system from
> > >> handling external events, including timer interrupts, and scheduling
> > >> higher priority tasks, including real time ones. How much the system
> > >> runs with interrupts disabled is one of the factors determining the
> > >> general system latency.
> > >
> > > Right, with the way we handle interrupt affinity on Arm an IRQ can't
> > > target multiple CPUs in hardware, so any time spent with IRQs
> > > disabled might be preventing other devices' interrupts from being
> > > taken even if they're not explicitly affine to the current CPU.
> > >
> > > Now that I've looked, it appears that vb2_buffer_done() might end up
> > > performing a DMA sync on the buffers, which, if it has to do
> > > order-of-megabytes worth of cache maintenance for large frames, is
> > > the kind of relatively slow operation that really doesn't want to be
> > > done with IRQs disabled (or under a lock at all, ideally) unless it
> > > absolutely *has* to be. If the lock is only needed here to protect
> > > modifications to the params list itself, then moving the whole list
> > > at once to do the cleanup "offline" sounds like a great idea to me.
>
> Ouch.
>
> > ok, that might be a problem in v4l2 in general since vb2_buffer_done
> > is actually often used inside an irq handler
>
> Correct. The DMA sync should be moved to DQBUF time, there shouldn't be
> any reason to do it in the IRQ handler. I thought this had already been
> fixed :-(

For reference, there was a patch [1] proposed, but it moved the
synchronization to a wrong place in the sequence, already after the
.buf_finish queue callback, ending up breaking the drivers which need
to access the buffer contents there.

[1] https://patchwork.linuxtv.org/project/linux-media/patch/1494255810-12672-4-git-send-email-sakari.ailus@linux.intel.com/

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
