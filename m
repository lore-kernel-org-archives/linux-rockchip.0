Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E67CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 22:30:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD19561B51
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 22:30:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DD19561B51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYJgzKXshSocGSAdUCwEhH6oBD5CJu0zWV5uvAfAo/I=; b=dFGGXyWwrOEvvl
	2X59FLOyUR/2xpys3D+CfUV3m/Gg1/A5Na5xyOLheiJ5JiCLELpW6onQF/sh+FcZ1aY6uNjRePE8+
	dTElxW4dZe2FTmGBporHA0SCrqBT0UVNuXDXSHypvoowJFQ3zKXBushPR/QJGBMR50Xa2uZMLo82O
	6RebygtMhVhkDsKhDJn+fW8U5VPbw2YSMkBe63iLii4bIdOacBFae5FCpPmVz4Y43WGlQ1nKohdzp
	l24TcKCgY0KmhYh2Qf/WRBfyxZOFcnqrmCQsbZQMjagU73yYkpAtsVgmr2wr35QAQOL1iRjqgPR9T
	VAI+cW4qq2o4tXUKj91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnTRh-006SYO-Uu; Wed, 17 Nov 2021 22:30:26 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnTKJ-006R3M-QI
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 22:22:49 +0000
Received: by mail-wm1-x329.google.com with SMTP id i12so3557169wmq.4
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 14:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mwlYRnJRhyUd0Ty1gYVfbTyggiaaMRX+fkzIV9N7tT8=;
 b=bFGtBekwIyD0wNwcj+WiwwQ7uWKNSgUvW1qT+CSRBd63xgOJFEjNsm07rav7dRniM4
 1PzMwAzqXtiYNOyGDMpWCg0ex30Illk0HaJWME11/Lxc0MfOnyla9jsanpwgjuKojdSr
 +MLxVRtU4HWF3fOI63ZcKvzYzEr/Q2Sy86OefzZW9fRzHemi+SnLqU8CrVnh6BzRs87H
 1eADtA1FKHnP8fuMs3MoITt6Zkqfr0JPAf/54rHjT3Htab8tXOC3BL4Z8W+CJkGIeKWd
 gmlph2ZJ6KVKoZ8DMInwjG9xMcXpMwsTcQEzOWS9K5L++tqqFZ+sm3rhIirnCRd9nhTD
 q9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mwlYRnJRhyUd0Ty1gYVfbTyggiaaMRX+fkzIV9N7tT8=;
 b=vgZ4cJ5zUjvfs/hW5hPH6GJUsPLZsUWhcT2SRdpvQHo+p84ys+IX/M6uX6YPeM5rTM
 +/tS4QWMM3TNgZRH2laAhPsRG+sPzDR7kpAoBTZzjFVA1PepuqSSjXuxpU4TERygRJmL
 NWSZY9Be6KpNLyOHCxkbyQ8Sqw9Z+ptU0NW5VHkKfYBGZ5+677wDoScrUQDuk58CyMXe
 Z6TC2EKNoUQZSQO77Pa9H4lqtfemm3aa05isumx4232/ftjZrOSxy7dz6Ac2TF3pZF/K
 X7NkO9xzg3krbcu6Q+kg7ttaDdQKjl5Q90+lPvPU1qqTv6etm3xZENxBiDMmE0hgpe0U
 GX/Q==
X-Gm-Message-State: AOAM533UPQaaCWCE0s1u698DGYt8VfflFPeQ0MjrJ3YrQ3OYMWL9CCrH
 +icXLLFGvKkHaa4odE0vZuX59JPlsfJoOXZNvKU=
X-Google-Smtp-Source: ABdhPJz8mhkdwzrUhNDhYZ+5LsBGHu8usMBbpvRQFUY3sKEpdkbf/e2ABAowrlGzo9nz4Y5f/AstdH0/wy05kI904Lg=
X-Received: by 2002:a05:600c:4e51:: with SMTP id
 e17mr3954574wmq.127.1637187763032; 
 Wed, 17 Nov 2021 14:22:43 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
