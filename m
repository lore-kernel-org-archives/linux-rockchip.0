Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42AF6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 02:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9rXHRXo9D8eRry8fsRN4299u2ysHbIsyn1H+mKZxNo=; b=eeiHzKKb+nYj6I
	hMOqtMKR5+ikR8rfxBT1BFkP5NWhpk6mK0dKOTT/PGydNUm7+LlKc+Vr/UMUs0eFv1XFpODQsNr1i
	7wfb502eENP27mB7/AAn/QRadnjZta+8SWV7SFBFJd302O92mEyqUZAkKGqMRKS3V7gtxLJRcHrdK
	a2lgXjAATOC02D30MRWXogc3JQVBJgMlCdFM8maCxBcrT4OlSP5LSDiiqbKiHXV67SnZ51+JzgLNL
	K9EOFVzVY9limFxvue2VvqP0TqtcCAqzw4a0WiZWq6R4NNvgCkJXzMmDO0Cj5t5jKYSKGQ80Qmo1W
	NPX1Z/SH8DYI9x2tAqZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPEL5-0012Ky-VA; Wed, 02 Mar 2022 02:03:39 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPEL3-0012KN-Rp
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 02:03:39 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 s1-20020a056830148100b005acfdcb1f4bso428653otq.4
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Mar 2022 18:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MVhWLewea9Kbp4+jmYh/qLY6kiLHJdrGhuGIPKoejkU=;
 b=j8ELH0UmrgvS6wz6hFWYrb/ptIXj4OGBI3/IaaFFymBS4/SwuKvJkbVHGxtUrDuqNl
 hsRVUnkrI/hS3ZjBNA/xRs6w4ipPsKjosZOLqYfRttj+FFWg6iZAoKACkvXpm4wlE9Nn
 D5bUXfQGOrXXat87sRQg//iOucEnAnZ+EYa0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MVhWLewea9Kbp4+jmYh/qLY6kiLHJdrGhuGIPKoejkU=;
 b=djLY+44qzl9QfkLKPxdvUe7zS+3F57OktfhsiUHQCUsZBflY/LmyFUHiWPLO6H4blh
 9grsVRByOxRa0mXVvYwmB8UyaadBZVeZkh3WqHHBmeVb+l/0aZAl8RyjWt8JfH9Pe+j3
 bqsKwgXeONHXCUy+nF2McEhYebOf5XPMawF7Vbe2ixbR4uAcegv+sXOUPn/lFqtkolvg
 mzKoC74XiTIAJcWndSmgiup/jHPvd55512L0MrV9ozStC3jkDlwCNsP33yfzZ+9o8205
 PX3w31G+hOk1jBQCkMkntk1blakWfmb+tLaDsocOoEftei47uzG0yCU9o10FS+62yWSr
 vWUA==
X-Gm-Message-State: AOAM533sbZW/snNDHOq2oA6Zwulx2HutQQVtKHLA7ME6zWz5cFb++RPq
 d/4zDwjp+YsUjPxvGERvesc0bR5cokbNag==
X-Google-Smtp-Source: ABdhPJxUPSajRBJ3xbGy+WOqWtmofYwVUBbIk8aKkD/lWTwV7Onb9ZIPXLd3O7BxgtLyfQVdd65xLQ==
X-Received: by 2002:a9d:4686:0:b0:5ae:e472:2dda with SMTP id
 z6-20020a9d4686000000b005aee4722ddamr13864440ote.317.1646186613262; 
 Tue, 01 Mar 2022 18:03:33 -0800 (PST)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com.
 [209.85.167.181]) by smtp.gmail.com with ESMTPSA id
 l1-20020a4aa781000000b0031cf8e00738sm7002456oom.1.2022.03.01.18.03.29
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Mar 2022 18:03:31 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id 12so472340oix.12
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Mar 2022 18:03:29 -0800 (PST)
X-Received: by 2002:a05:6808:18a3:b0:2d5:7ce7:d456 with SMTP id
 bi35-20020a05680818a300b002d57ce7d456mr17402856oib.77.1646186609133; Tue, 01
 Mar 2022 18:03:29 -0800 (PST)
MIME-Version: 1.0
References: <20220217144136.v3.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <20220217144136.v3.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
 <CAD=FV=UudBo7aZqD8oGHAu94LEYovMtFq7hjwOG2_8yxUeNi_w@mail.gmail.com>
In-Reply-To: <CAD=FV=UudBo7aZqD8oGHAu94LEYovMtFq7hjwOG2_8yxUeNi_w@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 1 Mar 2022 18:03:18 -0800
X-Gmail-Original-Message-ID: <CA+ASDXPGpJystb0uFNT8f+FSzERC0-YxVfGLRo-U1uoTRMHY6Q@mail.gmail.com>
Message-ID: <CA+ASDXPGpJystb0uFNT8f+FSzERC0-YxVfGLRo-U1uoTRMHY6Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: analogix_dp: Enable autosuspend
To: Doug Anderson <dianders@chromium.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 LKML <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <sean@poorly.run>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_180337_907536_C971A6B4 
X-CRM114-Status: GOOD (  22.37  )
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

On Tue, Feb 22, 2022 at 2:10 PM Doug Anderson <dianders@chromium.org> wrote:
> On Thu, Feb 17, 2022 at 2:42 PM Brian Norris <briannorris@chromium.org> wrote:
> > --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > @@ -1121,7 +1121,7 @@ static int analogix_dp_get_modes(struct drm_connector *connector)
> >
> >                 pm_runtime_get_sync(dp->dev);
> >                 edid = drm_get_edid(connector, &dp->aux.ddc);
> > -               pm_runtime_put(dp->dev);
> > +               pm_runtime_put_autosuspend(dp->dev);
>
> So I think you can fully get rid of these ones now and rely on the
> ones in the aux transfer, right?

Yep, good catch.

> >                 if (edid) {
> >                         drm_connector_update_edid_property(&dp->connector,
> >                                                            edid);
> > @@ -1642,7 +1642,7 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
> >
> >         ret = analogix_dp_transfer(dp, msg);
> >  out:
> > -       pm_runtime_put(dp->dev);
> > +       pm_runtime_put_autosuspend(dp->dev);
> >
> >         return ret;
> >  }
> > @@ -1775,6 +1775,8 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
> >         if (ret)
> >                 return ret;
> >
> > +       pm_runtime_use_autosuspend(dp->dev);
> > +       pm_runtime_set_autosuspend_delay(dp->dev, 100);
>
> It's explicitly listed in the Documentation that you need the
> corresponding pm_runtime_dont_use_autosuspend(). Specifically, it
> says:
>
> > Drivers in ->remove() callback should undo the runtime PM changes done
> > in ->probe(). Usually this means calling pm_runtime_disable(),
> > pm_runtime_dont_use_autosuspend() etc.
>
> Not that it's very common to see anyone actually get it right, but I
> seem to remember running into an issue when I didn't do it. I think
> ti-sn65dsi86 still has it wrong since I found out about this later.
> Need to write a patch up for that... Basically you want to put it
> right before the two calls in your driver to pm_runtime_disable().

Ack.

Speaking of API misfeatures that we missed: I've failed to call
pm_runtime_mark_last_busy(). I'll add that in the next rev, for the
cases where we weren't already calling *_put_sync() (i.e., presumably
we don't really care to wait around for autosuspend).

*gripe* What a silly API. *gripe*

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
