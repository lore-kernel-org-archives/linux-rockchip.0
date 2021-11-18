Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD573C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 10:39:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F96E61AA3
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 10:39:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6F96E61AA3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bzTruvwZ63VyKziJ3oKJmR/k8KaZjiLQhV9SZrNSvoM=; b=I+rdUakEzhfuwLSE2tJR5IDNtQ
	I6lAeCBhvW1afUXSlxsn7nivwuy+INx2pDYn5QTZftK65bEgTLxkzCZnA2zRIvKXuEFifQt/Nfifb
	E1Ts9fW/beMThNk60AjcG83YPaAl/v6wpXEd5IIayFYwWLAF1T5v4R+jaOdffRO6k8AqvKqmMy/c9
	h0IVDaNEpLED+C/9fzBlQHEOIIFox12obg9B4lUUIIhKlAGDgPug4GdOTEuUZWw1PcNDr49NxfWtt
	Cu0ZAack5Osp8xo6uckbVx6ZbDvC3H894aeHCnLw6fbxhe0SYcGAo5jTayqfs7eI+mD0n3jJmqnts
	vpvLcaKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnepO-007TTT-3u; Thu, 18 Nov 2021 10:39:38 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnepK-007TSX-Iw
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 10:39:36 +0000
Received: by mail-lf1-x131.google.com with SMTP id k37so23887399lfv.3
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Nov 2021 02:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=HQ57so7aSzAj5EU4qIvc2kC6V+eHAr0ltxik6YdbZFQ=;
 b=RcegbFfXYoT3f6k24V4ZNnzSgGmc8vusueuWaWHZmPluAG6Mr+wCNp1IRYXUgWud1i
 KJIevlp0B/MfuwsE+TZAgujumPbwvxlbYQFyqXN8QSMXLamoTuIp7lMb+3aeO30/cMBE
 he7LZYdMD0iDQmKTR+GqiGNOoCj+J2i4P6fx80n4zPXFWwGbT70xT7UVtFRoqGKv5hBd
 EWt3uL6QmK9f9eFdUDV9SOd+oLLhOj13AxazDe1a2ZAxLohtFubC1kCAc2r5XltH+GX1
 jpSL0hz23WdlfwN3KyMq5nNgOhU0lDRmONnzp+DhuHPpFEHy0BQgPauX+uZvysHzhPWN
 +Zwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=HQ57so7aSzAj5EU4qIvc2kC6V+eHAr0ltxik6YdbZFQ=;
 b=qci9M60owdL1n2qKgXveRueoqCOSfkKND1vcsBFKjU4n2JOhaMe3EA3XEbhk0xqm5k
 7D2VO4DXM2pshLnZTybxGemxO7+6ezvDJrscIrkZSlKlOgZE1degztLLYtoD1qak5JcP
 hQw43pZlJw2/a1jAMJmwcX4tfRyb+iJxNTTLpierScPPYYRNDO7NQm/0XpsxbMx/vOaO
 K5krEJz9kGCpY9cpN9kcc6BZ6jGG7FWCBAssyaT5TgITUEwq5ZrvFDXn4m1FeZBxUxWe
 idiKJ0VaTXKOQHFnbdZnbc/kzh6/1Fst87pPIOHG0Fr3W4UEKmiv25BigsXQrdbdu/dy
 cV7A==
X-Gm-Message-State: AOAM532k4UYZWTiPzVZgct4gsyDI2WdSFYH33OxYec32jFyp5j5BnYOB
 paF3h5jhGHJEULcZbpQyX/o=
X-Google-Smtp-Source: ABdhPJykn5hkR87423xGmp6TSFqs+6c3ryFNe2LlJSJbe1riQEOJ94iAkzpZajZOpKoMKGI/Nbu8kg==
X-Received: by 2002:a05:6512:a8e:: with SMTP id
 m14mr22358144lfu.269.1637231971765; 
 Thu, 18 Nov 2021 02:39:31 -0800 (PST)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id m10sm249615lji.11.2021.11.18.02.39.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 02:39:31 -0800 (PST)
