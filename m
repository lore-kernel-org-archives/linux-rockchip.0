Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2AEC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 23:25:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 660866141B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 23:25:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 660866141B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0ML5m3ESPZX5VsgC9YT+fL44/dnWNFiEGYg5zCyMeo=; b=sPWjAK5FZPUY1J
	kNlXSJM2Gv3gW/rK2siIWFop60HzOhqfLzmWVToWSZSyTkNLCxAI9K1d4IYbek93tnlAxfAh9BzVI
	Y2fAJ7WV/Y0dZP0emKZPVYNAap/JPSo0ZziWPGCfvcsW6QPOl8I70fsOokceBVOfbxOY7x2uRKwdM
	fQHd2QN7o9cEnTAEgmzyc4GnKnbxzL9d+yMcAqpltJqxRp4jHXHTRyLjM69PhsxclWp1ZC0X5v4IO
	xeNEUX+PeY/xOD5FXuMBaerqOsmnANX/sFI9uUYEre6WwW7+dvxmGdVpfXR7Y+GcDhZerZMWbUTDC
	jo51Y6vxDwsWk4+j8SmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnqmm-0092eO-8M; Thu, 18 Nov 2021 23:25:44 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnqmi-0092d4-DU
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 23:25:43 +0000
Received: by mail-wr1-x436.google.com with SMTP id n29so14619974wra.11
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Nov 2021 15:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6itf0Ctn1Ll/1u3GtbM4Uh2SJ+9hCY7uuqlAtnJQptA=;
 b=S9PdTYDOFCQcaEfsyAIW7k4e978pvg6VZuMfCPyTWhLjJVXrpMO9Y2c7AhULTavN0c
 cF9PO1zKAN85COUWBPp5IXw4qIGgfQ6gyZ+jU2ALqiU+GHWR6EbuC6wb/TIUGbbmxhXD
 kvPvylUI4cIrqZ6QShSHJwNtPgHAW+dbfPeVBkUde/8ik6Nu0Gu2pn1Sk0AihRyZ1JlF
 CiODI99t/Sbx1SCz3oAEb6DcKVEmXWkmJHbhc/FOxXUyiDnMRAztJUBjKgnEOMwgfzIw
 T50i7UMHEd0RgI8Bi6FgrPz+vSHl+efe8zTuaHt5X6tkkWM3wXCLxECbnFr0j3ZKdq7D
 LcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6itf0Ctn1Ll/1u3GtbM4Uh2SJ+9hCY7uuqlAtnJQptA=;
 b=ITJJo8xBCxVfSttiCHaKiX8ndRV59lfbDPhG51RJ7T9yj0o5b+Fq4GLCDOQws43HUK
 7iRDSuJlczGY4iyo47pe/zEvjoz+Y9TgJR2K1J5/PLwrvzIIQwAijsnSOXr2L53LqOkc
 wQrmmS0deNaMYP86SWuxgZFb71qVST10ixIvQ1HQcDjFwksZM4J9OmCeYsqQHHA5SrHK
 Th2H5uc+YjkLrY0onDMhhHC+sGJrwgVozL4BLAwKPpeRg7CX8e9Hfd0qIMfxHmzhmhes
 jplO95c5MOuXjaxKL64wUA1x2/z6QwgiLePOXE64UjdufxBqczyFA4Gi7DcrLad4jg3O
 TPfA==
X-Gm-Message-State: AOAM5312LuSDvXg3GgOI9B3o8y6WJh9VStkB/sjcWtrXO9E5+CFqDsrE
 n8/Z/y7hbA36C0OGXL+QG4cl2LObfCAcjfNeK2k=
X-Google-Smtp-Source: ABdhPJwJoaFGZg7ow+hXe+dWGoWSLZsQ6KwiGyKU37reORM2qka43ZPrXUapO7QEm0Ktq2RbqGVXduXTUpVVAi6ootk=
X-Received: by 2002:adf:f947:: with SMTP id q7mr1607846wrr.260.1637277934705; 
 Thu, 18 Nov 2021 15:25:34 -0800 (PST)
