Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23A3C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 19:12:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E420161BB6
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 19:12:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E420161BB6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6mb+fQgHf6eSDTWUWviRF8rZ3mfM79aPuFklyTEw5A=; b=hDeUp5INRxkn2N
	WFwSuaE4dBJLcicQ49dHUurvODxJ6V0QTg8AAYRaXLgmRCt0/YuLESeljY4XDx/XVOhML4934J3VD
	tPpM6MH6hBK8NcCTpB0JfFxTAHrSUn7qcu9Y+ZR2wG/eJWneQj7C2TpK9wqd5CaHruBjhLK3We1bl
	EvR6vzE1MtdbYSVCc5lV3CpYOJfdflYOu39LZyKMZVHcAG4n+iP+B8toluqDq1y8KvLl1MgYQcSZR
	vdkYRo4NKc09yy5PD8rqTCSNyk282cjVF3ZvE1Ox2JvPr05FG16SyGDm1GsWL9HZi5Ep8pXDt3E+J
	a9UYTXYp72HZfMa8fpJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnQME-0068w6-Iv; Wed, 17 Nov 2021 19:12:34 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnQMB-0068vG-FM
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 19:12:33 +0000
Received: by mail-oi1-x22f.google.com with SMTP id q25so8735439oiw.0
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 11:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8poPPwRgM2gaVTV5trUbBXO75bFqyuZii+WWGUFhSUc=;
 b=N+xC7yXKAWA9x8ahmu3oKmzKLStvcsJhqk2y6WTGCbT0Va+XoOZ9Z6S4MIwhDwszVf
 vzjkO5FuVdIv7eWc7/ciUCtfTHJSoJpRnVjQAN5y0dgTj6sr3S7SmUh/veJrJTXoE1iY
 q1bcFdQOLqgR4oa1VQm+boj0ZJxEKjQ2NAjWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8poPPwRgM2gaVTV5trUbBXO75bFqyuZii+WWGUFhSUc=;
 b=A1eibGmjNYi3QkQZNsem9v03rNudS5ibVCv4jVfvhXUyvSlaeMw/0On9d3u/0IoBTQ
 jxv92FAvNLHH++LlshmUuUsmKSFrEFhKc1GuTrTSeFP2jay3Y9wYvk3mYUW6A4SddPHp
 FHvQVGg668Bvn3P48jbnm8sdA8vvBoQAfbPDLtV70H+FQYOZRWWAiKZwUGJLrtHvQuRQ
 /V1SwoEt4z0dEvwOgkyYEjUxEKF1TweTCWu9R1+4HZ+ma/ppNli/kAgZ6t6mHSUhvQ/p
 k5bWKJQuhukfv4vCl0tSYmxW7i2INVV+OQ1fk2ujx5C9syawGwEmyfkPdjp8zlqHGN/2
 9fdQ==
X-Gm-Message-State: AOAM531jCjGqnaeisVQtNgg3tr2Q05rUtWDOxkC0/RPvbtaJhLpkmCDM
 8adJf4YZXj2mRNo0fO+TTs3Tlh1v96/pgwCY2mVdJA==
X-Google-Smtp-Source: ABdhPJyGQbPU5Q2n6iY9zBti9tKr6yqheIXyLucNvCVq5fT3KcHHtRF6zxqDf3nc+NDzuABlXJfAK4gi9CHqBBTkryU=
X-Received: by 2002:a05:6808:1413:: with SMTP id
 w19mr2063094oiv.128.1637176347058; 
 Wed, 17 Nov 2021 11:12:27 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
In-Reply-To: <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 17 Nov 2021 20:12:15 +0100
Message-ID: <CAKMK7uHGNrgqjQh3DX4gChpNt+xhB_39sVrhdA3BFqnoW-ue2w@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/self_refresh: Disable self-refresh on input events
To: Brian Norris <briannorris@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, David Airlie <airlied@linux.ie>, 
 linux-rockchip@lists.infradead.org, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Doug Anderson <dianders@chromium.org>, 
 Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_111231_588386_5F6EBB43 
