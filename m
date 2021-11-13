Return-Path: <SRS0=KmeF=QA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AEE7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 00:52:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1031F608FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 00:52:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1031F608FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iY3qmpi8Y+UhT8w12CSOTGnONs5BjaOkp3Ii4+oNLns=; b=gkahFug980JfWC
	4rS25BnrlI/i6teOenC8CjtAJY9elxxUkD6J0D/L0P0xzgHz9isiZAqBCvADbpwnGT8/C8sJZz0OL
	G37i31FP1awt/k3wjh4Hcz24qicY6rlYLF+KZDvpRjpyZAy2TgRMo1a36IAsBBoBNOIWF1j4aexRm
	yrzRXLcit3UfnhHDl5d8xAvoD0vssP4aZyyYOirzZJH9h1ZLpTlojXZCGZnU12ToT330GeC5OO+Q3
	VIz+Elin5wXoQIjAWyHjdiFFU149M+I4J5N3Z1sINdmon/7Xd4khV6q5wS0ViH3sAH09DgbtTXIbn
	U4NLGqhh010Ms6UKXMAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlhHV-00Bx33-8V; Sat, 13 Nov 2021 00:52:33 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlhHS-00Bx25-Do
 for linux-rockchip@lists.infradead.org; Sat, 13 Nov 2021 00:52:31 +0000
Received: by mail-io1-xd2b.google.com with SMTP id z26so13318379iod.10
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Nov 2021 16:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WDMoJWVS3cLt8gel5ZAdj4e1dI2U2C9Sa5cKlc5Ze5g=;
 b=VG6EBwWgoJT2XTaKLIKToQkj/22xaDKEfaape+fbpwoDlL9hAcuqpP9I9+NMEKFmcL
 +u+fJF0Bm03Ggu4f2IMorqe1uYl+AniZrw98Kukh9eZtiAf4oSEQvlh70BY+iTAfVP8I
 zPBa4aWBkNCMAkySS5Tphpbq4Dk4nOZIbAqWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WDMoJWVS3cLt8gel5ZAdj4e1dI2U2C9Sa5cKlc5Ze5g=;
 b=T0M3ELql252Wl9hl0IX9PNjJYbzvlBToNuQ7sco2CemJPCX7Mximjclr2dd6qwxJqo
 g/+b9CJL/yn89jH9ujrDQs980vk6CULAV9bg0P/PVfsd5Vs5d3cw91AtY6ongMQXeBrz
 zH+qp1qa5WpQSY7RcDdDdICARqmSNHNgoZNI19d8Aps4kbojKiciJi+Pl1JVwPsZFBgz
 60C8PH56XvZsUEvVFuQxXCNjmdBzasX9MYt1UkYzmZUZ5bfjrYbiUuH4aLIAiHIyx7F7
 1gvdHjuCZzABcYTwEHE6s4tXpFeQKZjmFJPsBpxeJVpB3LWbHcJZEF7Yh4hYZD/vZgEc
 3mww==
X-Gm-Message-State: AOAM533afDoSCb5fkcHDoX+K3qshfDXgA8jvWgC/4kM+BN1xkIEQkpYY
 Y78++m0p++6QTligjfuWsAx1U2tfYffsvA==
X-Google-Smtp-Source: ABdhPJy7EoHaU6nYxsjG4fldAseCAFufnw4aI5qlAMFrVAqnR7kLJvqkBXGnDVdCUcgsm3/EHunElw==
X-Received: by 2002:a5d:9149:: with SMTP id y9mr12995265ioq.67.1636764749181; 
 Fri, 12 Nov 2021 16:52:29 -0800 (PST)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com.
 [209.85.166.46])
 by smtp.gmail.com with ESMTPSA id p2sm3904792ios.47.2021.11.12.16.52.27
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Nov 2021 16:52:28 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id 14so13199949ioe.2
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Nov 2021 16:52:27 -0800 (PST)
X-Received: by 2002:a05:6638:190f:: with SMTP id
 p15mr15051440jal.82.1636764747377; 
 Fri, 12 Nov 2021 16:52:27 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
In-Reply-To: <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 12 Nov 2021 16:52:15 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
Message-ID: <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/input_helper: Add new input-handling helper
To: Brian Norris <briannorris@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, David Airlie <airlied@linux.ie>, 
 linux-rockchip@lists.infradead.org, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Rob Clark <robdclark@chromium.org>, 
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_165230_494340_CF095AA1 
X-CRM114-Status: GOOD (  29.25  )
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

On Wed, Nov 3, 2021 at 4:40 PM Brian Norris <briannorris@chromium.org> wrote:
>
> A variety of applications have found it useful to listen to
> user-initiated input events to make decisions within a DRM driver, given
> that input events are often the first sign that we're going to start
> doing latency-sensitive activities:
>
>  * Panel self-refresh: software-directed self-refresh (e.g., with
>    Rockchip eDP) is especially latency sensitive. In some cases, it can
>    take 10s of milliseconds for a panel to exit self-refresh, which can
>    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
>    with an input_handler boost, that preemptively exits self-refresh
>    whenever there is input activity.
>
>  * GPU drivers: on GPU-accelerated desktop systems, we may need to
>    render new frames immediately after user activity. Powering up the
>    GPU can take enough time that it is worthwhile to start this process
>    as soon as there is input activity. Many Chrome OS systems also ship
>    with an input_handler boost that powers up the GPU.
>
> This patch provides a small helper library that abstracts some of the
> input-subsystem details around picking which devices to listen to, and
> some other boilerplate. This will be used in the next patch to implement
> the first bullet: preemptive exit for panel self-refresh.
>
> Bits of this are adapted from code the Android and/or Chrome OS kernels
> have been carrying for a while.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  drivers/gpu/drm/Makefile           |   3 +-
>  drivers/gpu/drm/drm_input_helper.c | 143 +++++++++++++++++++++++++++++
>  include/drm/drm_input_helper.h     |  22 +++++
>  3 files changed, 167 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/drm_input_helper.c
>  create mode 100644 include/drm/drm_input_helper.h
>
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 0dff40bb863c..378761685b47 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -49,7 +49,8 @@ drm_kms_helper-y := drm_bridge_connector.o drm_crtc_helper.o drm_dp_helper.o \
>                 drm_scdc_helper.o drm_gem_atomic_helper.o \
>                 drm_gem_framebuffer_helper.o \
>                 drm_atomic_state_helper.o drm_damage_helper.o \
> -               drm_format_helper.o drm_self_refresh_helper.o
> +               drm_format_helper.o drm_self_refresh_helper.o \
> +               drm_input_helper.o

Note that the Makefile part conflicts with drm-misc-next right now.
It's not very hard to resolve, but since this would likely land there
maybe it'd be nice to resolve?

Other than that, this seems sane to me and much better than copying
this between places, so assuming that the build problems get resolved
then I'm happy.

I guess one random thought I had is whether there would be an
appropriate place to put this that _wasn't_ in DRM. I still wonder
whether we'll ever try to upstream something like the cpufreq boost
driver that we're carrying around and using in Chrome OS. If so, it
would want to use these same helpers and it'd be pretty awkward for it
to have to reach into DRM. ...any chance we could just land these
helpers somewhere more generic?


> +struct drm_input_handler {
> +       struct input_handler handler;
> +       void *priv;
> +       void (*callback)(void *priv);
> +};

Super bike-sheddy comment is that "void *" data arguments are not
super common in the kernel. I would have expected the callback
function to just be passed a pointer to the "struct drm_input_handler"
and it could find any other data it needed via "container_of". I won't
insist though. ;-)


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
