Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D9FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 10:01:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DEC4661AD2
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 10:01:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DEC4661AD2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJUp/SRgfCyOeibudYBBZl8pL04vb0EELEa0rWgvbvU=; b=VJZ8HK8gKY1LHp
	mmBO4VauWpJbHm+MK6SsTloTpwGi1pSbkVjWLqE/6rsV8VKWkawNx5c72CKU31KCT/IMVKjY4K1Ra
	uENLn53FNzoDSPdHfm6mdN48cFxifdM3eJACK2huYYwdSFgo9XYK3sf7+cbSC8NgHPwHO/XeIL6w1
	81sCQ/W/AY9vViWplYXxd3sFc05/thEahg8PFbLM2u7l9Y1BdcD4qaOuXYuyhB1O4GQGp4i5aLkAJ
	D/dYAxzJdA4JKs87QivOaPM0JL7WhIQpM9DrLbwuW+QDIRXpTWX+PhMLHLFb6egFsYycg9odEXaFG
	MZ9ruaSgssi0HspbRuyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0hy-00A484-EV; Fri, 19 Nov 2021 10:01:26 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0hv-00A46v-9z
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 10:01:25 +0000
Received: by mail-ed1-x530.google.com with SMTP id y12so40383552eda.12
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 02:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=faisa42i+JkdKwP8h3lJgoixQnZuCwS4omXJL7Az6Fo=;
 b=AQZ6UaLr00vs460QHnYji8REBLc6ZpXBPqhYvHck0dhgv0TNHN9fQO3bm0tMOk4xyS
 2GSVmipWL7PmMNIn6Q4f1w09pZA+HNgUBP+imD+9PAH3XK2S4UEu/SxQ6rA2vlHwtFwT
 m15BJfhOgZyboBnGqg82+tPwYBAui4zCdK41w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=faisa42i+JkdKwP8h3lJgoixQnZuCwS4omXJL7Az6Fo=;
 b=wRw907NQoQHEUb89AVv3c/MEoOK88ckB4sAQWD/lovJX4DMRVeV0/Gscp7K8W+Vx0E
 YtvtmRrsSp7rHRWrvdtRUDiRc3NQL3K049rHOtWh4BZnryjWqE7SKxZlGpbBs0nIvieB
 fjfl0Kmfr0hOta+ajo8fYqyNjCZyWRgg98wOnanWZkRVq1NaK/+L3/uovZBHk/zawDt5
 WmL2yspS/ZDNH8zPff9BE/tzWTza9n+D7XMXU31nTJn51B+p1g+z+G9YvPAGCFmaOcfv
 kO/Kh0EewffSH5eIhZ1gPTlvd3LVbX5KE19psQ0YYIysQ/BS3anXt1r0sYN4Ix7EjuVD
 sI9g==
X-Gm-Message-State: AOAM530MKbidxuOApIAZaIjBG+MmPeL07OtGfAR0dcuo+T3IiznAx94N
 gY3SLsE4eVzPFkvimvASnd73hQ==
X-Google-Smtp-Source: ABdhPJyNaia1PS7Z6q19PwDKk4GrhMtmufhRVt6QW/rreoJ6G0yF18wMZ0nYWD4E3ysw+lBZF4Ov9g==
X-Received: by 2002:a05:6402:1d48:: with SMTP id
 dz8mr22461836edb.100.1637316080619; 
 Fri, 19 Nov 2021 02:01:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e1sm284559edc.27.2021.11.19.02.01.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 02:01:20 -0800 (PST)
Date: Fri, 19 Nov 2021 11:01:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Norris <briannorris@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Doug Anderson <dianders@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Rob Clark <robdclark@gmail.com>, linux-input@vger.kernel.org,
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YZd17jm5Nkfu5YRO@phenom.ffwll.local>
Mail-Followup-To: Brian Norris <briannorris@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Doug Anderson <dianders@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Rob Clark <robdclark@gmail.com>, linux-input@vger.kernel.org,
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <YZYXR4u6VBEi4qnM@phenom.ffwll.local> <YZap4zKo8D5eZc1y@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZap4zKo8D5eZc1y@google.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_020123_380221_14A1FCEF 
X-CRM114-Status: GOOD (  57.86  )
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

On Thu, Nov 18, 2021 at 11:30:43AM -0800, Brian Norris wrote:
> Hi Daniel,
> 
> Thanks for the review. Lots to address elsewhere, but I can respond
> here first:
> 
> On Thu, Nov 18, 2021 at 10:05:11AM +0100, Daniel Vetter wrote:
> > On Wed, Nov 17, 2021 at 02:48:40PM -0800, Brian Norris wrote:
> > > --- a/drivers/gpu/drm/Kconfig
> > > +++ b/drivers/gpu/drm/Kconfig
> > > @@ -79,9 +79,15 @@ config DRM_DEBUG_SELFTEST
> > >  
> > >  	  If in doubt, say "N".
> > >  
> > > +config DRM_INPUT_HELPER
> > > +	def_bool y
> > > +	depends on DRM_KMS_HELPER
> > > +	depends on INPUT
> > 
> > Uh please no configs for each thing, it just makes everything more
> > complex. Do we _really_ need this?
> 
> First, it's not a configurable option (a user will never see this nor
> have to answer Y/N to it); it only serves as an intermediary to express
> the CONFIG_INPUT dependency (which is necessary) without making
> DRM_KMS_HELPER fully depend on CONFIG_INPUT. (We should be able to run
> display stacks without the input subsystem.)