Date: Thu, 18 Nov 2021 12:39:28 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark
 <robdclark@chromium.org>, David Airlie <airlied@linux.ie>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Doug Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, "Kristian H . Kristensen"
 <hoegsberg@google.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 linux-input@vger.kernel.org, Simon Ser <contact@emersion.fr>
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <20211118123928.545dec8a@eldfell>
In-Reply-To: <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_023934_667827_8BD0930B 
X-CRM114-Status: GOOD (  53.34  )
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
Content-Type: multipart/mixed; boundary="===============7998736235861822882=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7998736235861822882==
Content-Type: multipart/signed; boundary="Sig_/ZCjW6Nvo..nHB398SwY9477";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/ZCjW6Nvo..nHB398SwY9477
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 17 Nov 2021 14:48:40 -0800
Brian Norris <briannorris@chromium.org> wrote:

> A variety of applications have found it useful to listen to
> user-initiated input events to make decisions within a DRM driver, given
> that input events are often the first sign that we're going to start
> doing latency-sensitive activities:
>=20
>  * Panel self-refresh: software-directed self-refresh (e.g., with
>    Rockchip eDP) is especially latency sensitive. In some cases, it can
>    take 10s of milliseconds for a panel to exit self-refresh, which can
>    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
>    with an input_handler boost, that preemptively exits self-refresh
>    whenever there is input activity.
>=20
>  * GPU drivers: on GPU-accelerated desktop systems, we may need to
>    render new frames immediately after user activity. Powering up the
>    GPU can take enough time that it is worthwhile to start this process
>    as soon as there is input activity. Many Chrome OS systems also ship
>    with an input_handler boost that powers up the GPU.
>=20
> This patch provides a small helper library that abstracts some of the
> input-subsystem details around picking which devices to listen to, and
> some other boilerplate. This will be used in the next patch to implement
> the first bullet: preemptive exit for panel self-refresh.
>=20
> Bits of this are adapted from code the Android and/or Chrome OS kernels
> have been carrying for a while.
>=20
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---

Thanks Simon for the CC.

Hi Brian,

while this feature in general makes sense and sounds good, to start
warming up display hardware early when something might start to happen,
this particular proposal has many problems from UAPI perspective (as it
has none). Comments below.

Btw. if PSR is that slow to wake up from, how much do you actually gain
from this input event watching? I would imagine the improvement to not
be noticeable.

I think some numbers about how much this feature helps would be really
good, even if they are quite specific use cases. You also need to
identify the userspace components, because I think different display
servers are very different in their reaction speed.

If KMS gets a pageflip or modeset in no time after an input event, then
what's the gain. OTOH, if the display server is locking on to vblank,
there might be a delay worth avoiding. But then, is it worth
short-circuiting the wake-up in kernel vs. adding a new ioctl that
userspace could hit to start the warming up process?


