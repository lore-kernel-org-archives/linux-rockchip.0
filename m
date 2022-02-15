Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51B48C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 23:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MurKmHmNVRnr64xFWqCSQRl3QqWKS6G7bMLPBk9cuk4=; b=IfTiFLp0CCTn4W
	JISMM2SgxVyjk6vv+NYVgIqlmrhm44FCLIuZbolbh5c+fTxKQuOvQE3QV5673/27OJEaWMkz830Lu
	udf52UrNBXw/p9EO2PTX9FiOCTodRmAcyrQfcaLh0shUAgZEp9paR3YiOezcXZl/WVa02gHCvMS4f
	t6pz+FbWOszUDpg4XfjzAITFCwMOj0jTaALaHou1lAlqqeYla/8H2JlUTivYyP4s5mS565Cv7J3FM
	+xvdmEwRtofW2uSMurSwRl5F62+ImN5IktXqHhLmQkRs4z70rn9TkxOPbAd87UlncXFFGxJO4+/Xh
	3fiOr8EnpLxUu2TInibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK7We-004xOp-0b; Tue, 15 Feb 2022 23:46:28 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK7Wa-004xNv-RG
 for linux-rockchip@lists.infradead.org; Tue, 15 Feb 2022 23:46:26 +0000
Received: by mail-il1-x131.google.com with SMTP id h11so225333ilq.9
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 15:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8D1y9JY/TcIg793QohbrVLgdALG9bj0J1UUN+R+ZXyQ=;
 b=BOz+RWVBzt+//OXyKfTapB3uNHmGuMA1zjAC7Tb8wkL/9bCFb79wWGfCYyPhCB+ELd
 fuPAa5qV5KQWaKfTKAQl0ZRqb9B2ai8PkbnB0pjiKf4HArUsyeEMZGcEHWbaTQrmMajN
 VozDS2JfO/MkwzIZUMHByJIj65YP5IVXqNmMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8D1y9JY/TcIg793QohbrVLgdALG9bj0J1UUN+R+ZXyQ=;
 b=TMI6dPqnw7iv0wFUriEGIk/Vzs+FRCg+5sQEeiYIOOJY9FJtcL3IlS28emJTBMoF2F
 Tou/0h4WwfszyJkAmt4ApHJj2GvSGUUEiEIj5l8LQnbgr37eTbJiuUsnqQ4/oLMDVvYr
 M1+gLsshQ1TxR3WcTPb9k0dDjj1I3yncA5mmFbb/ywf1UAZSNKpt36bO4tNV2zMGcTOx
 TjO/FalJxZNSdLmiSMqIpmuckkw4CmhHrqiYHoY0vEDrsPgvWioaI9tuuXyAv0K7rnq/
 d2CJukldZrkewDhTFUMT9dP64O5LGCvQZ/J5tcBv/vCR6KzoNldnhZMbKeh5kO1VCgb/
 0C3w==
X-Gm-Message-State: AOAM533j54tql9WMp9cOoOClKlRG3/6lIwvyiy2/xTxfqww7fG1Id7kM
 TUz98ISKwvPvezJtIEV1PmNnfxON7/1MtQ==
X-Google-Smtp-Source: ABdhPJyZk7CKhrnGi/N/h/o6+w5Ndc+gwE1nSioDxJ3JxlE0Ml4zxz39zQXKLCTXjX+24CRYo6IhdQ==
X-Received: by 2002:a92:7513:0:b0:2b9:5b61:e376 with SMTP id
 q19-20020a927513000000b002b95b61e376mr67570ilc.193.1644968783473; 
 Tue, 15 Feb 2022 15:46:23 -0800 (PST)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com.
 [209.85.166.172])
 by smtp.gmail.com with ESMTPSA id s3sm19997498ilp.57.2022.02.15.15.46.22
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Feb 2022 15:46:22 -0800 (PST)
Received: by mail-il1-f172.google.com with SMTP id d7so227982ilf.8
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 15:46:22 -0800 (PST)
X-Received: by 2002:a05:6e02:12ef:b0:2be:2c34:17b2 with SMTP id
 l15-20020a056e0212ef00b002be2c3417b2mr108639iln.120.1644968782044; Tue, 15
 Feb 2022 15:46:22 -0800 (PST)
MIME-Version: 1.0
References: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <CAD=FV=XU0bYVZk+-jPWZVoODW79QXOJ=NQy+RH=fYyX+LCZb2Q@mail.gmail.com>
 <CA+ASDXPXKVwcZGYoagJYPm4E7DzaJmEVEv2FANhLH-juJw+r+Q@mail.gmail.com>
In-Reply-To: <CA+ASDXPXKVwcZGYoagJYPm4E7DzaJmEVEv2FANhLH-juJw+r+Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 15 Feb 2022 15:46:10 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VYe1rLKANQ8eom7g8x1v6_s_OYnX819Ax4m7O3UwDHmg@mail.gmail.com>
Message-ID: <CAD=FV=VYe1rLKANQ8eom7g8x1v6_s_OYnX819Ax4m7O3UwDHmg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220215_154624_917433_B9B7171E 
X-CRM114-Status: GOOD (  53.63  )
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