MIME-Version: 1.0
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
In-Reply-To: <20211118123928.545dec8a@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 18 Nov 2021 15:30:38 -0800
Message-ID: <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Brian Norris <briannorris@chromium.org>, Rob Clark <robdclark@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@linux.ie>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Doug Anderson <dianders@chromium.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, linux-input@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_152540_501470_B0D30D31 
X-CRM114-Status: GOOD (  66.98  )
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

On Thu, Nov 18, 2021 at 2:39 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
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
>
> I think some numbers about how much this feature helps would be really
> good, even if they are quite specific use cases. You also need to
> identify the userspace components, because I think different display
> servers are very different in their reaction speed.
>
> If KMS gets a pageflip or modeset in no time after an input event, then
> what's the gain. OTOH, if the display server is locking on to vblank,
> there might be a delay worth avoiding. But then, is it worth
> short-circuiting the wake-up in kernel vs. adding a new ioctl that
> userspace could hit to start the warming up process?

In my measurements, it takes userspace a frame or two to respond and
get to the point of starting to build cmdstream (before eventually
doing atomic/pageflip ioctl).. possibly longer if you don't also have
a similar boost mechanism to spool up cpufreq

But the important thing, IMO, is that atomic/pageflip ioctl is the
cumulation of a long sequence of events.. input-boost is letting
whatever it may be (PSR exit, GPU resume, etc) happen in parallel with
that long sequence.

BR,
-R