I'm not so much worried about the user cost, but the maintenance cost.
Kbuild config complexity is ridiculous, anything that adds even a bit is
really silly.

> The closest alternative I can think of with fewer Kconfig symbols is to
> just use CONFIG_INPUT directly in the code, to decide whether to provide
> the helpers or else just stub them out. But that has a problem of not
> properly expressing the =m vs. =y necessity: if, for example,
> CONFIG_DRM_KMS_HELPER=y and CONFIG_INPUT=m, then we'll have linker
> issues.

Usually this is done by providing static inline dummy implementations in
the headers. That avoids having to sprinkle new Kconfig symbols all over.

> In short, yes, I think we really need this. But I'm not a Kbuild expert.
> 
> > > diff --git a/include/drm/drm_input_helper.h b/include/drm/drm_input_helper.h
> > > new file mode 100644
> > > index 000000000000..7904f397b934
> > > --- /dev/null
> > > +++ b/include/drm/drm_input_helper.h
> > > @@ -0,0 +1,41 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +/*
> > > + * Copyright (C) 2021 Google, Inc.
> > > + */
> > > +#ifndef __DRM_INPUT_HELPER_H__
> > > +#define __DRM_INPUT_HELPER_H__
> > > +
> > > +#include <linux/input.h>
> > > +
> > > +struct drm_device;
> > > +
> > > +struct drm_input_handler {
> > > +	/*
> > > +	 * Callback to call for input activity. Will be called in an atomic
> > > +	 * context.
> > 
> > How atomic? Like hardirq, and nasty spinlocks held?
> 
> Maybe I should have just cribbed off the <linux/input.h> doc:
> 
>  * @event: event handler. This method is being called by input core with
>  *      interrupts disabled and dev->event_lock spinlock held and so
>  *      it may not sleep
> 
> I probably don't want to propagate the subsystem details about which
> locks, but I guess I can be specific about "interrupts disabled" and
> "don't sleep".

You can also do hyperlinks in the generated htmldocs and just reference
that:

https://dri.freedesktop.org/docs/drm/doc-guide/kernel-doc.html#highlights-and-cross-references

> 
> > > +	 */
> > > +	void (*callback)(struct drm_input_handler *handler);
> > > +
> > > +	struct input_handler handler;
> > > +};
> > > +
> > > +#if defined(CONFIG_DRM_INPUT_HELPER)
> > > +
> > > +int drm_input_handle_register(struct drm_device *dev,
> > > +			      struct drm_input_handler *handler);
> > > +void drm_input_handle_unregister(struct drm_input_handler *handler);
> > > +
> > > +#else /* !CONFIG_DRM_INPUT_HELPER */
> > > +
> > > +static inline int drm_input_handle_register(struct drm_device *dev,
> > > +					    struct drm_input_handler *handler)
> > > +{
> > > +	return 0;
> > > +}
> > 
> > I guess the reason behind the helper is that you also want to use this in
> > drivers or maybe drm/sched?
> 
> I think my reasoning is heavily described in both the cover letter and
> the commit message. If that's not clear, can you point out which part?
> I'd gladly improve it :)
> 
> But specifically, see the 2nd bullet from the commit message, which I've
> re-quoted down here:
> 
> > >  * GPU drivers: on GPU-accelerated desktop systems, we may need to
> > >    render new frames immediately after user activity. Powering up the
> > >    GPU can take enough time that it is worthwhile to start this process
> > >    as soon as there is input activity. Many Chrome OS systems also ship
> > >    with an input_handler boost that powers up the GPU.
> 
> Rob Clark has patches to drm/msm to boost GPU power-up via a similar
> helper.

Yeah this question was just for confirmation, might be good to include
that other patch set too for the full picture.

> > Anyway I think it looks all reasonable. Definitely need an ack from input
> > people
> 
> I realized I failed to carry Dmitry's Ack from version 1 [1]. If this
> has a v3 in similar form, I'll carry it there.
> 
> > that the event list you have is a good choice, I have no idea what
> > that all does. Maybe also document that part a bit more.
> 
> I'm admittedly not an expert there, and this is actually one reason why
> we hoped to make this a library (that nobody wants to keep figuring out
> whether all those flags, etc., are really doing the right thing), but
> there are comments about what each entry is _trying_ to do. Are you
> suggesting more, as in, why "BTN_LEFT + EV_KEY" means "pointer"? Or why
> we match certain devices (because they represent likely user activity
> that will affect the display pipeline)? Or both? Anyway, I'll give it a
> shot, if we keep this.

So maybe this is all very obvious for input folks, and comments about what
each does is overkill.

But I think in the kerneldoc for gfx folks it would be good to explain
what kind of events this listens for, like iirc you listen to key-up not
key-down, since often the boost has expired by the time the key is
actually lifted? Stuff like that I think would be good to explain the why
behind the choice of entries in the list. Or that we try to listen to some
pointer/mouse events (all of them? only "important" ones?)
-Daniel

> 
> Brian
> 
> [1] https://lore.kernel.org/all/YYW6FwSeNMK25ENm@google.com/

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
