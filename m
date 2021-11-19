Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD12C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 15:53:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 10F7B610FC
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 15:53:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 10F7B610FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjAh+7/8abr93OLvdVdHqsjNhwdLhYZURDOZQ/xXKB4=; b=bNPEyo3tqcZUQq
	VUKGqMHGKGiocBo5v/Dv7fVRQwNBktcdRRUDvAFlOK3b6zdVFd56RZ5UGIIkdiUUZJn2IFbiGdRl1
	Zi7dqYuFxkLoQFoajHIqttnyb4qe43YA9IohaMpMkvVX5vsirqyblVkXu5gHnPmJ1WuVHDArjVbyi
	0CNFZ+p+kjl26vkj/Rd/wQCxrgwz6wcUhtu5S/3zvPVnCiTcOjaID4u5XtCv0F0/PLMz2H5jkeVIB
	UR1kCMmjpSNPl77lP/a7KC99JDmbsxkEK2TtKAnsHIJ9MS6L/M3tkT5aiuIdvARg6L18xXq7yiT9F
	HBCXWOwB0Rkeae5A3xTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo6Cu-00AuoM-Gn; Fri, 19 Nov 2021 15:53:44 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo6Cs-00Aun4-6A
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 15:53:44 +0000
Received: by mail-ed1-x52a.google.com with SMTP id g14so44526519edb.8
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 07:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=j6ZBHEuBMINUI0NHynx/JAd182zvPE30UGgO4LSxZT8=;
 b=cLFaCrFUDWnjM6RN44xaIUWGhlA8AjiwIjNMiFnJqzFbwcCLaR6yZdIpS3XgyfSgbk
 b+DRNaySfaXQUmTRqpOy7OP6qlDUSpFFdyJSmTW/fn1hHKhWMtQJR6HftSM0RBnDWNDM
 QbOa7oEN/xYZlgy4yy5pnup7ZkqxiSKzMcWMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=j6ZBHEuBMINUI0NHynx/JAd182zvPE30UGgO4LSxZT8=;
 b=L4ML4WHJLKPC0TXl7LqEyTZR3CccbVfaZLmVhkTq3HyS0Vr3p6XzEE6AspjkRn84Es
 Rnu1ZL00HgTiUtssMen3WwVXXMZw4qF9mCqzBulwogCD5n0bG/Dqx3Qsu/wzkRtMeAin
 I2W6pZPArdaXFBzfsapheCm/hmUz+xFAvGv9IOgBx4QDJPnfX5eiJ3rL2vi6BqOszu2B
 jcbz/Li+MaoaE7mLoc9eIydslQ/GJwGjeiYs4QzcJllBrwteQhwbXXXqCIl7EsSnLdXE
 a9oVi+hnmuKIiYalo+jJI0hz7YXf4HWJ/vUTdwgDpgq7U7wyHG79JV7TJzTY4gLv3lGm
 lKVg==
X-Gm-Message-State: AOAM530XnsbmeH3JEKYWIffcxBLbGfxjmZFcC6T61NS/Ty7QdC/kYHIq
 BEkLUHydKDUcN88u7BlmJ9Rl4w==
X-Google-Smtp-Source: ABdhPJyLTIXW2cwncUjF6nOaAAumf42PL7T8ocCSEESmqxIgDOARKf7XOwdXaq6ojG/YVWRcdZwvog==
X-Received: by 2002:a17:907:7f8b:: with SMTP id
 qk11mr9088107ejc.176.1637337219520; 
 Fri, 19 Nov 2021 07:53:39 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r18sm96198eje.90.2021.11.19.07.53.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 07:53:39 -0800 (PST)
Date: Fri, 19 Nov 2021 16:53:37 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Rob Clark <robdclark@gmail.com>, Rob Clark <robdclark@chromium.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Brian Norris <briannorris@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, linux-input@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YZfIgd8s7uGXAD2X@phenom.ffwll.local>
Mail-Followup-To: Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Rob Clark <robdclark@chromium.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>,
 Brian Norris <briannorris@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 linux-input@vger.kernel.org
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
 <20211119115419.505155b5@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211119115419.505155b5@eldfell>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_075342_395552_662AF263 
X-CRM114-Status: GOOD (  47.96  )
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

