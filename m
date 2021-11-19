Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05136C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 01:46:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F2546138D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 01:46:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8F2546138D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQFZzmrct8oUfvdOZkGhdKB4AN4iPkpsO9Xs4NjzRKY=; b=AxYJPR0NLBsRdT
	et/1WR700vXAG5EyHGgKkZht3ADAONAxxokauFNa6QQO81PoECsuE0r2ow5UPnLhQhY8SvLyAR8ye
	8Ilk5a2oPc13x2fALI7t1gZrkzhMvCYL4t3c0Sq7ZgaQ3VlFs1wtme4xoj1mVMP0TBfaJ7t2Xl94K
	Z5tTlyUAsVVvbqCMZfAn3W+34fnEz4+iXRMxl/7O7okhtiuq/2ZeXPmmCkeqOzScH+yh+x6tVOFc8
	0oyMRPdigxve2+gbfQ85HmpRfjX8wc/U/d7jz5EThfsIQqKtrLEJ8RwyxMZAIFR+qLTTxurCmjmoU
	eeVZYB1TpAt92V2LYqrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnsyo-009Bgm-QR; Fri, 19 Nov 2021 01:46:18 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnsyk-009Bg1-En
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 01:46:16 +0000
Received: by mail-pl1-x62b.google.com with SMTP id m24so6877267pls.10
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Nov 2021 17:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fq5DzkVmq8YmWRmZx1UIt57BIlBs6gam8C+qnU8vEi4=;
 b=P9AZ4rHVj5C7bXEwbhP7nFOK7zxdciVGdJ9wQdVJDa4yTz+1lDLdNETZu3G8Lpi85g
 HDLGPq2gpMVPy/Ptfgg4r10gcjR5bUnDEW1gQ7e6/Rfp0HAlzJCPsgICr3aL6ClCQ2La
 9MJ3iEohkQkHOHIXWSSMI96pxhb7UiVBSdVPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fq5DzkVmq8YmWRmZx1UIt57BIlBs6gam8C+qnU8vEi4=;
 b=blX9obJ9kHbkzILpo66gywKZx92U5NRl9byU34eDpXQEPDlEx43DASs3xkL0T9jR1T
 tWQAK5XXC34VG2NTwoHEFcE/KF/yQ/0Cr+NV2P4+mAeIogvpdfx+3WhOSSvrlL03FZY2
 PCvhRSXoae6RvXBV/D6G5Wr+nLOv2cmLWvQOmUH46Ymqtk79+no+i9W+58yImml5YfGa
 PxiG0SsN1F+vfOV7mxIRDdBGSesTuavVQXg6tJVJ/1Zgh8RbJBugfxMi6NXCXmWsj+yO
 EEPY8inWlNLixtIpo5hbVYX3e9L6FPEYNHY2J2ZAQWDmyMdnFxYV6nq1Lsx/I0Sg3Isn
 ww6A==
X-Gm-Message-State: AOAM531XyZy/8jWGLQSNWB/XqJ/aHD88rYcoGQsVprRCjtTmKwhAfdQh
 Xwh4pSGpiGvc5CENHRXokMCcdw==
X-Google-Smtp-Source: ABdhPJwHy5WKFGKKNugKZH3pdyZNerH/T2D8TSQ221BnTFChUnnzOnxtD8s2smez5ITbuym0g1RzpQ==
X-Received: by 2002:a17:902:c105:b0:142:2441:aa24 with SMTP id
 5-20020a170902c10500b001422441aa24mr71118844pli.44.1637286373378; 
 Thu, 18 Nov 2021 17:46:13 -0800 (PST)
Received: from google.com ([2620:15c:202:201:d418:2c22:1322:f27])
 by smtp.gmail.com with ESMTPSA id z30sm824247pfg.30.2021.11.18.17.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 17:46:12 -0800 (PST)
