Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3606BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 20:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+UgMQRNU53TKpDyZqaefh7iK7itxFWMSMA7tJb3S18=; b=uxp7ai9JF9v2c0
	kw6vvRNgZdRRSAMgaAxgWCkxsq/8cSK70aLsbriA121XF/d+qC7CVQpqFeDoOdo58eHMZi+Ekixxw
	moUz+zSqTl53qjqQveVgIWnrJfajp62sE8rjNwutvmD/YYouI38B0WRLvg92FF6UkudDEGCs3zn7O
	RsPKV/L4hwf1YfM5kEPz/06uyfbsxP4gcKCfonuKT6LqXQp7KU1+cTmlPNE3u2RX7LUWDRtevLMq6
	Ogs9YNRVrFEpaSiL+BKxVJv20or5G7jcKdStpWI69cCQFx1QgU3OiZtWClnWI3RmI2YJyMYQCPCTS
	Xdl47w4pWkzC/XsZ2FJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms9qz-006fRb-Kz; Tue, 30 Nov 2021 20:35:53 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms9qw-006fQK-Am
 for linux-rockchip@lists.infradead.org; Tue, 30 Nov 2021 20:35:52 +0000
Received: by mail-pl1-x62d.google.com with SMTP id n8so15882359plf.4
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Nov 2021 12:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=y/+JMc6P+2DILAxzT6vHIVjj72p4WgUHRERhEb0JWAI=;
 b=TRDZdT5/0nAgD8EJU47Q+qOUulsY1koh+IROAAXpxHwgxkiKbXJuVwaFXQzsvn8/zG
 UeDFKIO5jIkbZxbbRjCxeGDENrUMV5UgdvAw/4E7KCZUKBInK4KiurmZMv1kGQbc4ove
 bQm7PltsGlI1Tl/UEc0ATdxDhnW69YHsxpjh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=y/+JMc6P+2DILAxzT6vHIVjj72p4WgUHRERhEb0JWAI=;
 b=KyeEdwLbcy5/aYWRJFwrS1+T66Yd2YmS2wKjNKveh6yCa5mjMh8UYBOP40e14i2Tux
 rx9rZO6Do0cl6EMA/75u7RfSFdxkFdbyDMiYg7aQk9bfZw/7k9IwXn86J8xvWjNLxqBH
 pOlxnWG8lxtwcHQyDW0imHEROpwARfTie3G9jSx3YxwKngbg+ISI9GHKrWAsKlYuGPBr
 L3MxExLJDE/XdSCDbHwHA+PdGRLKTONaWUtoN04hwXWgC08FuFaO4QoblgPEsktHr6tk
 N2QtWvX2GwX/m+qSJQ4H4DQoQpBDVMc5m7PvFZreChYD2aq3J5lI0cuusvqSXliPORnW
 KOFA==
X-Gm-Message-State: AOAM530XpckNS9ZS29f4w9h3iWrm/iwzD23bEZJKDYDyXq5AK0kM9mjx
 ETNNYTpMcPq2dVrgFnbVV/v5EA==
X-Google-Smtp-Source: ABdhPJwBQcxNDL+HCc+SWd+QFd0ftGsNC3PgaBIbyK3wmRUzN+yZtaqDVNIwVDRr0TgCWO6pZ5ei1g==
X-Received: by 2002:a17:90b:1bcf:: with SMTP id
 oa15mr1619570pjb.161.1638304548319; 
 Tue, 30 Nov 2021 12:35:48 -0800 (PST)
Received: from google.com ([2620:15c:202:201:7a91:7d6:9e7b:1894])
 by smtp.gmail.com with ESMTPSA id mz7sm3330437pjb.7.2021.11.30.12.35.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 12:35:47 -0800 (PST)
Date: Tue, 30 Nov 2021 12:35:45 -0800
From: Brian Norris <briannorris@chromium.org>
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 linux-input@vger.kernel.org, Simon Ser <contact@emersion.fr>,
 Peter Hutterer <peter.hutterer@who-t.net>
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YaaLITQF+lngE+VZ@google.com>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell> <YZcB4ooqpvP3gHdx@google.com>
 <20211119123841.1d628cb6@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211119123841.1d628cb6@eldfell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_123550_431374_1A1DB833 
