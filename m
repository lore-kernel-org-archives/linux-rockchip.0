Return-Path: <SRS0=b48f=H2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA310C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 14:58:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EDDF864E05
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 14:58:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EDDF864E05
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n7+e0EaiizNRrVRTjGDoGAZmph1I7kUotYxKAktlt+A=; b=tuEnyL+rYZq4u2mOCVqB+7YEh
	pi4d4Bwk1PNyXiyKtLDdPAgC46bBYE+qw0wYTRIpB42O9hw5mZZLx4JhtT5op2rTrmFwfeHmTBjUp
	vn50s0TTcqxoJn51eG//WQUs1voQCp71DewbWr/w5PyOdtpqVXpJgMH9OxFURkfopAeZrp+JK2Cxx
	GouUsiY1BHM+BFfsJnfkhRhn0mFllQl5DD5RvArygTy2E0YctGe3h4Ps8NDPdqbsOM6qKeN642Nt0
	6V8dRaT5f/pYnJ/RuCXjySyvRTD7APtFE5dJPmSiHNLrCx0V1PhUr6t0tfQVFc0KUj5OLUyARdhNP
	cPgmMAlJQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEvcJ-0006F2-25; Wed, 24 Feb 2021 14:58:19 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEvcG-0006Dz-IK
 for linux-rockchip@lists.infradead.org; Wed, 24 Feb 2021 14:58:17 +0000
Received: by mail-oi1-x234.google.com with SMTP id a13so2691998oid.0
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Feb 2021 06:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gbU3IwxCR0mtqbhNfEFbj9D+PW+MeORgC6CdErr7nBw=;
 b=aP8fFHE/1ypcctQDrQ66JN4WfZzCZCWyk5DsEmODx6RbyZHbXmS+gDZCxdIiBpS7ae
 JqQgicjks45SjWq8Mac/w6Sj28if3/2cyau2VhN3qtbyxQKsjfftuq4mcNl3QW4/ZNVP
 DJIBV9jOs9trgr0yv0VtGwbv4OV1ESHoUKf3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gbU3IwxCR0mtqbhNfEFbj9D+PW+MeORgC6CdErr7nBw=;
 b=NR9fS6QjEcolQTQG8BqOvTlpAA3djjz1z/1d+2Ki46D54yd2MY0ekicw3r7QWKOIEK
 UXd5L3Qz2x67/HUB/DEsI6iZ3/dH73Kf/aRhbTBqEDkbCjID+u9laHOjeRIKlNfHGq5A
 TV1MlZyQOAFixPuRr6fnWskZImE53hUtHqYV2I3I/llWbCoqwUcvydlyhxyoWZHJ6GeP
 tjdoHY3QDqBiD7RpazCNiwfvJN5vEEPSeZtFqVk2sFOb21n51CPKL/cvl1e5p0HLCL0Q
 FJmR+K/AU4jj5Es1BheHIjMp3nwXSiIqkhGL5IxRDNuTboXHJa50SnO8PYyEt0Ry6HZU
 EOyA==
X-Gm-Message-State: AOAM530U3gm3dXaKmPTbnjSO7EeL9cCMvF9YstaAVAnL+rl5cGDm+vPD
 BDwKx6umDz/o0mCR12ANLA0XQOc/CVMR353/qImsSOHjDvQ=
X-Google-Smtp-Source: ABdhPJzJDOBbeNCNg40mB6I5gWO0MUt3jWsrMLPQKLNLiFPv/fG0zUjoIfpU83KjB12h43GZOU9O0WTDiIBwqklWw1E=
X-Received: by 2002:a05:6808:aa6:: with SMTP id
 r6mr2960078oij.128.1614178693009; 
 Wed, 24 Feb 2021 06:58:13 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
 <20210223165348.edghgglgx4g2lvfw@DESKTOP-E1NTVVP.localdomain>
 <YDU2+A0MNJnrWxPs@maud>
 <20210223183404.jmdw5rojy4s64xfd@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rOVTd7YhbPoYyxhDD1+S7xG23L2v8Hujdh6tGFBq+n+Hg@mail.gmail.com>
In-Reply-To: <CAPj87rOVTd7YhbPoYyxhDD1+S7xG23L2v8Hujdh6tGFBq+n+Hg@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 24 Feb 2021 15:58:01 +0100
Message-ID: <CAKMK7uG+xNt4iQkB2ysbMQPbe_JSPWCq+3VzV+OOAuAhn=9x0Q@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Daniel Stone <daniel@fooishbar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_095816_624083_18BE55A1 
X-CRM114-Status: GOOD (  18.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, nd <nd@arm.com>,
 Brian Starkey <brian.starkey@arm.com>,
 Alyssa Rosenzweig <alyssa@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Feb 23, 2021 at 7:50 PM Daniel Stone <daniel@fooishbar.org> wrote:
>
> Hi Brian,
>
> On Tue, 23 Feb 2021 at 18:34, Brian Starkey <brian.starkey@arm.com> wrote:
> > On Tue, Feb 23, 2021 at 05:10:16PM +0000, Alyssa Rosenzweig wrote:
> > > But it seems to me allowing
> > > both BGR+YTR and RGB+YTR upstream is the better route than simply
> > > preventing hardware from using AFBC at all, and there are natural
> > > encodings for both with fourcc modifiers.
> >
> > Are those the only options? I see XBGR8888, ABGR8888, BGR888 and
> > BGR565 are all handled in vop_convert_afbc_format(), which are all
> > "valid" for use with YTR, and all except XBGR are on the "preferred"
> > AFBC format list in afbc.rst.
>
> The issue is a userspace one though, not a kernel one. Userspace (e.g.
> GNOME Shell, Weston, Xorg) decides ahead of time that it's going to
> use XRGB8888, then use the modifiers available to it for that format.
> There's no logic in those projects to look at the list of 8bpc
> non-alpha formats, examine XRGB vs. XBGR, decide that XBGR is 'better'
> since it has more modifiers available, then go use XBGR.

That sounds a bit like userspace being too simple. Since if they're ok
with dealing with modifiers accessing the raw buffer is out the window
anyway, so bgr vs rgb shouldn't matter.

> So whilst removing XRGB+AFBC wouldn't technically remove the
> possibility to use AFBC, the practical effect is that it wouldn't be
> used.

But also this ofc.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
