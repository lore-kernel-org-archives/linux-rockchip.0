Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C49C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 21:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaTGbEUoc8AMnqp6FMm+wf8JZS52ZYTCyMkiXFSg03w=; b=FPJefzwpR0hvfI
	wvZRRxjklu1gjLJEsuEuc+XTI1lqbdIjPvFU2PNzF3o8VaBjeOrqa/U6HCiIgGoWc2F49HnTFtHt8
	RN2ta+7tFxT0rE2+k7UuFFGMJjpO3oOt0xSHeV2nFqHwZPHIOJtU/RHtXdlu1aRE/C3mQ6Gvw2ZoG
	7u3h4Lp807sfEjB7MJgGHoYltBgkuqO7sf8DGHx9IHQaKgr6AJLyZg/S/x9cN0FLUHCRAIqa19wPX
	Xj4vBCDaUtKBR3akVv+upNFbgndF2PXPl0LTAHZNLuo78eC2SsDa+IyYIC/rS9b49LqWyjDUa7GjO
	ctJEGt17coEyYxGq5b9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK5Q0-004hlv-FB; Tue, 15 Feb 2022 21:31:28 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK5Pw-004hlA-PX
 for linux-rockchip@lists.infradead.org; Tue, 15 Feb 2022 21:31:26 +0000
Received: by mail-io1-xd35.google.com with SMTP id h16so18164iol.11
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 13:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fele8naCnj1tSHRyG9Ogo68xWxTgJNE5hEc6t985U/Y=;
 b=LZbo2DiOH2tF8Tl/t20r4OjE/KvnsUs22LNv7+pZLZ5HIaTwZBqaF3RtAUUkAPDCOZ
 GumOIavgQoROuq7iGLNguigwifsX10SlH0/8Rh9RwLTK2Tp2DNoNJkJcc2FBrePaIk6L
 lbGzzlgNgGf7bUUma7sCUxDF7/TpqLm2sRqnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fele8naCnj1tSHRyG9Ogo68xWxTgJNE5hEc6t985U/Y=;
 b=hM/AdFaTXBJe+Zt6GsawPlbwmijdns1bn1UVCU/E/wd2y12PuXbvVbSZiB1CTUl2DJ
 WtZyZr3RmQfqRIJI1kwOUt5SMuzs6TEKcXKStOZY91fGTqfqnBpb6BwiVeedN88USJd9
 ENCQ6u2i4dH5+v/BPFvq+IOEsIvPWjjTMM4TawaVS5PakUJs3rZqkAGsARgP5GHah5f3
 qt+PE+8OkkQtIZqM20XPd+6F7ZsV1lw9rJXgrfCroHkN896a7o4dVvSZ2yYXzGXkofmR
 LagK4vyhynk3dDAhq6uB/19edcTeDYBQFnGYUDK8g/71O8oaRbzAUGh73N3y3BNv4to+
 Dk5w==
X-Gm-Message-State: AOAM533vaEUQBmPNMY8InkOg9H4dWfpVv6XHUt1Ts8B+aekhJ7JnSeZh
 L/6LnLDwflmaBU0tpn2yTRelzi6eQm3v0Q==
X-Google-Smtp-Source: ABdhPJxk7hN5KPRU5JjRis28ETOuCbF/iD3+pkYKy4L8UBlNk2qeAjcGnFVDPnJ/Rro0sZ1hD3nFeA==
X-Received: by 2002:a02:7781:: with SMTP id g123mr550761jac.244.1644960682392; 
 Tue, 15 Feb 2022 13:31:22 -0800 (PST)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com.
 [209.85.166.178])
 by smtp.gmail.com with ESMTPSA id t195sm17089808iof.47.2022.02.15.13.31.21
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Feb 2022 13:31:21 -0800 (PST)
Received: by mail-il1-f178.google.com with SMTP id o10so57931ilh.0
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 13:31:21 -0800 (PST)
X-Received: by 2002:a05:6e02:1bef:: with SMTP id
 y15mr639379ilv.120.1644960680707; 
 Tue, 15 Feb 2022 13:31:20 -0800 (PST)