>
> >
> > Changes in v2:
> >  - Honor CONFIG_INPUT dependency, via new CONFIG_DRM_INPUT_HELPER
> >  - Remove void*; users should use container_of()
> >  - Document the callback context
> >
> >  drivers/gpu/drm/Kconfig            |   6 ++
> >  drivers/gpu/drm/Makefile           |   2 +
> >  drivers/gpu/drm/drm_input_helper.c | 143 +++++++++++++++++++++++++++++
> >  include/drm/drm_input_helper.h     |  41 +++++++++
> >  4 files changed, 192 insertions(+)
> >  create mode 100644 drivers/gpu/drm/drm_input_helper.c
> >  create mode 100644 include/drm/drm_input_helper.h
> >
> > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > index fb144617055b..381476b10a9d 100644
> > --- a/drivers/gpu/drm/Kconfig
> > +++ b/drivers/gpu/drm/Kconfig
> > @@ -79,9 +79,15 @@ config DRM_DEBUG_SELFTEST
> >
> >         If in doubt, say "N".
> >
> > +config DRM_INPUT_HELPER
> > +     def_bool y
> > +     depends on DRM_KMS_HELPER
> > +     depends on INPUT
> > +
> >  config DRM_KMS_HELPER
> >       tristate
> >       depends on DRM
> > +     select DRM_INPUT_HELPER if INPUT
> >       help
> >         CRTC helpers for KMS drivers.
> >
> > diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> > index 1c41156deb5f..9a6494aa45e6 100644
> > --- a/drivers/gpu/drm/Makefile
> > +++ b/drivers/gpu/drm/Makefile
> > @@ -56,6 +56,8 @@ drm_kms_helper-y := drm_bridge_connector.o drm_crtc_helper.o drm_dp_helper.o \
> >               drm_atomic_state_helper.o drm_damage_helper.o \
> >               drm_format_helper.o drm_self_refresh_helper.o drm_rect.o
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
> > @@ -0,0 +1,143 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2021 Google, Inc.
> > + */
> > +#include <linux/input.h>
> > +#include <linux/slab.h>
> > +
> > +#include <drm/drm_device.h>
> > +#include <drm/drm_input_helper.h>
> > +
> > +/**
> > + * DOC: overview
> > + *
> > + * This helper library provides a thin wrapper around input handles, so that
> > + * DRM drivers can easily perform domain-specific actions in response to user
> > + * activity. e.g., if someone is moving a mouse, we're likely to want to
> > + * display something soon, and we should exit panel self-refresh.
> > + */
> > +
> > +static void drm_input_event(struct input_handle *handle, unsigned int type,
> > +                         unsigned int code, int value)
> > +{
> > +     struct drm_input_handler *handler = handle->handler->private;
> > +
> > +     handler->callback(handler);
> > +}
> > +
> > +static int drm_input_connect(struct input_handler *handler,
> > +                          struct input_dev *dev,
> > +                          const struct input_device_id *id)
> > +{
> > +     struct input_handle *handle;
> > +     int error;
> > +
> > +     handle = kzalloc(sizeof(struct input_handle), GFP_KERNEL);
> > +     if (!handle)
> > +             return -ENOMEM;
> > +
> > +     handle->dev = dev;
> > +     handle->handler = handler;
> > +     handle->name = "drm-input-helper";
> > +
> > +     error = input_register_handle(handle);
> > +     if (error)
> > +             goto err2;
> > +
> > +     error = input_open_device(handle);
>
> Does this literally open the input device, just like when userspace
> opens the input device?
>
> How do you know userspace is using this input device at all? If
> userspace is not using the input device, then DRM should not be opening
> it either, as it must have no effect on anything.
>
> If you open an input device that userspace does not use, you also cause
> a power consumption regression, because now the input device itself is
> active and possibly flooding the kernel with events (e.g. an
> accelerometer).
>
> > +     if (error)
> > +             goto err1;
> > +
> > +     return 0;
> > +
> > +err1:
> > +     input_unregister_handle(handle);
> > +err2:
> > +     kfree(handle);
> > +     return error;
> > +}
> > +
> > +static void drm_input_disconnect(struct input_handle *handle)
> > +{
> > +     input_close_device(handle);
> > +     input_unregister_handle(handle);
> > +     kfree(handle);
> > +}
> > +
> > +static const struct input_device_id drm_input_ids[] = {
> > +     {
> > +             .flags = INPUT_DEVICE_ID_MATCH_EVBIT |
> > +                      INPUT_DEVICE_ID_MATCH_ABSBIT,
> > +             .evbit = { BIT_MASK(EV_ABS) },
> > +             .absbit = { [BIT_WORD(ABS_MT_POSITION_X)] =
> > +                         BIT_MASK(ABS_MT_POSITION_X) |
> > +                         BIT_MASK(ABS_MT_POSITION_Y) },
> > +     }, /* multi-touch touchscreen */
> > +     {
> > +             .flags = INPUT_DEVICE_ID_MATCH_EVBIT,
> > +             .evbit = { BIT_MASK(EV_ABS) },
> > +             .absbit = { [BIT_WORD(ABS_X)] = BIT_MASK(ABS_X) }
> > +
> > +     }, /* stylus or joystick device */
> > +     {
> > +             .flags = INPUT_DEVICE_ID_MATCH_EVBIT,
> > +             .evbit = { BIT_MASK(EV_KEY) },
> > +             .keybit = { [BIT_WORD(BTN_LEFT)] = BIT_MASK(BTN_LEFT) },
> > +     }, /* pointer (e.g. trackpad, mouse) */
> > +     {
> > +             .flags = INPUT_DEVICE_ID_MATCH_EVBIT,
> > +             .evbit = { BIT_MASK(EV_KEY) },
> > +             .keybit = { [BIT_WORD(KEY_ESC)] = BIT_MASK(KEY_ESC) },
> > +     }, /* keyboard */
> > +     {
> > +             .flags = INPUT_DEVICE_ID_MATCH_EVBIT |
> > +                      INPUT_DEVICE_ID_MATCH_KEYBIT,
> > +             .evbit = { BIT_MASK(EV_KEY) },
> > +             .keybit = {[BIT_WORD(BTN_JOYSTICK)] = BIT_MASK(BTN_JOYSTICK) },
> > +     }, /* joysticks not caught by ABS_X above */
> > +     {
> > +             .flags = INPUT_DEVICE_ID_MATCH_EVBIT |
> > +                      INPUT_DEVICE_ID_MATCH_KEYBIT,
> > +             .evbit = { BIT_MASK(EV_KEY) },
> > +             .keybit = { [BIT_WORD(BTN_GAMEPAD)] = BIT_MASK(BTN_GAMEPAD) },
> > +     }, /* gamepad */
>
> I don't think this hardcoded policy belongs in the kernel, nor even
> works.
>
> I believe classifying input devices is not that simple. Spearheading
> that is libinput which relies on udev tagging the devices with their
> types, and that is done based on a hwdb maintained by I think the
> systemd project. Or maybe libinput has its own db nowadays as well, I'm
> not sure.
>
> Also, joysticks and gamepads are something display servers generally do
> not open. An application might open some while it's running, but not
> all the time. Joysticks could be very chatty while opened, game
> controllers might have accelerometers, etc.
>
> > +     { },
> > +};
> > +
> > +int drm_input_handle_register(struct drm_device *dev,
> > +                           struct drm_input_handler *handler)
> > +{
> > +     int ret;
> > +
> > +     if (!handler->callback)
> > +             return -EINVAL;
> > +
> > +     handler->handler.event = drm_input_event;
> > +     handler->handler.connect = drm_input_connect;
> > +     handler->handler.disconnect = drm_input_disconnect;
> > +     handler->handler.name = kasprintf(GFP_KERNEL, "drm-input-helper-%s",
> > +                                       dev_name(dev->dev));
> > +     if (!handler->handler.name)
> > +             return -ENOMEM;
> > +
> > +     handler->handler.id_table = drm_input_ids;
> > +     handler->handler.private = handler;
> > +
> > +     ret = input_register_handler(&handler->handler);
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
>
> Btw. if userspace does use EVIOCGRAB, then will your in-kernel handler
> stop getting events?
>
> So, separate physical seats are a thing in userspace. A seat has at
> least one DRM device for output, and any number of input devices. A
> user session runs on a seat, and can access the devices on that seat
> only. This means you can run multiple independent physical seats on the
> same machine, provided each one has its own gfx card. The seats are
> configured with udev rules adding ID_SEAT property to the devices.
>
> How will you keep those seats independent, so that activity on one seat
> does not cause all the other seats to ramp up their gfx cards?
>
>
> Thanks,
> pq
>
>
> [1] https://gitlab.freedesktop.org/wayland/weston/-/issues/434
>
> > +     if (ret)
> > +             goto err;
> > +
> > +     return 0;
> > +
> > +err:
> > +     kfree(handler->handler.name);
> > +     return ret;
> > +}
> > +EXPORT_SYMBOL(drm_input_handle_register);
> > +
> > +void drm_input_handle_unregister(struct drm_input_handler *handler)
> > +{
> > +     input_unregister_handler(&handler->handler);
> > +     kfree(handler->handler.name);
> > +}
> > +EXPORT_SYMBOL(drm_input_handle_unregister);
> > diff --git a/include/drm/drm_input_helper.h b/include/drm/drm_input_helper.h
> > new file mode 100644
> > index 000000000000..7904f397b934
> > --- /dev/null
> > +++ b/include/drm/drm_input_helper.h
> > @@ -0,0 +1,41 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2021 Google, Inc.
> > + */
> > +#ifndef __DRM_INPUT_HELPER_H__
> > +#define __DRM_INPUT_HELPER_H__
> > +
> > +#include <linux/input.h>
> > +
> > +struct drm_device;
> > +
> > +struct drm_input_handler {
> > +     /*
> > +      * Callback to call for input activity. Will be called in an atomic
> > +      * context.
> > +      */
> > +     void (*callback)(struct drm_input_handler *handler);
> > +
> > +     struct input_handler handler;
> > +};
> > +
> > +#if defined(CONFIG_DRM_INPUT_HELPER)
> > +
> > +int drm_input_handle_register(struct drm_device *dev,
> > +                           struct drm_input_handler *handler);
> > +void drm_input_handle_unregister(struct drm_input_handler *handler);
> > +
> > +#else /* !CONFIG_DRM_INPUT_HELPER */
> > +
> > +static inline int drm_input_handle_register(struct drm_device *dev,
> > +                                         struct drm_input_handler *handler)
> > +{
> > +     return 0;
> > +}
> > +
> > +static inline void
> > +drm_input_handle_unregister(struct drm_input_handler *handler) {}
> > +
> > +#endif /* CONFIG_DRM_INPUT_HELPER */
> > +
> > +#endif /* __DRM_INPUT_HELPER_H__ */
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