>=20
> Changes in v2:
>  - Honor CONFIG_INPUT dependency, via new CONFIG_DRM_INPUT_HELPER
>  - Remove void*; users should use container_of()
>  - Document the callback context
>=20
>  drivers/gpu/drm/Kconfig            |   6 ++
>  drivers/gpu/drm/Makefile           |   2 +
>  drivers/gpu/drm/drm_input_helper.c | 143 +++++++++++++++++++++++++++++
>  include/drm/drm_input_helper.h     |  41 +++++++++
>  4 files changed, 192 insertions(+)
>  create mode 100644 drivers/gpu/drm/drm_input_helper.c
>  create mode 100644 include/drm/drm_input_helper.h
>=20
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index fb144617055b..381476b10a9d 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -79,9 +79,15 @@ config DRM_DEBUG_SELFTEST
> =20
>  	  If in doubt, say "N".
> =20
> +config DRM_INPUT_HELPER
> +	def_bool y
> +	depends on DRM_KMS_HELPER
> +	depends on INPUT
> +
>  config DRM_KMS_HELPER
>  	tristate
>  	depends on DRM
> +	select DRM_INPUT_HELPER if INPUT
>  	help
>  	  CRTC helpers for KMS drivers.
> =20
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 1c41156deb5f..9a6494aa45e6 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -56,6 +56,8 @@ drm_kms_helper-y :=3D drm_bridge_connector.o drm_crtc_h=
elper.o drm_dp_helper.o \
>  		drm_atomic_state_helper.o drm_damage_helper.o \
>  		drm_format_helper.o drm_self_refresh_helper.o drm_rect.o
> =20
> +drm_kms_helper-$(CONFIG_DRM_INPUT_HELPER) +=3D drm_input_helper.o
> +
>  drm_kms_helper-$(CONFIG_DRM_PANEL_BRIDGE) +=3D bridge/panel.o
>  drm_kms_helper-$(CONFIG_DRM_FBDEV_EMULATION) +=3D drm_fb_helper.o
>  drm_kms_helper-$(CONFIG_DRM_KMS_CMA_HELPER) +=3D drm_fb_cma_helper.o
> diff --git a/drivers/gpu/drm/drm_input_helper.c b/drivers/gpu/drm/drm_inp=
ut_helper.c
> new file mode 100644
> index 000000000000..470f90865c7c
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_input_helper.c
> @@ -0,0 +1,143 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021 Google, Inc.
> + */
> +#include <linux/input.h>
> +#include <linux/slab.h>
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_input_helper.h>
> +
> +/**
> + * DOC: overview
> + *
> + * This helper library provides a thin wrapper around input handles, so =
that
> + * DRM drivers can easily perform domain-specific actions in response to=
 user
> + * activity. e.g., if someone is moving a mouse, we're likely to want to
> + * display something soon, and we should exit panel self-refresh.
> + */
> +
> +static void drm_input_event(struct input_handle *handle, unsigned int ty=
pe,
> +			    unsigned int code, int value)
> +{
> +	struct drm_input_handler *handler =3D handle->handler->private;
> +
> +	handler->callback(handler);
> +}
> +
> +static int drm_input_connect(struct input_handler *handler,
> +			     struct input_dev *dev,
> +			     const struct input_device_id *id)
> +{
> +	struct input_handle *handle;
> +	int error;
> +
> +	handle =3D kzalloc(sizeof(struct input_handle), GFP_KERNEL);
> +	if (!handle)
> +		return -ENOMEM;
> +
> +	handle->dev =3D dev;
> +	handle->handler =3D handler;
> +	handle->name =3D "drm-input-helper";
> +
> +	error =3D input_register_handle(handle);
> +	if (error)
> +		goto err2;
> +
> +	error =3D input_open_device(handle);

Does this literally open the input device, just like when userspace
opens the input device?

How do you know userspace is using this input device at all? If
userspace is not using the input device, then DRM should not be opening
it either, as it must have no effect on anything.

If you open an input device that userspace does not use, you also cause
a power consumption regression, because now the input device itself is
active and possibly flooding the kernel with events (e.g. an
accelerometer).

> +	if (error)
> +		goto err1;
> +
> +	return 0;
> +
> +err1:
> +	input_unregister_handle(handle);
> +err2:
> +	kfree(handle);
> +	return error;
> +}
> +
> +static void drm_input_disconnect(struct input_handle *handle)
> +{
> +	input_close_device(handle);
> +	input_unregister_handle(handle);
> +	kfree(handle);
> +}
> +
> +static const struct input_device_id drm_input_ids[] =3D {
> +	{
> +		.flags =3D INPUT_DEVICE_ID_MATCH_EVBIT |
> +			 INPUT_DEVICE_ID_MATCH_ABSBIT,
> +		.evbit =3D { BIT_MASK(EV_ABS) },
> +		.absbit =3D { [BIT_WORD(ABS_MT_POSITION_X)] =3D
> +			    BIT_MASK(ABS_MT_POSITION_X) |
> +			    BIT_MASK(ABS_MT_POSITION_Y) },
> +	}, /* multi-touch touchscreen */
> +	{
> +		.flags =3D INPUT_DEVICE_ID_MATCH_EVBIT,
> +		.evbit =3D { BIT_MASK(EV_ABS) },
> +		.absbit =3D { [BIT_WORD(ABS_X)] =3D BIT_MASK(ABS_X) }
> +
> +	}, /* stylus or joystick device */
> +	{
> +		.flags =3D INPUT_DEVICE_ID_MATCH_EVBIT,
> +		.evbit =3D { BIT_MASK(EV_KEY) },
> +		.keybit =3D { [BIT_WORD(BTN_LEFT)] =3D BIT_MASK(BTN_LEFT) },
> +	}, /* pointer (e.g. trackpad, mouse) */
> +	{
> +		.flags =3D INPUT_DEVICE_ID_MATCH_EVBIT,
> +		.evbit =3D { BIT_MASK(EV_KEY) },
> +		.keybit =3D { [BIT_WORD(KEY_ESC)] =3D BIT_MASK(KEY_ESC) },
> +	}, /* keyboard */
> +	{
> +		.flags =3D INPUT_DEVICE_ID_MATCH_EVBIT |
> +			 INPUT_DEVICE_ID_MATCH_KEYBIT,
> +		.evbit =3D { BIT_MASK(EV_KEY) },
> +		.keybit =3D {[BIT_WORD(BTN_JOYSTICK)] =3D BIT_MASK(BTN_JOYSTICK) },
> +	}, /* joysticks not caught by ABS_X above */
> +	{
> +		.flags =3D INPUT_DEVICE_ID_MATCH_EVBIT |
> +			 INPUT_DEVICE_ID_MATCH_KEYBIT,
> +		.evbit =3D { BIT_MASK(EV_KEY) },
> +		.keybit =3D { [BIT_WORD(BTN_GAMEPAD)] =3D BIT_MASK(BTN_GAMEPAD) },
> +	}, /* gamepad */

I don't think this hardcoded policy belongs in the kernel, nor even
works.

I believe classifying input devices is not that simple. Spearheading
that is libinput which relies on udev tagging the devices with their
types, and that is done based on a hwdb maintained by I think the
systemd project. Or maybe libinput has its own db nowadays as well, I'm
not sure.

Also, joysticks and gamepads are something display servers generally do
not open. An application might open some while it's running, but not
all the time. Joysticks could be very chatty while opened, game
controllers might have accelerometers, etc.

> +	{ },
> +};
> +
> +int drm_input_handle_register(struct drm_device *dev,
> +			      struct drm_input_handler *handler)
> +{
> +	int ret;
> +
> +	if (!handler->callback)
> +		return -EINVAL;
> +
> +	handler->handler.event =3D drm_input_event;
> +	handler->handler.connect =3D drm_input_connect;
> +	handler->handler.disconnect =3D drm_input_disconnect;
> +	handler->handler.name =3D kasprintf(GFP_KERNEL, "drm-input-helper-%s",
> +					  dev_name(dev->dev));
> +	if (!handler->handler.name)
> +		return -ENOMEM;
> +
> +	handler->handler.id_table =3D drm_input_ids;
> +	handler->handler.private =3D handler;
> +
> +	ret =3D input_register_handler(&handler->handler);

Yet another problem here is that this completely ignores the concept of
physical seats. Of course it does so, because seats are a pure
userspace concept.

The kernel VT console already has problems because the kernel has no
concept of seats, which means that if there is a second seat defined and
a desktop running on it, while the first seat is in the normal VT text
mode, then everything typed in the desktop will be delivered to the VT
shell as well! (This has a possible workaround in userspace [1], by opening
the evdev input devices in some kind of exclusive mode - which is not
common practise AFAIK.)

Btw. if userspace does use EVIOCGRAB, then will your in-kernel handler
stop getting events?

So, separate physical seats are a thing in userspace. A seat has at
least one DRM device for output, and any number of input devices. A
user session runs on a seat, and can access the devices on that seat
only. This means you can run multiple independent physical seats on the
same machine, provided each one has its own gfx card. The seats are
configured with udev rules adding ID_SEAT property to the devices.

How will you keep those seats independent, so that activity on one seat
does not cause all the other seats to ramp up their gfx cards?


Thanks,
pq


[1] https://gitlab.freedesktop.org/wayland/weston/-/issues/434

> +	if (ret)
> +		goto err;
> +
> +	return 0;
> +
> +err:
> +	kfree(handler->handler.name);
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_input_handle_register);
> +
> +void drm_input_handle_unregister(struct drm_input_handler *handler)
> +{
> +	input_unregister_handler(&handler->handler);
> +	kfree(handler->handler.name);
> +}
> +EXPORT_SYMBOL(drm_input_handle_unregister);
> diff --git a/include/drm/drm_input_helper.h b/include/drm/drm_input_helpe=
r.h
> new file mode 100644
> index 000000000000..7904f397b934
> --- /dev/null
> +++ b/include/drm/drm_input_helper.h
> @@ -0,0 +1,41 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2021 Google, Inc.
> + */
> +#ifndef __DRM_INPUT_HELPER_H__
> +#define __DRM_INPUT_HELPER_H__
> +
> +#include <linux/input.h>
> +
> +struct drm_device;
> +
> +struct drm_input_handler {
> +	/*
> +	 * Callback to call for input activity. Will be called in an atomic
> +	 * context.
> +	 */
> +	void (*callback)(struct drm_input_handler *handler);
> +
> +	struct input_handler handler;
> +};
> +
> +#if defined(CONFIG_DRM_INPUT_HELPER)
> +
> +int drm_input_handle_register(struct drm_device *dev,
> +			      struct drm_input_handler *handler);
> +void drm_input_handle_unregister(struct drm_input_handler *handler);
> +
> +#else /* !CONFIG_DRM_INPUT_HELPER */
> +
> +static inline int drm_input_handle_register(struct drm_device *dev,
> +					    struct drm_input_handler *handler)
> +{
> +	return 0;
> +}
> +
> +static inline void
> +drm_input_handle_unregister(struct drm_input_handler *handler) {}
> +
> +#endif /* CONFIG_DRM_INPUT_HELPER */
> +
> +#endif /* __DRM_INPUT_HELPER_H__ */