MIME-Version: 1.0
References: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
In-Reply-To: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 15 Feb 2022 13:31:09 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XU0bYVZk+-jPWZVoODW79QXOJ=NQy+RH=fYyX+LCZb2Q@mail.gmail.com>
Message-ID: <CAD=FV=XU0bYVZk+-jPWZVoODW79QXOJ=NQy+RH=fYyX+LCZb2Q@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
To: Brian Norris <briannorris@chromium.org>
Cc: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Sean Paul <sean@poorly.run>, Jonas Karlman <jonas@kwiboo.se>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "# 4.0+" <stable@vger.kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_133124_870704_EC68A215 
X-CRM114-Status: GOOD (  26.84  )
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

On Fri, Oct 1, 2021 at 2:50 PM Brian Norris <briannorris@chromium.org> wrote:
>
> If the display is not enable()d, then we aren't holding a runtime PM
> reference here. Thus, it's easy to accidentally cause a hang, if user
> space is poking around at /dev/drm_dp_aux0 at the "wrong" time.
>
> Let's get the panel and PM state right before trying to talk AUX.
>
> Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
> Cc: <stable@vger.kernel.org>
> Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v2:
> - Fix spelling in Subject
> - DRM_DEV_ERROR() -> drm_err()
> - Propagate errors from un-analogix_dp_prepare_panel()
>
>  .../drm/bridge/analogix/analogix_dp_core.c    | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index b7d2e4449cfa..6fc46ac93ef8 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1632,8 +1632,27 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>                                        struct drm_dp_aux_msg *msg)
>  {
>         struct analogix_dp_device *dp = to_dp(aux);
> +       int ret, ret2;
>
> -       return analogix_dp_transfer(dp, msg);
> +       ret = analogix_dp_prepare_panel(dp, true, false);
> +       if (ret) {
> +               drm_err(dp->drm_dev, "Failed to prepare panel (%d)\n", ret);
> +               return ret;
> +       }
> +
> +       pm_runtime_get_sync(dp->dev);
> +       ret = analogix_dp_transfer(dp, msg);
> +       pm_runtime_put(dp->dev);

I've spent an unfortunate amount of time digging around the DP AUX bus
recently, so I can at least say that I have some experience and some
opinions here.

IMO:

1. Don't power the panel on. If the panel isn't powered on then the DP
AUX transfer will timeout. Tough nuggies. Think of yourself more like
an i2c controller and of this as an i2c transfer implementation. The
i2c controller isn't in charge of powering up the i2c devices on the
bus. If userspace does an "i2c detect" on an i2c bus and some of the
devices aren't powered then they won't be found. If you try to
read/write from a powered off device that won't work either.

2. In theory if the DP driver can read HPD (I haven't looked through
the analogix code to see how it handles it) then you can fail an AUX
transfer right away if HPD isn't asserted instead of timing out. If
this is hard, it's probably fine to just time out though.

3. Do the "pm_runtime" calls, but enable "autosuspend" with something
~1 second autosuspend delay. When using the AUX bus to read an EDID
the underlying code will call your function 16 times in quick
succession. If you're powering up and down constantly that'll be a bit
of a waste.


The above will help set us up for when someone goes through and
enables the "new" DP AUX bus and generic eDP panels on for
analogix-edp. See commit aeb33699fc2c ("drm: Introduce the DP AUX
bus"). In that case panels will actually be instantiated DP AUX
Endpoints instead of platform devices. They'll be given the DP AUX bus
and they'll be able to read the EDID over that. In this case, the
panel code turns itself on (it knows how to turn itself on enough to
read the EDID) and then calls the DP AUX transfer code. :-)


For a reference, you could look at
`drivers/gpu/drm/bridge/ti-sn65dsi86.c`. Also
`drivers/gpu/drm/bridge/parade-ps8640.c`

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