X-CRM114-Status: GOOD (  64.05  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Pekka,

On Fri, Nov 19, 2021 at 12:38:41PM +0200, Pekka Paalanen wrote:
> On Thu, 18 Nov 2021 17:46:10 -0800
> Brian Norris <briannorris@chromium.org> wrote:
> > On Thu, Nov 18, 2021 at 12:39:28PM +0200, Pekka Paalanen wrote:
> > > On Wed, 17 Nov 2021 14:48:40 -0800
> > > Brian Norris <briannorris@chromium.org> wrote:
> > > If KMS gets a pageflip or modeset in no time after an input event, th=
en
> > > what's the gain. OTOH, if the display server is locking on to vblank,
> > > there might be a delay worth avoiding. But then, is it worth
> > > short-circuiting the wake-up in kernel vs. adding a new ioctl that
> > > userspace could hit to start the warming up process?  =

> > =

> > Rob responded to the first part to some extent (there is definitely gain
> > to be had).
> > =

> > To the last part: I wrote a simple debugfs hook to allow user space to
> > force a PSR exit, and then a simple user space program to read input
> > events and smash that debugfs file whenever it sees one. Testing in the
> > same scenarios, this appears to lose less than 100 microseconds versus
> > the in-kernel approach, which is negligible for this use case. (I'm not
> > sure about the other use cases.)
> > =

> > So, this is technically doable in user space.
> =

> This is crucial information I would like you to include in some commit
> message. I think it is very interesting for the reviewers. Maybe also
> copy that in the cover letter.
> =

> In my opinion there is a clear and obvious decision due that
> measurement: Add the new ioctl for userspace to hit, do not try to
> hardcode or upload the wake-up policy into the kernel.

Perhaps.

I'll admit, I'm not eager to go write the fd-passing solutions that
others are designing on the fly. I'm currently torn on whether I'll just
live with this current patch set out-of-tree (or, y'all can decide that
a simple, 99% working solution is better than no solution), because it's
simple; or possibly figuring out how to utilize such an ioctl cleanly
within our display manager. I'm not super hopeful on the latter.

IOW, I'm approximately in line with Doug's thoughts:
https://lore.kernel.org/all/CAD=3DFV=3DXARhZoj+0p-doxcbC=3D4K+NuMc=3DuR6wqG=
6kWk-MkPkNdQ@mail.gmail.com/
But then, we're obviously biased.

> > I can't speak to the ease of _actually_ integrating this into even our
> > own Chrome display manager, but I highly doubt it will get integrated
> > into others. I'd posit this should weigh into the relative worth, but
> > otherwise can't really give you an answer there.
> =

> I think such a thing would be very simple to add to any display server.
> They already have hooks for things like resetting idle timeout timers on
> any relevant input event.
> =

> > I'd also note, software-directed PSR is so far designed to be completely
> > opaque to user space. There's no way to disable it; no way to know it's
> > active; and no way to know anything about the parameters it's computing
> > (like average entry/exit delay). Would you suggest a whole set of new
> > IOCTLs for this?
> =

> Just one ioctl on the DRM device: "Hey, wake up!". Because that's what
> your patch does in-kernel, right?

Well, we'd at least want something to advertise that the feature does
something ("is supported") I think, otherwise we're just asking user
space to do useless work.

> If there are use case specific parameters, then how did you intend to
> allow adjusting those in your proposal?

Another commenter mentioned the latency tradeoff -- it's possible that
there are panels/eDP-links that resume fast enough that one doesn't care
to use this ioctl. For an in-kernel solution, one has all the data
available and could use hardware information to make decisions, if
needed. For a user space solution, we won't have any of that, and we'd
have to work to expose that information.

I suppose we could ignore that problem and only expose a minimal UAPI
until we need something more, but it feels like exposing a UAPI for
something is a critical point where one should make sure it's reasonably
descriptive and useful.

> > > How do you know userspace is using this input device at all? If
> > > userspace is not using the input device, then DRM should not be openi=
ng
> > > it either, as it must have no effect on anything.
> > > =

> > > If you open an input device that userspace does not use, you also cau=
se
> > > a power consumption regression, because now the input device itself is
> > > active and possibly flooding the kernel with events (e.g. an
> > > accelerometer).  =

> > =

> > Well, I don't think accelerometers show up as input devices, but I
> > suppose your point could apply to actual input devices.
> =

> My understanding is that accelerometers are evdev (input) devices,
> especially when used as input e.g. for controlling games. I'm not aware
> of any other interface for it.

I'm not familiar with game-controlling accelerometers, but many types of
accelerometers are serviced by drivers/iio/.

And even if they register as input devices, do they match the ID list in
this patch?

> Even audio sockets are input devices for detecting whether a plug has
> been plugged in, but those probably wouldn't flood anything.

They also won't match the input_handler ID list, because they won't
support the key or position combinations in the heuristic.

> > > Yet another problem here is that this completely ignores the concept =
of
> > > physical seats. Of course it does so, because seats are a pure
> > > userspace concept.
> > > =

> > > The kernel VT console already has problems because the kernel has no
> > > concept of seats, which means that if there is a second seat defined =
and
> > > a desktop running on it, while the first seat is in the normal VT text
> > > mode, then everything typed in the desktop will be delivered to the VT
> > > shell as well! (This has a possible workaround in userspace [1], by o=
pening
> > > the evdev input devices in some kind of exclusive mode - which is not
> > > common practise AFAIK.)  =

> > =

> > Sure.
> > =

> > I'd bet the intersection of systems that use SW-directed PSR and
> > "multi-seat" is negligibly close to zero, but I can't guarantee that.
> > Chalk one up for a user space policy.
> =

> Your cover letter has also the other bullet point: ramping up GPUs.
> That applies to a lot more systems than PSR, right?
> =

> Maybe that is an acceptable trade-off: be 100 =B5s faster (your
> measurement) by ramping up all GPUs in a system instead of only the
> relevant ones?
> =

> Or maybe that will hurt normal gaming computers by ramping up the iGPU
> when the OS and game only uses the dGPU, which makes iGPU eat away the
> CPU power budget, causing the CPU to slow down? I suppose that would be
> handled by ramping up only GPUs that userspace has opened.

FWIW, the current work we have out-of-tree involves only select GPU
drivers that know they are slow to ramp up. If this were generalized,
then yes, it could potentially have undesireable side effects. I'm
certainly not an expert on Rob's work though, so I can't speak to this
very much, but I imagine we could resolve the {d,i}GPU problem easily.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