--Sig_/ZCjW6Nvo..nHB398SwY9477
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmGWLWAACgkQI1/ltBGq
qqdbOA/7Bl8MVQm2Au5DQzSIlKHd0xuGxzIqYopFcrHVbKSpIGPeNQV46i82Df5l
IXwNaQ9nutpbHd+Vp5ixC69dY4F+rtw4F345+BlB99QerwKNGveycFSodQwB6fgL
5SrP4+aY9e1Dn8r7ZeWmTJFPynw0rpMYbvTFThhYF8gYpktabAtUtlWLuqw+DmJx
krV8Rinyla1dh2XIcfkh3W0J3xdmMxH2pGzWgvIpOyFuIe3I1nmI0zYJ8cWzplKp
ZBr4hCHcU478P8oH4QMcMLQx00NlfjXflpFF1e99qIYo+dWI6LYBHaib7TzFPf7h
8mwQUonCUZFPVdaSJUIQiFwDdBt5bSO4WotnUCmGSIuFNRQeSEqAzjixvH1neZKj
bGKFqT8mjDxswzAllx5FGrEepN9RfPPU0aOOXe4CFOv5iK2g2+dFU7LZvN/Bbg1f
B1FMeTIpODFp0PaG21XHzbl/IeoCDSp1Gf1VxGvEBXeARHBeKRDeoAwJSL0Ae0K9
j6hoD/WPDRNyeAOVVLaIKtL+MndQmY13M/HoLfJDspY6zHQu3SFc/iRQusGPh6Zl
nUKRXPxoe6WVDTbt/2GxTg3XP71hlFd8xFercsjZpjCinnwwCmqEYr0ayltdYVEw
vzsu+ehTaVBq6kN1p873iQb0Rm0ZzI9KyQspWAu2FQ+PjnY+SR8=
=3zCs
-----END PGP SIGNATURE-----

--Sig_/ZCjW6Nvo..nHB398SwY9477--


--===============7998736235861822882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7998736235861822882==--

