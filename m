Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8239DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 22:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKOHQgF7uDrGDUCQ5R1zxAAM+no5hpNxTmFN7XEXWS0=; b=NnysrqfEC4SEbj
	mahnH8JnOeuFaGnIJq0wu5PJFXnWhgUyc0fsVBdy5C4wF543egixzI/Ms2mXCPy+AWTVdLXeZe5UR
	1oW6x3KpSU2a+RUw5E642docq94lZHOxAjuRs9Hs15w/GyOxwK4Mhpct31B/3Jx95faSM47ETeXGx
	VMwU6oVr7D9i5k5eVjL/i3akiKTEYFqFYic960fi5fQEUEwwcVdQfLrDKmj4E74nudiZ6uASALyJM
	zaijgznXJFbmtzMiciUbAWsYl4LXLDPgV9fdCclyWNWEWS/rTH3FU+0tUAcRFS3EfVKDzcUoCIbOd
	B1ql40cQ/zdFBYuK98tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMdMK-00BkwT-Uc; Tue, 22 Feb 2022 22:10:12 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMdMG-00BkuT-Dc
 for linux-rockchip@lists.infradead.org; Tue, 22 Feb 2022 22:10:12 +0000
Received: by mail-ej1-x62c.google.com with SMTP id lw4so47144888ejb.12
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Feb 2022 14:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ncJM2T87X2o8pTyVRveZGSOn+a2+yRMOSUhJC3B/Gq4=;
 b=Ivl+fOAzjwZVikAE//GhKXqrg3FgwasunygzL6X3K7tmMukt25sYmGH/BgwYn33eey
 2oGVVJytRTJ3g4D06lpohmTyGRsIdaXZQWvxUoiiNWjYdiWXL/9J4CrtB84gRRQ47W25
 ecpmNDu6kl1oulpWSeokNUQNW6BZAhhT25Rls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ncJM2T87X2o8pTyVRveZGSOn+a2+yRMOSUhJC3B/Gq4=;
 b=fW6JYDdXMkCh/m/bcOC08X2Hl4SR+p08hw3VNalr/yseWO+F8rUAZ053bS/GBFuo8o
 vJwlUz839W/6MXTzus5JnEYbbsrHbIccOVprFEISpZWUPiLWMjvCz/L2N1iR0R1R0qjD
 M1kdUgLmFMw7KRAPqQ3tsyD/GWrBn3S95t/4NqTZD4W9z6a6hxPk3qhJmB/45MAG0Gpr
 zVT15uX2b3dhODlOOE03uFqPCOMffKMBeLtVU0PT5xhluMd2XJ6oILXdRBqRY6ZUUsrL
 sO7U4S+RTxsJzjT0z2xPGcVY6x3e97UqnJ+oNz2UpnZDl1OyxQ0CjGeC1m1BlQkJLEiS
 NuWA==
X-Gm-Message-State: AOAM532V4ZeIKUr7sM91c/bZpId5t0MI1c4+Z+1epuqzZJbe3oQ2NFPd
 vinGSnGYCFPGNNtvpdgWTi592BgU4/wjd3WDFkE=
X-Google-Smtp-Source: ABdhPJxLiCOcM3Kauscef/Fo8Brx9yb+EdovCMK31xF9wLoy4qYkCL//Q638wbMWq2OG/1xLzz0BVQ==
X-Received: by 2002:a17:906:4987:b0:6c9:e16a:b5bf with SMTP id
 p7-20020a170906498700b006c9e16ab5bfmr20087576eju.247.1645567806022; 
 Tue, 22 Feb 2022 14:10:06 -0800 (PST)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id ek26sm7916525edb.68.2022.02.22.14.10.04
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Feb 2022 14:10:04 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id s13so7541666wrb.6
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Feb 2022 14:10:04 -0800 (PST)
X-Received: by 2002:adf:ef07:0:b0:1e3:333f:a101 with SMTP id
 e7-20020adfef07000000b001e3333fa101mr21559376wro.301.1645567804216; Tue, 22
 Feb 2022 14:10:04 -0800 (PST)
MIME-Version: 1.0
References: <20220217144136.v3.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <20220217144136.v3.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
In-Reply-To: <20220217144136.v3.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 22 Feb 2022 14:09:51 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UudBo7aZqD8oGHAu94LEYovMtFq7hjwOG2_8yxUeNi_w@mail.gmail.com>
Message-ID: <CAD=FV=UudBo7aZqD8oGHAu94LEYovMtFq7hjwOG2_8yxUeNi_w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: analogix_dp: Enable autosuspend
To: Brian Norris <briannorris@chromium.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 LKML <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <sean@poorly.run>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_141008_505298_486DF2A3 
X-CRM114-Status: GOOD (  22.44  )
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

On Thu, Feb 17, 2022 at 2:42 PM Brian Norris <briannorris@chromium.org> wrote:
>
> DP AUX transactions can consist of many short operations. There's no
> need to power things up/down in short intervals.
>
> I pick an arbitrary 100ms; for the systems I'm testing (Rockchip
> RK3399), runtime-PM transitions only take a few microseconds.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v3:
>  - New in v3
>
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 16be279aed2c..d82a4ddf44e7 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1121,7 +1121,7 @@ static int analogix_dp_get_modes(struct drm_connector *connector)
>
>                 pm_runtime_get_sync(dp->dev);
>                 edid = drm_get_edid(connector, &dp->aux.ddc);
> -               pm_runtime_put(dp->dev);
> +               pm_runtime_put_autosuspend(dp->dev);

So I think you can fully get rid of these ones now and rely on the
ones in the aux transfer, right?


>                 if (edid) {
>                         drm_connector_update_edid_property(&dp->connector,
>                                                            edid);
> @@ -1642,7 +1642,7 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>
>         ret = analogix_dp_transfer(dp, msg);
>  out:
> -       pm_runtime_put(dp->dev);
> +       pm_runtime_put_autosuspend(dp->dev);
>
>         return ret;
>  }
> @@ -1775,6 +1775,8 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>         if (ret)
>                 return ret;
>
> +       pm_runtime_use_autosuspend(dp->dev);
> +       pm_runtime_set_autosuspend_delay(dp->dev, 100);

It's explicitly listed in the Documentation that you need the
corresponding pm_runtime_dont_use_autosuspend(). Specifically, it
says:

> Drivers in ->remove() callback should undo the runtime PM changes done
> in ->probe(). Usually this means calling pm_runtime_disable(),
> pm_runtime_dont_use_autosuspend() etc.

Not that it's very common to see anyone actually get it right, but I
seem to remember running into an issue when I didn't do it. I think
ti-sn65dsi86 still has it wrong since I found out about this later.
Need to write a patch up for that... Basically you want to put it
right before the two calls in your driver to pm_runtime_disable().

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