On Fri, Nov 19, 2021 at 11:54:19AM +0200, Pekka Paalanen wrote:
> On Thu, 18 Nov 2021 15:30:38 -0800
> Rob Clark <robdclark@gmail.com> wrote:
> 
> > On Thu, Nov 18, 2021 at 2:39 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > >
> > > On Wed, 17 Nov 2021 14:48:40 -0800
> > > Brian Norris <briannorris@chromium.org> wrote:
> > >  
> > > > A variety of applications have found it useful to listen to
> > > > user-initiated input events to make decisions within a DRM driver, given
> > > > that input events are often the first sign that we're going to start
> > > > doing latency-sensitive activities:
> > > >
> > > >  * Panel self-refresh: software-directed self-refresh (e.g., with
> > > >    Rockchip eDP) is especially latency sensitive. In some cases, it can
> > > >    take 10s of milliseconds for a panel to exit self-refresh, which can
> > > >    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
> > > >    with an input_handler boost, that preemptively exits self-refresh
> > > >    whenever there is input activity.
> > > >
> > > >  * GPU drivers: on GPU-accelerated desktop systems, we may need to
> > > >    render new frames immediately after user activity. Powering up the
> > > >    GPU can take enough time that it is worthwhile to start this process
> > > >    as soon as there is input activity. Many Chrome OS systems also ship
> > > >    with an input_handler boost that powers up the GPU.
> > > >
> > > > This patch provides a small helper library that abstracts some of the
> > > > input-subsystem details around picking which devices to listen to, and
> > > > some other boilerplate. This will be used in the next patch to implement
> > > > the first bullet: preemptive exit for panel self-refresh.
> > > >
> > > > Bits of this are adapted from code the Android and/or Chrome OS kernels
> > > > have been carrying for a while.
> > > >
> > > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > > ---  
> > >
> > > Thanks Simon for the CC.
> > >
> > > Hi Brian,
> > >
> > > while this feature in general makes sense and sounds good, to start
> > > warming up display hardware early when something might start to happen,
> > > this particular proposal has many problems from UAPI perspective (as it
> > > has none). Comments below.
> > >
> > > Btw. if PSR is that slow to wake up from, how much do you actually gain
> > > from this input event watching? I would imagine the improvement to not
> > > be noticeable.
> > >
> > > I think some numbers about how much this feature helps would be really
> > > good, even if they are quite specific use cases. You also need to
> > > identify the userspace components, because I think different display
> > > servers are very different in their reaction speed.
> > >
> > > If KMS gets a pageflip or modeset in no time after an input event, then
> > > what's the gain. OTOH, if the display server is locking on to vblank,
> > > there might be a delay worth avoiding. But then, is it worth
> > > short-circuiting the wake-up in kernel vs. adding a new ioctl that
> > > userspace could hit to start the warming up process?  
> > 
> > In my measurements, it takes userspace a frame or two to respond and
> > get to the point of starting to build cmdstream (before eventually
> > doing atomic/pageflip ioctl).. possibly longer if you don't also have
> > a similar boost mechanism to spool up cpufreq
> > 
> > But the important thing, IMO, is that atomic/pageflip ioctl is the
> > cumulation of a long sequence of events.. input-boost is letting
> > whatever it may be (PSR exit, GPU resume, etc) happen in parallel with
> > that long sequence.
> 
> Right, exactly. That is why I was musing about a *new* ioctl that
> userspace could hit as soon as any input device fd (or network fd!)
> shows signs of life. Would that be enough, avoiding all the annoying
> questions about which input and DRM devices should participate here
> (and what about non-input devices that still want to trigger the
> warm-up, like network traffic, e.g. remote control?), or does it really
> need to be kernel internal to be fast enough?
> 
> As Brian wrote about his quick hack to test that via debugfs, sounds
> like the userspace solution would be totally sufficient.

Random idea ... should we perhaps let userspace connect the boosting? I.e.
we do a bunch of standardized boost targets (render clocks, display sr
exit), and userspace can then connect it to whichever input device it
wants to?

That also avoids the multi-user lol of us boosting the wrong seat, we
could do a drm ioctl where you pass it an eventfd and essentially say
"listen to this mkay?" That way the boosting would also neatly get passed
along with compositors as we vt switch them, in case you have one that's
all tablet, and another one (console emulation) that's kbd only.

Also this avoids the latency problem perhaps of a compositor which just
dumbly paints every frame because it's VR or something like that, so never
any sr exit possible.

Just an idea, compositor people pls shred it :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