X-CRM114-Status: GOOD (  32.43  )
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

On Thu, Nov 4, 2021 at 12:40 AM Brian Norris <briannorris@chromium.org> wrote:
>
> To improve panel self-refresh exit latency, we speculatively start
> exiting when we
> receive input events. Occasionally, this may lead to false positives,
> but most of the time we get a head start on coming out of PSR. Depending
> on how userspace takes to produce a new frame in response to the event,
> this can completely hide the exit latency.
>
> In local tests on Chrome OS (Rockchip RK3399 eDP), we've found that the
> input notifier gives us about a 50ms head start over the
> fb-update-initiated exit.
>
> Leverage a new drm_input_helper library to get easy access to
> likely-relevant input event callbacks.
>
> Inspired-by: Kristian H. Kristensen <hoegsberg@google.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Can you pls resend with dri-devel on cc? scripts/get_maintainers.pl
should pick this up, you have all the maintainers but not the list.
-Daniel

> ---
> This was in part picked up from:
>
>   https://lore.kernel.org/all/20180405095000.9756-25-enric.balletbo@collabora.com/
>   [PATCH v6 24/30] drm/rockchip: Disable PSR on input events
>
> with significant rewrites/reworks:
>
>  - moved to common drm_input_helper and drm_self_refresh_helper
>    implementation
>  - track state only through crtc->state->self_refresh_active
>
> Note that I'm relatively unfamiliar with DRM locking expectations, but I
> believe access to drm_crtc->state (which helps us track redundant
> transitions) is OK under the locking provided by
> drm_atomic_get_crtc_state().
>
>  drivers/gpu/drm/drm_self_refresh_helper.c | 54 ++++++++++++++++++++---
>  1 file changed, 48 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_self_refresh_helper.c b/drivers/gpu/drm/drm_self_refresh_helper.c
> index dd33fec5aabd..dcab061cc90a 100644
> --- a/drivers/gpu/drm/drm_self_refresh_helper.c
> +++ b/drivers/gpu/drm/drm_self_refresh_helper.c
> @@ -15,6 +15,7 @@
>  #include <drm/drm_connector.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
> +#include <drm/drm_input_helper.h>
>  #include <drm/drm_mode_config.h>
>  #include <drm/drm_modeset_lock.h>
>  #include <drm/drm_print.h>
> @@ -58,17 +59,17 @@ DECLARE_EWMA(psr_time, 4, 4)
>  struct drm_self_refresh_data {
>         struct drm_crtc *crtc;
>         struct delayed_work entry_work;
> +       struct work_struct exit_work;
> +       struct drm_input_handler input_handler;
>
>         struct mutex avg_mutex;
>         struct ewma_psr_time entry_avg_ms;
>         struct ewma_psr_time exit_avg_ms;
>  };
>
> -static void drm_self_refresh_helper_entry_work(struct work_struct *work)
> +static void drm_self_refresh_transition(struct drm_self_refresh_data *sr_data,
> +                                       bool enable)
>  {
> -       struct drm_self_refresh_data *sr_data = container_of(
> -                               to_delayed_work(work),
> -                               struct drm_self_refresh_data, entry_work);
>         struct drm_crtc *crtc = sr_data->crtc;
>         struct drm_device *dev = crtc->dev;
>         struct drm_modeset_acquire_ctx ctx;
> @@ -95,6 +96,9 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
>                 goto out;
>         }
>
> +       if (crtc->state->self_refresh_active == enable)
> +               goto out;
> +
>         if (!crtc_state->enable)
>                 goto out;
>
> @@ -107,8 +111,8 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
>                         goto out;
>         }
>
> -       crtc_state->active = false;
> -       crtc_state->self_refresh_active = true;
> +       crtc_state->active = !enable;
> +       crtc_state->self_refresh_active = enable;
>
>         ret = drm_atomic_commit(state);
>         if (ret)
> @@ -129,6 +133,15 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
>         drm_modeset_acquire_fini(&ctx);
>  }
>
> +static void drm_self_refresh_helper_entry_work(struct work_struct *work)
> +{
> +       struct drm_self_refresh_data *sr_data = container_of(
> +                               to_delayed_work(work),
> +                               struct drm_self_refresh_data, entry_work);
> +
> +       drm_self_refresh_transition(sr_data, true);
> +}
> +
>  /**
>   * drm_self_refresh_helper_update_avg_times - Updates a crtc's SR time averages
>   * @state: the state which has just been applied to hardware
> @@ -223,6 +236,20 @@ void drm_self_refresh_helper_alter_state(struct drm_atomic_state *state)
>  }
>  EXPORT_SYMBOL(drm_self_refresh_helper_alter_state);
>
> +static void drm_self_refresh_helper_exit_work(struct work_struct *work)
> +{
> +       struct drm_self_refresh_data *sr_data = container_of(
> +                       work, struct drm_self_refresh_data, exit_work);
> +
> +       drm_self_refresh_transition(sr_data, false);
> +}
> +
> +static void drm_self_refresh_input_event(void *data)
> +{
> +       struct drm_self_refresh_data *sr_data = data;
> +
> +       schedule_work(&sr_data->exit_work);
> +}
>  /**
>   * drm_self_refresh_helper_init - Initializes self refresh helpers for a crtc
>   * @crtc: the crtc which supports self refresh supported displays
> @@ -232,6 +259,7 @@ EXPORT_SYMBOL(drm_self_refresh_helper_alter_state);
>  int drm_self_refresh_helper_init(struct drm_crtc *crtc)
>  {
>         struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;
> +       int ret;
>
>         /* Helper is already initialized */
>         if (WARN_ON(sr_data))
> @@ -243,6 +271,7 @@ int drm_self_refresh_helper_init(struct drm_crtc *crtc)
>
>         INIT_DELAYED_WORK(&sr_data->entry_work,
>                           drm_self_refresh_helper_entry_work);
> +       INIT_WORK(&sr_data->exit_work, drm_self_refresh_helper_exit_work);
>         sr_data->crtc = crtc;
>         mutex_init(&sr_data->avg_mutex);
>         ewma_psr_time_init(&sr_data->entry_avg_ms);
> @@ -256,8 +285,19 @@ int drm_self_refresh_helper_init(struct drm_crtc *crtc)
>         ewma_psr_time_add(&sr_data->entry_avg_ms, SELF_REFRESH_AVG_SEED_MS);
>         ewma_psr_time_add(&sr_data->exit_avg_ms, SELF_REFRESH_AVG_SEED_MS);
>
> +       sr_data->input_handler.callback = drm_self_refresh_input_event;
> +       sr_data->input_handler.priv = sr_data;
> +       ret = drm_input_handle_register(crtc->dev, &sr_data->input_handler);
> +       if (ret)
> +               goto err;
> +
>         crtc->self_refresh_data = sr_data;
> +
>         return 0;
> +
> +err:
> +       kfree(sr_data);
> +       return ret;
>  }
>  EXPORT_SYMBOL(drm_self_refresh_helper_init);
>
> @@ -275,7 +315,9 @@ void drm_self_refresh_helper_cleanup(struct drm_crtc *crtc)
>
>         crtc->self_refresh_data = NULL;
>
> +       drm_input_handle_unregister(&sr_data->input_handler);
>         cancel_delayed_work_sync(&sr_data->entry_work);
> +       cancel_work_sync(&sr_data->exit_work);
>         kfree(sr_data);
>  }
>  EXPORT_SYMBOL(drm_self_refresh_helper_cleanup);
> --
> 2.34.0.rc0.344.g81b53c2807-goog
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
