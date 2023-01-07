Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8CABC54EBD
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 01:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHO6swJoN6SpgNDBl3wFvD7yDr4GKfavOmYUXejGUpw=; b=USR6AkfMnip5L8
	txzwe5uE/kcKcg985YRz9OralzRmQ1NvT4MOE4f9cqnpBqRmybCvJURp4mUkyr3yZjgCDxXnRg7N2
	ByAPR/L9Z3V/a+hVW4RghvPaNsPgi/wVcUUYJG6q7Per/HavannInw2dCUqEDtsHwQc85nBQwyiK9
	ATrAemBtLvguiVpNQ8o3cNlHdbnP9RVp4H64m0t3NXHiGeJ1XWk4Owj6luNDc6zW+S1Z5yGBKVyBu
	LYOH7kIHtWIRnP42W4utxcGHyhGOqRBa9ffMYxV4UDQJKbd/k03gP1KHcyY5/J7z5XJPAntXldoRo
	y1bEGPN1VfGHiIDA4GhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDxto-00GGPI-1h; Sat, 07 Jan 2023 01:21:28 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDxtl-00GGMy-5K
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 01:21:26 +0000
Received: by mail-pj1-x1036.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso7048182pjt.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 17:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fGp7XQc2VGbBDxiW6oPsPSq8rd+Pp+GUF89FSmtguMY=;
        b=ctHCqkF8lWWCEMvSMP9SB71dYd2YSRUg9u4uNjoTKAZOuhG9kNvAcXTqwBn8Pl6rDm
         o/rzUuIRcux5YaDdSV5Ygdm16fu+ymgygpIhROQBk1CdYiXLc6BAV0oHyT4CP24tQoAP
         BJLKuFdc8n/R4v9FAHU85MgPACIAHu0IsRGws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fGp7XQc2VGbBDxiW6oPsPSq8rd+Pp+GUF89FSmtguMY=;
        b=2rSH8LOgMVS+lpGMTNC4FXYoaajh2yyReO7p0PZuZuCNSMkpXI8OFpuUffo7jX5aAk
         7iIsUxY4lxSxk1zKPNNX7o9nr/alHQM80zlxTb16VKzFCcmZs8tVaUbEagh04UbWBOgE
         rSTohBah0VLKGi4uK0V6X+e8KjrnKwTbWXdeA8VeDGvqBfQj+upSmPEt/ODEHKxxuzQ0
         mp9XFzsQRpda2yqlrEvAtw2dgJdIte7i8XAxgY7ZqffzwOEBqIpUF+pK/hUELT/6Iux3
         0O7iwcdOjVGe93e0IdGiibmqXb4U7T9wigOzuP9bH1OxEMwTmGeJkVs5/YZgbZjDyDSl
         ankw==
X-Gm-Message-State: AFqh2kr7cW0deBXq215coXnKAvlwy+XqSq4PkOaxIVnhvTxxINbWKYUJ
	aAqXyMGjRoYhb0glYYcdO7VznQ==
X-Google-Smtp-Source: AMrXdXucd5QiL3Gpmu1dQs5wApEskRuwAtx0qubwZvtkLbZyghXUapggu1smjFX+LjoGpUNSoGZhlw==
X-Received: by 2002:a17:902:e354:b0:192:6aa8:e3d8 with SMTP id p20-20020a170902e35400b001926aa8e3d8mr46653793plc.28.1673054482918;
        Fri, 06 Jan 2023 17:21:22 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:bc4e:2cc9:68b3:15dc])
        by smtp.gmail.com with ESMTPSA id m7-20020a170902db0700b00192b0a07891sm1545055plx.101.2023.01.06.17.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 17:21:22 -0800 (PST)
Date: Fri, 6 Jan 2023 17:21:19 -0800
From: Brian Norris <briannorris@chromium.org>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	"kernelci.org bot" <bot@kernelci.org>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 2/2] drm/rockchip: vop: Leave vblank enabled in
 self-refresh
Message-ID: <Y7jJDw4RcNceyLbR@google.com>
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <20230105174001.2.Ic07cba4ab9a7bd3618a9e4258b8f92ea7d10ae5a@changeid>
 <9455bc5b-2074-4f48-71a7-5c816ee19a78@mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9455bc5b-2074-4f48-71a7-5c816ee19a78@mailbox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_172125_254293_000C98DC 
X-CRM114-Status: GOOD (  14.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jan 06, 2023 at 12:42:54PM +0100, Michel D=E4nzer wrote:
> On 1/6/23 02:40, Brian Norris wrote:
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > @@ -719,11 +719,11 @@ static void vop_crtc_atomic_disable(struct drm_cr=
tc *crtc,
> >  =

> >  	mutex_lock(&vop->vop_lock);
> >  =

> > -	drm_crtc_vblank_off(crtc);
> > -
> >  	if (crtc->state->self_refresh_active)
> >  		goto out;
> >  =

> > +	drm_crtc_vblank_off(crtc);
> > +
> >  	/*
> >  	 * Vop standby will take effect at end of current frame,
> >  	 * if dsp hold valid irq happen, it means standby complete.
> =

> The out label immediately unlocks vop->vop_lock again, seems a bit pointl=
ess. :)

Oops, of course. Will change that in v2.

> AFAICT the self_refresh_active case should just return immediately,
> the out label would also send any pending atomic commit completion
> event, which seems wrong now that the vblank interrupt is left
> enabled.

If I return immediately and drop that completion, I hit a warning:

[    4.423876] WARNING: CPU: 5 PID: 58 at drivers/gpu/drm/drm_atomic_helper=
.c:2460 drm_atomic_helper_commit_hw_done+0xe0/0xe8
...
[    4.424036] Call trace:
[    4.424039]  drm_atomic_helper_commit_hw_done+0xe0/0xe8
[    4.424045]  drm_atomic_helper_commit_tail_rpm+0x58/0x7c
...

I plan to leave it as-is for v2.

> (I also wonder if drm_crtc_vblank_off doesn't take care of
> that already, at least amdgpu doesn't do this explicitly AFAICT)

I'm not sure.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