In-Reply-To: <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 17 Nov 2021 14:27:47 -0800
Message-ID: <CAF6AEGt6CdoXsuKgfoUYUuq1V7_besLCEkmfGQRZD3hdr-ym7Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/input_helper: Add new input-handling helper
To: Doug Anderson <dianders@chromium.org>
Cc: Brian Norris <briannorris@chromium.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-input@vger.kernel.org, David Airlie <airlied@linux.ie>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_142247_898654_BAE7C2C2 
X-CRM114-Status: GOOD (  36.12  )
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

On Fri, Nov 12, 2021 at 4:52 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Wed, Nov 3, 2021 at 4:40 PM Brian Norris <briannorris@chromium.org> wrote:
> >
> > A variety of applications have found it useful to listen to
> > user-initiated input events to make decisions within a DRM driver, given
> > that input events are often the first sign that we're going to start
> > doing latency-sensitive activities:
> >
> >  * Panel self-refresh: software-directed self-refresh (e.g., with
> >    Rockchip eDP) is especially latency sensitive. In some cases, it can
> >    take 10s of milliseconds for a panel to exit self-refresh, which can
> >    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
> >    with an input_handler boost, that preemptively exits self-refresh
> >    whenever there is input activity.
> >
> >  * GPU drivers: on GPU-accelerated desktop systems, we may need to
> >    render new frames immediately after user activity. Powering up the
> >    GPU can take enough time that it is worthwhile to start this process
> >    as soon as there is input activity. Many Chrome OS systems also ship
> >    with an input_handler boost that powers up the GPU.
> >
> > This patch provides a small helper library that abstracts some of the
> > input-subsystem details around picking which devices to listen to, and
> > some other boilerplate. This will be used in the next patch to implement
> > the first bullet: preemptive exit for panel self-refresh.
> >
> > Bits of this are adapted from code the Android and/or Chrome OS kernels
> > have been carrying for a while.
> >
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> >
> >  drivers/gpu/drm/Makefile           |   3 +-
> >  drivers/gpu/drm/drm_input_helper.c | 143 +++++++++++++++++++++++++++++
> >  include/drm/drm_input_helper.h     |  22 +++++
> >  3 files changed, 167 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/gpu/drm/drm_input_helper.c
> >  create mode 100644 include/drm/drm_input_helper.h
> >
> > diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> > index 0dff40bb863c..378761685b47 100644
> > --- a/drivers/gpu/drm/Makefile
> > +++ b/drivers/gpu/drm/Makefile
> > @@ -49,7 +49,8 @@ drm_kms_helper-y := drm_bridge_connector.o drm_crtc_helper.o drm_dp_helper.o \
> >                 drm_scdc_helper.o drm_gem_atomic_helper.o \
> >                 drm_gem_framebuffer_helper.o \
> >                 drm_atomic_state_helper.o drm_damage_helper.o \
> > -               drm_format_helper.o drm_self_refresh_helper.o
> > +               drm_format_helper.o drm_self_refresh_helper.o \
> > +               drm_input_helper.o
>
> Note that the Makefile part conflicts with drm-misc-next right now.
> It's not very hard to resolve, but since this would likely land there
> maybe it'd be nice to resolve?
>
> Other than that, this seems sane to me and much better than copying
> this between places, so assuming that the build problems get resolved
> then I'm happy.
>
> I guess one random thought I had is whether there would be an
> appropriate place to put this that _wasn't_ in DRM. I still wonder
> whether we'll ever try to upstream something like the cpufreq boost
> driver that we're carrying around and using in Chrome OS. If so, it
> would want to use these same helpers and it'd be pretty awkward for it
> to have to reach into DRM. ...any chance we could just land these
> helpers somewhere more generic?
>

One of the problems with cpu input boost is the cooldown period
(anti-spacebar-heater) aspect vs relatively short boost period.. in
that it is short enough that you need to consider that certain keys
(ie. modifier keys) should boost on key-release instead of key-press.

That isn't really an issue for triggers to exit PSR, or what we use
input-boost for downstream in drm/msm (where it isn't really boost,
just an early trigger to start powering up the GPU if it is suspended)

BR,
-R

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
