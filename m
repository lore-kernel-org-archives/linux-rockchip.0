Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AF05C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:50:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6CA86112E
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:50:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E6CA86112E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fy6m5fJaydq+QxXA2vG+Fh8VpzYr6nwPSxz6UxEzYe4=; b=aODSshrhIh88MI
	znaVl4FuA9cI1gEgtF+OFJ3H87ijg1+NHOwANbiBWUXfhLw24W5kUIWWj7n4Zj2odBA7LudH3ou+7
	jb2jpCS57IZXOXDInnrOCHtwCO7hcT2ie2Ib5hTsIhJo2+eEjY4B1BM3GnxA6aioNZeEPcUe6UtZt
	uO8ZzMsRu0orJGe4AZtV/Ri/QwhpVpP8VnwAAk+zCy7KyoRkehNGoSVrpgwYMhuLZWavVuReXGS72
	78D1UWQnQEHfH9mjlrUCEY1eObiyQEC8yG10hJHAShMWF4HiHWxyEtdFv3d5nxBnY6GmluUTVEg5z
	xN5o8HH8a+dPGhvi7Vkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo75v-00B7yg-P4; Fri, 19 Nov 2021 16:50:35 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo75s-00B7xE-AH
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 16:50:34 +0000
Received: by mail-il1-x136.google.com with SMTP id i12so10775891ila.12
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 08:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aEmSSWhf+gL8qBnC3OQ4k9nQBlz6XV75q4puJdRh5oQ=;
 b=Cq14xpJqAALRp2rNxOmf2l7mV944d/L/PTfUJIREFoDicZFdK0CzzoPMMEVPiEXbFr
 4gR5ON7YpQVgpVjHiBjOnsYHB6fsuvMUsScx8RAA7lotRP4XonGgFEH/3o6Jfe44277z
 AE88++2ANNjZbfrxW0p3Ew5ekRE4O1Wc5T3ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aEmSSWhf+gL8qBnC3OQ4k9nQBlz6XV75q4puJdRh5oQ=;
 b=g4L2M9WLoRoWwoOU6wr9RAaEEx89ii3YlSfZuKqAD3eGIHr+k0k5frBgxTdnAuAytU
 VHLKAqlDK3glR5yPpOS+OjhhFCxmy7pLvfDE6mzPgvjv9D//GU3KtC8Dx+fQ7LQsDrb5
 sW74d9Nvw55G6PbGRmV1h5rMhMVkBzd1sIFsR2NGPQVtB70RESlAy4IIBrGpAhJcNtgp
 RcAufHj9Hb/oLj7cE9slzlvD2Z/UW1hGKKYqFdQ9gGSwRgZzHbGjKMK3BZj1Ct40mwF5
 7rWpmmaCemDwFnEZKGdYmv5CbnK+qqUyFNpaZ1TD26mLs2C5/teXexcJk3ZCfE/ishd3
 hSoQ==
X-Gm-Message-State: AOAM531gPrCabY9RTlLFipjp6f9JEByQ0u+dJNQEI1HAXEZAD+uEuNcn
 SoZlCYj/pHgraSsnbHZPdZc/z2oAJWcfSA==
X-Google-Smtp-Source: ABdhPJwU3S8zxQZfk/4/guwvvcWCviV/GDT2HPuV902tWIC0OF7BF92PRqsovzhLAKjY8UwmuTfbDQ==
X-Received: by 2002:a92:6f0c:: with SMTP id k12mr5553287ilc.240.1637340625791; 
 Fri, 19 Nov 2021 08:50:25 -0800 (PST)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id h10sm203177ild.85.2021.11.19.08.50.23
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Nov 2021 08:50:24 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id x10so13538715ioj.9
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 08:50:23 -0800 (PST)
X-Received: by 2002:a05:6638:190f:: with SMTP id
 p15mr29151871jal.82.1637340622932; 
 Fri, 19 Nov 2021 08:50:22 -0800 (PST)
MIME-Version: 1.0
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
 <20211119115419.505155b5@eldfell>
 <CAF6AEGus9CtgjvpJRX-YPkrrNeE+--9KeGxKBN_U=aOzzRE8FA@mail.gmail.com>
In-Reply-To: <CAF6AEGus9CtgjvpJRX-YPkrrNeE+--9KeGxKBN_U=aOzzRE8FA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 19 Nov 2021 08:50:10 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XARhZoj+0p-doxcbC=4K+NuMc=uR6wqG6kWk-MkPkNdQ@mail.gmail.com>
Message-ID: <CAD=FV=XARhZoj+0p-doxcbC=4K+NuMc=uR6wqG6kWk-MkPkNdQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
To: Rob Clark <robdclark@gmail.com>
Cc: Pekka Paalanen <ppaalanen@gmail.com>,
 Brian Norris <briannorris@chromium.org>, 
 Rob Clark <robdclark@chromium.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 David Airlie <airlied@linux.ie>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, linux-input@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_085032_392452_F2C189FB 
X-CRM114-Status: GOOD (  54.11  )
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

Hi,