Date: Thu, 18 Nov 2021 17:46:10 -0800
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
 linux-input@vger.kernel.org, Simon Ser <contact@emersion.fr>
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YZcB4ooqpvP3gHdx@google.com>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211118123928.545dec8a@eldfell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_174614_556660_15D20711 
X-CRM114-Status: GOOD (  70.74  )
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

Hi Pekka,

Thanks for the thoughts and review. I've tried to respond below:

On Thu, Nov 18, 2021 at 12:39:28PM +0200, Pekka Paalanen wrote:
> On Wed, 17 Nov 2021 14:48:40 -0800
> Brian Norris <briannorris@chromium.org> wrote:
> 
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
> 
> Thanks Simon for the CC.
> 
> Hi Brian,
> 
> while this feature in general makes sense and sounds good, to start
> warming up display hardware early when something might start to happen,
> this particular proposal has many problems from UAPI perspective (as it
> has none). Comments below.
> 
> Btw. if PSR is that slow to wake up from, how much do you actually gain
> from this input event watching? I would imagine the improvement to not
> be noticeable.

Patch 2 has details. It's not really about precisely how slow PSR is,
but how much foresight we can gain: in patch 2, I note that with my
particular user space and system, I can start PSR-exit 50ms earlier than
I would otherweise. (FWIW, this measurement is exactly the same it was
with the original version written 4 years ago.)

For how long PSR-exit takes: the measurements I'm able to do (via
ftrace) show that drm_self_refresh_transition() takes between 35 and 55
ms. That's noticeable at 60 fps. And quite conveniently, the input-boost
manages to hide nearly 100% of that latency.

Typical use cases where one notices PSR latency (and where this 35-55ms
matters) involve simply moving a cursor; it's very noticeable when you
have more than a few frames of latency to "get started".

> I think some numbers about how much this feature helps would be really
> good, even if they are quite specific use cases. You also need to
> identify the userspace components, because I think different display
> servers are very different in their reaction speed.

If my email address isn't obvious, I'm testing Chrome OS. I'm frankly
not that familiar with the user space display stack, but for what I
know, it's rather custom, developed within the Chromium project. Others
on CC here could probably give you more detail, if you want specific
answers, besides docs like this:

https://chromium.googlesource.com/chromium/src/+/HEAD/docs/ozone_overview.md

> If KMS gets a pageflip or modeset in no time after an input event, then
> what's the gain. OTOH, if the display server is locking on to vblank,
> there might be a delay worth avoiding. But then, is it worth
> short-circuiting the wake-up in kernel vs. adding a new ioctl that
> userspace could hit to start the warming up process?

Rob responded to the first part to some extent (there is definitely gain
to be had).

To the last part: I wrote a simple debugfs hook to allow user space to
force a PSR exit, and then a simple user space program to read input
events and smash that debugfs file whenever it sees one. Testing in the
same scenarios, this appears to lose less than 100 microseconds versus
the in-kernel approach, which is negligible for this use case. (I'm not
sure about the other use cases.)

So, this is technically doable in user space.

I can't speak to the ease of _actually_ integrating this into even our
own Chrome display manager, but I highly doubt it will get integrated
into others. I'd posit this should weigh into the relative worth, but
otherwise can't really give you an answer there.

I'd also note, software-directed PSR is so far designed to be completely
opaque to user space. There's no way to disable it; no way to know it's
active; and no way to know anything about the parameters it's computing
(like average entry/exit delay). Would you suggest a whole set of new
IOCTLs for this?

> > diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> > index 1c41156deb5f..9a6494aa45e6 100644
> > --- a/drivers/gpu/drm/Makefile
> > +++ b/drivers/gpu/drm/Makefile
> > @@ -56,6 +56,8 @@ drm_kms_helper-y := drm_bridge_connector.o drm_crtc_helper.o drm_dp_helper.o \
> >  		drm_atomic_state_helper.o drm_damage_helper.o \
> >  		drm_format_helper.o drm_self_refresh_helper.o drm_rect.o
> >  
> > +drm_kms_helper-$(CONFIG_DRM_INPUT_HELPER) += drm_input_helper.o
> > +
> >  drm_kms_helper-$(CONFIG_DRM_PANEL_BRIDGE) += bridge/panel.o
> >  drm_kms_helper-$(CONFIG_DRM_FBDEV_EMULATION) += drm_fb_helper.o
> >  drm_kms_helper-$(CONFIG_DRM_KMS_CMA_HELPER) += drm_fb_cma_helper.o
> > diff --git a/drivers/gpu/drm/drm_input_helper.c b/drivers/gpu/drm/drm_input_helper.c
> > new file mode 100644
> > index 000000000000..470f90865c7c
> > --- /dev/null
> > +++ b/drivers/gpu/drm/drm_input_helper.c

> > +static int drm_input_connect(struct input_handler *handler,
> > +			     struct input_dev *dev,
> > +			     const struct input_device_id *id)
> > +{
> > +	struct input_handle *handle;
> > +	int error;
> > +
> > +	handle = kzalloc(sizeof(struct input_handle), GFP_KERNEL);
> > +	if (!handle)
> > +		return -ENOMEM;
> > +
> > +	handle->dev = dev;
> > +	handle->handler = handler;
> > +	handle->name = "drm-input-helper";
> > +
> > +	error = input_register_handle(handle);
> > +	if (error)
> > +		goto err2;
> > +
> > +	error = input_open_device(handle);
> 
> Does this literally open the input device, just like when userspace
> opens the input device?

I believe so. Dmitry mentioned something to this effect on earlier
versions, but I found that the input_handler does not operate at all if
this specific handle wasn't opened. (All handles are independent, and
each over their own |open| count.)

This part is unfortunate, I agree. If we really want this in-kernel,
perhaps I could find a way to tweak the input_handler API.

> How do you know userspace is using this input device at all? If
> userspace is not using the input device, then DRM should not be opening
> it either, as it must have no effect on anything.
> 
> If you open an input device that userspace does not use, you also cause
> a power consumption regression, because now the input device itself is
> active and possibly flooding the kernel with events (e.g. an
> accelerometer).

Well, I don't think accelerometers show up as input devices, but I
suppose your point could apply to actual input devices.