On Tue, Feb 15, 2022 at 2:52 PM Brian Norris <briannorris@chromium.org> wrote:
>
> On Tue, Feb 15, 2022 at 1:31 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
>
> Hi!
>
> > On Fri, Oct 1, 2021 at 2:50 PM Brian Norris <briannorris@chromium.org> wrote:
> > >
> > > If the display is not enable()d, then we aren't holding a runtime PM
> > > reference here. Thus, it's easy to accidentally cause a hang, if user
> > > space is poking around at /dev/drm_dp_aux0 at the "wrong" time.
> > >
> > > Let's get the panel and PM state right before trying to talk AUX.
>
> > > diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > index b7d2e4449cfa..6fc46ac93ef8 100644
> > > --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > @@ -1632,8 +1632,27 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
> ...
> > > +       pm_runtime_get_sync(dp->dev);
> > > +       ret = analogix_dp_transfer(dp, msg);
> > > +       pm_runtime_put(dp->dev);
> >
> > I've spent an unfortunate amount of time digging around the DP AUX bus
> > recently, so I can at least say that I have some experience and some
> > opinions here.
>
> Thanks! Experience is welcome, and opinions too sometimes ;)
>
> > IMO:
> >
> > 1. Don't power the panel on. If the panel isn't powered on then the DP
> > AUX transfer will timeout. Tough nuggies. Think of yourself more like
> > an i2c controller and of this as an i2c transfer implementation. The
> > i2c controller isn't in charge of powering up the i2c devices on the
> > bus. If userspace does an "i2c detect" on an i2c bus and some of the
> > devices aren't powered then they won't be found. If you try to
> > read/write from a powered off device that won't work either.
>
> I guess this, paired with the driver examples below (ti-sn65dsi86.c,
> especially, which specifically throws errors if the panel isn't on),
> makes some sense. It's approximately (but more verbosely) what Andrzej
> was recommending too, I guess. It still makes me wonder what the point
> of the /dev/drm_dp_aux<N> interface is though, because it seems like
> you're pretty much destined to not have reliable operation through
> that means.

I can't say I have tons of history for those files. I seem to recall
maybe someone using them to have userspace tweak the embedded
backlight on some external DP connected panels? I think we also might
use it in Chrome OS to update the firmware of panels (dunno if
internal or external) in some cases too? I suspect that it works OK
for certain situations but it's really not going to work in all
cases...


> Also note: I found that the AUX bus is really not working properly at
> all (even with this patch) in some cases due to self-refresh. Not only
> do we need the panel enabled, but we need to not be in self-refresh
> mode. Self-refresh is not currently exposed to user space, so user
> space has no way of knowing the panel is currently active, aside from
> racily inducing artificial display activity.

I suppose this just further proves the point that this is really not a
great interface to rely on. It's fine for debugging during hardware
bringup and I guess in limited situations it might be OK, but it's
really not something we want userspace tweaking with anyway, right? In
general I expect it's up to the kernel to be controlling peripherals
on the DP AUX bus. The kernel should have a backlight driver and
should do the AUX transfers needed. Having userspace in there mucking
with things is just a bad idea. I mean, userspace also doesn't know
when a panel has been power cycled and potentially lost any changes
that they might have written, right?

I sorta suspect that most of the uses of these files are there because
there wasn't a kernel driver and someone thought that doing it in
userspace was the way to go?


> But if we're OK with "just throw errors" or "just let stuff time out",
> then I guess that's not a big deal. My purpose is to avoid hanging the
> system, not to make /dev/drm_dp_aux<N> useful.
>
> > 2. In theory if the DP driver can read HPD (I haven't looked through
> > the analogix code to see how it handles it) then you can fail an AUX
> > transfer right away if HPD isn't asserted instead of timing out. If
> > this is hard, it's probably fine to just time out though.
>
> This driver does handle HPD, but it also has overrides because
> apparently it doesn't work on some systems. I might see if we can
> leverage it, or I might just follow the bridge-enabled state (similar
> to ti-sn65dsi86.c's 'comms_enabled').

The "comms_enabled" is a bit ugly and is mostly there because we
couldn't enable the bridge chip at the right time for some (probably
unused) configuration, so I wouldn't necessarily say that it's the
best model to follow. That being said, happy to review something if
this model looks like the best way to go.


> > 3. Do the "pm_runtime" calls, but enable "autosuspend" with something
> > ~1 second autosuspend delay. When using the AUX bus to read an EDID
> > the underlying code will call your function 16 times in quick
> > succession. If you're powering up and down constantly that'll be a bit
> > of a waste.
>
> Does this part really matter? For properly active cases, the bridge
> remains enabled, and it holds a runtime PM reference. For "maybe
> active" (your "tough nuggies" situation above), you're probably right
> that it's inefficient, but does it matter, when it's going to be a
> slow timed-out operation anyway? The AUX failure will be much slower
> than the PM transition.
>
> I guess I can do this anyway, but frankly, I'll just be copy/pasting
> stuff from other drivers, because the runtime PM documentation still
> confuses me, and moreso once you involve autosuspend.

For the ti-sn65dsi86 it could take a few ms to power it up and down
each time and it seemed wasteful to do this over and over again.
Agreed that pm_runtime can easily get confusing.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
