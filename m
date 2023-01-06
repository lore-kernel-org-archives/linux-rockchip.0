Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0693CC54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 18:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cUDVxrkULmAvJt1yT5rXapJ40M4C/7Y1DwBcsEzDXs=; b=U15XZ1mH+MQv4B
	bk8adwIhSqSfFi8SKmw2p+4e7fZcQUolj9W8A02kesa0KFEfzwuyrJetIF4xqmT/qhm80WR3ct2gw
	SBygOpcyIqQ4T/tl4F3RSj6LQPayKG7i+PKF+f+oTWsHdP3cL6UKSQi+0AgL+S1uqTZ6HcWXh9mIG
	tBJ95XAHRODltoBo/1cofQRcpF9WC/zRMqxWDzfEimqo3tmeJbUt/IPVeNjxvPf8ezG5F6l9+zxOI
	gVkGXuHAC2qFz8AlSzBEh1bMl4Ej/eSHyOfSCc7jziNlHUy2Eo8TsfThOLKTqlzaItJMTSC4CpY+T
	IRABqZq27Hr+dEYh7EMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDrKj-00ELo4-9M; Fri, 06 Jan 2023 18:20:49 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDrKf-00ELm4-KG
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 18:20:47 +0000
Received: by mail-wr1-x42c.google.com with SMTP id bn26so2060347wrb.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 10:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aemmpY4lie0lDuI7ZJtcygqgFQlTvEL2aaHOwmDLGio=;
        b=BOSJE7k9oAgjMKUPmDPqU5v3aotgQDyoBIuL+1/3CyEnq/QGAKfiOSwoatlql7i8sb
         X9MHzMrnFyc0xhjunyG27PnLXeW1c+AJ+c1pE9XeqThLDFOsFSEvc/MBSYyMaSCfCYBf
         KpQMEMdNYa2d9pub8CX6UAyoih+vUQoZ8TXSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aemmpY4lie0lDuI7ZJtcygqgFQlTvEL2aaHOwmDLGio=;
        b=cijNSw9FOvozAbq2Bih0+txQ4pyC3xTVHGf8NF+1Gp+mRcxl1JS99Wi95+kiFfzSop
         zkbn7QqEYy6ZvpzGJOv293KQa+00uUvI1L1yoygYBhB9B31BLheRkxmpFfT64SQp+x5I
         N1PuoQk/vkVDJyNYX4BwYfOp4igC0LbNjZ8naBjRgobsY9R6OvVJjKW4FyN/as+2sfwl
         QIxbw+ujkWODHkDkfPYOX8guDVQbu4fby/gX8EH4Vfin50vpgSeH9/PEeGo+NXdbyEMR
         kN+B79XknaerTvzBm+/CIJO57pNBoR6ys1D+gczjf4Ugyuwks2N50E/eMX+hkdg7pOLs
         0OzQ==
X-Gm-Message-State: AFqh2kpMzf65U1/5Wq2t3BttEMDAddk7wfJCSoWXfK9GpY4GNdtBd/80
	MLENM7yUClrMvWTiPf6e5us+bA==
X-Google-Smtp-Source: AMrXdXuslGmA1psv/BImwtT+vCgcM1mmsJIsu6DTNKX2UGWUkyyOlwD0Yl43/lZw2WQyQlHD+vDb0Q==
X-Received: by 2002:a05:6000:691:b0:296:8c1f:3786 with SMTP id bo17-20020a056000069100b002968c1f3786mr15177819wrb.9.1673029243548;
        Fri, 06 Jan 2023 10:20:43 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id j17-20020adff011000000b002a64e575b4esm1862163wro.47.2023.01.06.10.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 10:20:42 -0800 (PST)
Date: Fri, 6 Jan 2023 19:20:40 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7hmeBBRqgnwQ2O6@phenom.ffwll.local>
Mail-Followup-To: Brian Norris <briannorris@chromium.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
 <Y7hjte/w8yP2TPlB@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7hjte/w8yP2TPlB@google.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_102045_698773_3D4076A4 
X-CRM114-Status: GOOD (  45.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Fri, Jan 06, 2023 at 10:08:53AM -0800, Brian Norris wrote:
> Hi Daniel,
> 
> On Fri, Jan 06, 2023 at 06:53:49PM +0100, Daniel Vetter wrote:
> > On Thu, Jan 05, 2023 at 05:40:17PM -0800, Brian Norris wrote:
> > > The self-refresh helper framework overloads "disable" to sometimes mean
> > > "go into self-refresh mode," and this mode activates automatically
> > > (e.g., after some period of unchanging display output). In such cases,
> > > the display pipe is still considered "on", and user-space is not aware
> > > that we went into self-refresh mode. Thus, users may expect that
> > > vblank-related features (such as DRM_IOCTL_WAIT_VBLANK) still work
> > > properly.
> > > 
> > > However, we trigger the WARN_ONCE() here if a CRTC driver tries to leave
> > > vblank enabled here.
> > > 
> > > Add a new exception, such that we allow CRTCs to be "disabled" (with
> > > self-refresh active) with vblank interrupts still enabled.
> > > 
> > > Cc: <stable@vger.kernel.org> # dependency for subsequent patch
> > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > ---
> > > 
> > >  drivers/gpu/drm/drm_atomic_helper.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> > > index d579fd8f7cb8..7b5eddadebd5 100644
> > > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > > @@ -1207,6 +1207,12 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
> > >  
> > >  		if (!drm_dev_has_vblank(dev))
> > >  			continue;
> > > +		/*
> > > +		 * Self-refresh is not a true "disable"; let vblank remain
> > > +		 * enabled.
> > > +		 */
> > > +		if (new_crtc_state->self_refresh_active)
> > > +			continue;
> > 
> > This very fishy, because we check in crtc_needs_disable whether this
> > output should stay on due to self-refresh. Which means you should never
> > end up in here.
> 
> That's not what crtc_needs_disable() does w.r.t. self-refresh. In fact,
> it's the opposite; see, for example, the
> |new_state->self_refresh_active| clause. That clause means that if we're
> entering self-refresh, we *intend* to disable (i.e., we return 'true').
> That's because like I mention above, the self-refresh helpers overload
> what "disable" means.
> 
> I'll also add my caveat again that I'm a bit new to DRM, so feel free to
> continue to correct me if I'm wrong :) Or perhaps Sean Paul could
> provide second opinions, as I believe he wrote this stuff.

I already replied in another thread with hopefully less nonsense from my
side :-)

> > And yes vblank better work in self refresh :-) If it doesn't, then you
> > need to fake it with a timer, that's at least what i915 has done for
> > transparent self-refresh.
> 
> OK! Then that sounds like it at least ACKs my general idea for this
> series. (Michel and I poked at a few ideas in the thread at [1] and
> landed on approx. this solution, or else a fake/timer like you suggest.)

Yeah once I stopped looking at this the wrong way round it does make sense
what you're doing. See my other reply, I think with just this series here
the vblanks still stall out? Or does your hw actually keep generating
vblank irq with the display off?

> > We might need a few more helpers. Also, probably more igt, or is this
> > something igt testing has uncovered? If so, please cite the igt testcase
> > which hits this.
> 
> The current patch only fixes a warning that comes when I try to do the
> second patch. The second patch is a direct product of an IGT test
> failure (a few of kms_vblank's subtests), and I linked [1] the KernelCI
> report there.

Ah yeah that makes sense. Would be good to cite that in this patch too,
because I guess the same kms_vblank tests can also hit this warning here?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