On Fri, Nov 19, 2021 at 8:39 AM Rob Clark <robdclark@gmail.com> wrote:
>
> On Fri, Nov 19, 2021 at 1:54 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> >
> > On Thu, 18 Nov 2021 15:30:38 -0800
> > Rob Clark <robdclark@gmail.com> wrote:
> >
> > > On Thu, Nov 18, 2021 at 2:39 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > > >
> > > > On Wed, 17 Nov 2021 14:48:40 -0800
> > > > Brian Norris <briannorris@chromium.org> wrote:
> > > >
> > > > > A variety of applications have found it useful to listen to
> > > > > user-initiated input events to make decisions within a DRM driver, given
> > > > > that input events are often the first sign that we're going to start
> > > > > doing latency-sensitive activities:
> > > > >
> > > > >  * Panel self-refresh: software-directed self-refresh (e.g., with
> > > > >    Rockchip eDP) is especially latency sensitive. In some cases, it can
> > > > >    take 10s of milliseconds for a panel to exit self-refresh, which can
> > > > >    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
> > > > >    with an input_handler boost, that preemptively exits self-refresh
> > > > >    whenever there is input activity.
> > > > >
> > > > >  * GPU drivers: on GPU-accelerated desktop systems, we may need to
> > > > >    render new frames immediately after user activity. Powering up the
> > > > >    GPU can take enough time that it is worthwhile to start this process
> > > > >    as soon as there is input activity. Many Chrome OS systems also ship
> > > > >    with an input_handler boost that powers up the GPU.
> > > > >
> > > > > This patch provides a small helper library that abstracts some of the
> > > > > input-subsystem details around picking which devices to listen to, and
> > > > > some other boilerplate. This will be used in the next patch to implement
> > > > > the first bullet: preemptive exit for panel self-refresh.
> > > > >
> > > > > Bits of this are adapted from code the Android and/or Chrome OS kernels
> > > > > have been carrying for a while.
> > > > >
> > > > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > > > ---
> > > >
> > > > Thanks Simon for the CC.
> > > >
> > > > Hi Brian,
> > > >
> > > > while this feature in general makes sense and sounds good, to start
> > > > warming up display hardware early when something might start to happen,
> > > > this particular proposal has many problems from UAPI perspective (as it
> > > > has none). Comments below.
> > > >
> > > > Btw. if PSR is that slow to wake up from, how much do you actually gain
> > > > from this input event watching? I would imagine the improvement to not
> > > > be noticeable.
> > > >
> > > > I think some numbers about how much this feature helps would be really
> > > > good, even if they are quite specific use cases. You also need to
> > > > identify the userspace components, because I think different display
> > > > servers are very different in their reaction speed.
> > > >
> > > > If KMS gets a pageflip or modeset in no time after an input event, then
> > > > what's the gain. OTOH, if the display server is locking on to vblank,
> > > > there might be a delay worth avoiding. But then, is it worth
> > > > short-circuiting the wake-up in kernel vs. adding a new ioctl that
> > > > userspace could hit to start the warming up process?
> > >
> > > In my measurements, it takes userspace a frame or two to respond and
> > > get to the point of starting to build cmdstream (before eventually
> > > doing atomic/pageflip ioctl).. possibly longer if you don't also have
> > > a similar boost mechanism to spool up cpufreq
> > >
> > > But the important thing, IMO, is that atomic/pageflip ioctl is the
> > > cumulation of a long sequence of events.. input-boost is letting
> > > whatever it may be (PSR exit, GPU resume, etc) happen in parallel with
> > > that long sequence.
> >
> > Right, exactly. That is why I was musing about a *new* ioctl that
> > userspace could hit as soon as any input device fd (or network fd!)
> > shows signs of life. Would that be enough, avoiding all the annoying
> > questions about which input and DRM devices should participate here
> > (and what about non-input devices that still want to trigger the
> > warm-up, like network traffic, e.g. remote control?), or does it really
> > need to be kernel internal to be fast enough?
> >
> > As Brian wrote about his quick hack to test that via debugfs, sounds
> > like the userspace solution would be totally sufficient.
> >
>
> The question is, I think we want to use this for at least a couple
> different things.. PSR exit, and/or early GPU wakeup/boost.  So I'm
> not quite sure where/what this ioctl should be.  Different drivers may
> have different uses.  Also, because of the CrOS userspace sandbox
> architecture, the place that could do a kms ioctl isn't really the
> place that would know when to call the ioctl.
>
> But if we want to move the policy out of the kernel, one approach
> would just be to have some sysfs where userspace could configure the
> input_device_id[] filter..

While I'm fine with being overridden, in my mind:

1. Having a simple set of rules that works for "simple" devices that's
built-in to the kernel seems like a nice thing to have. Something like
what Brian has is pretty simple and works for a pretty wide variety of
devices. It's also not very much code nor all that complex.

2. IMO the answer for some of the more complex use cases is to allow
them to disable the simple in-kernel solution (we can debate about
Kconfig, sysfs, or ioctl) and control this with whatever complicated
logic they want to implement in userspace. If it were up to me, I
would make this as raw as possible. I wouldn't add optimizations to
make it easy for userspace to specify which input devices or anything,
I'd just let userspace figure out how to pay attention to the events
it cares about, make decisions, and then tell the kernel about it.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