> > +	if (error)
> > +		goto err1;
> > +
> > +	return 0;
> > +
> > +err1:
> > +	input_unregister_handle(handle);
> > +err2:
> > +	kfree(handle);
> > +	return error;
> > +}
> > +
> > +static void drm_input_disconnect(struct input_handle *handle)
> > +{
> > +	input_close_device(handle);
> > +	input_unregister_handle(handle);
> > +	kfree(handle);
> > +}
> > +
> > +static const struct input_device_id drm_input_ids[] = {
> > +	{
> > +		.flags = INPUT_DEVICE_ID_MATCH_EVBIT |
> > +			 INPUT_DEVICE_ID_MATCH_ABSBIT,
> > +		.evbit = { BIT_MASK(EV_ABS) },
> > +		.absbit = { [BIT_WORD(ABS_MT_POSITION_X)] =
> > +			    BIT_MASK(ABS_MT_POSITION_X) |
> > +			    BIT_MASK(ABS_MT_POSITION_Y) },
> > +	}, /* multi-touch touchscreen */
> > +	{
> > +		.flags = INPUT_DEVICE_ID_MATCH_EVBIT,
> > +		.evbit = { BIT_MASK(EV_ABS) },
> > +		.absbit = { [BIT_WORD(ABS_X)] = BIT_MASK(ABS_X) }
> > +
> > +	}, /* stylus or joystick device */
> > +	{
> > +		.flags = INPUT_DEVICE_ID_MATCH_EVBIT,
> > +		.evbit = { BIT_MASK(EV_KEY) },
> > +		.keybit = { [BIT_WORD(BTN_LEFT)] = BIT_MASK(BTN_LEFT) },
> > +	}, /* pointer (e.g. trackpad, mouse) */
> > +	{
> > +		.flags = INPUT_DEVICE_ID_MATCH_EVBIT,
> > +		.evbit = { BIT_MASK(EV_KEY) },
> > +		.keybit = { [BIT_WORD(KEY_ESC)] = BIT_MASK(KEY_ESC) },
> > +	}, /* keyboard */
> > +	{
> > +		.flags = INPUT_DEVICE_ID_MATCH_EVBIT |
> > +			 INPUT_DEVICE_ID_MATCH_KEYBIT,
> > +		.evbit = { BIT_MASK(EV_KEY) },
> > +		.keybit = {[BIT_WORD(BTN_JOYSTICK)] = BIT_MASK(BTN_JOYSTICK) },
> > +	}, /* joysticks not caught by ABS_X above */
> > +	{
> > +		.flags = INPUT_DEVICE_ID_MATCH_EVBIT |
> > +			 INPUT_DEVICE_ID_MATCH_KEYBIT,
> > +		.evbit = { BIT_MASK(EV_KEY) },
> > +		.keybit = { [BIT_WORD(BTN_GAMEPAD)] = BIT_MASK(BTN_GAMEPAD) },
> > +	}, /* gamepad */
> 
> I don't think this hardcoded policy belongs in the kernel, nor even
> works.

Define "works"? It's shipping in various forms on a variety of Android
and Chrome OS systems, where it has a noticeable performance benefit,
and isn't known to have significant power-consumption issues.

> I believe classifying input devices is not that simple. Spearheading
> that is libinput which relies on udev tagging the devices with their
> types, and that is done based on a hwdb maintained by I think the
> systemd project. Or maybe libinput has its own db nowadays as well, I'm
> not sure.

I'm not that familiar with libinput, etc., but I expect most of what it
needs to do is irrelevant to these kinds of use cases. We don't care at
all about what character sets or even what type of device is in use, in
most cases. As long as it could reasonably be called user input, it's
good enough.

Also, for most use cases here, the penalty for small inaccuracies is
small. Especially for something like panel self-refresh, we'd rather not
have it enabled at all, than have it performing poorly.

> Also, joysticks and gamepads are something display servers generally do
> not open. An application might open some while it's running, but not
> all the time. Joysticks could be very chatty while opened, game
> controllers might have accelerometers, etc.
> 
> > +	{ },
> > +};
> > +
> > +int drm_input_handle_register(struct drm_device *dev,
> > +			      struct drm_input_handler *handler)
> > +{
> > +	int ret;
> > +
> > +	if (!handler->callback)
> > +		return -EINVAL;
> > +
> > +	handler->handler.event = drm_input_event;
> > +	handler->handler.connect = drm_input_connect;
> > +	handler->handler.disconnect = drm_input_disconnect;
> > +	handler->handler.name = kasprintf(GFP_KERNEL, "drm-input-helper-%s",
> > +					  dev_name(dev->dev));
> > +	if (!handler->handler.name)
> > +		return -ENOMEM;
> > +
> > +	handler->handler.id_table = drm_input_ids;
> > +	handler->handler.private = handler;
> > +
> > +	ret = input_register_handler(&handler->handler);
> 
> Yet another problem here is that this completely ignores the concept of
> physical seats. Of course it does so, because seats are a pure
> userspace concept.
> 
> The kernel VT console already has problems because the kernel has no
> concept of seats, which means that if there is a second seat defined and
> a desktop running on it, while the first seat is in the normal VT text
> mode, then everything typed in the desktop will be delivered to the VT
> shell as well! (This has a possible workaround in userspace [1], by opening
> the evdev input devices in some kind of exclusive mode - which is not
> common practise AFAIK.)

Sure.

I'd bet the intersection of systems that use SW-directed PSR and
"multi-seat" is negligibly close to zero, but I can't guarantee that.
Chalk one up for a user space policy.

> Btw. if userspace does use EVIOCGRAB, then will your in-kernel handler
> stop getting events?

I believe so.

[snip]

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
