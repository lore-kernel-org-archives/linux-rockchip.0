Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F04BC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 15:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/0DejC05MiK138mn8qxYUJt1/8FO/etBKm+3+CVe5M=; b=vCgVCJ3y0ORZd9
	BHTVMJC2kcmjB/Qr1b1V5BogTMS4K8nYf02LwN/0nGjdvz4YsLubOUcO+su9Xnvra8kT7I8QdSMCo
	fuii8yyx5XFHold1k3NUaUaxDZ2qdDDnMlPII7pFPDxNqQfFfzhTG4KQIribzyJWUCTdx6LaW01mu
	nUIoOfPb5usQvojXyobWbmUzAQAexsDKfllpzsHac9sPH4rBuL0NPAJjmsgmKql3U3cbibnSiVFJO
	EZkNKONJBfoGc8jI5tJDJ/LChVHErlRCizZo2LvGiLh0GQCpU2Q+dVtKmb0cezo1z4tWvQnyGWY86
	Ip4RRApVfqI9dj2oGqqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqGhm-0081gX-Vp; Thu, 25 Nov 2021 15:30:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqGhj-0081fS-Jb
 for linux-rockchip@lists.infradead.org; Thu, 25 Nov 2021 15:30:33 +0000
Received: by mail-wm1-x329.google.com with SMTP id 137so5942153wma.1
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Nov 2021 07:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=mT5CztXXGEVtVu2lf/CwV1g7OPVgRExJfPGlfmMywm0=;
 b=PEQF6bMcJoShAAAQZkOF5BkWuiwr/n8dHKen+aLofuFtfwvoi1JRGleq7frRxwDwPz
 dnnd09H6YI8fqa/4VFmNOCorgx79h5Kb8CTaEQBFTgi9u06DecieiPFcyxaALI3u/tie
 nIGrxVpEgmrjxTTqEkl42sXE71D31J1/kYVeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=mT5CztXXGEVtVu2lf/CwV1g7OPVgRExJfPGlfmMywm0=;
 b=C0Wk0R8jvh4Ek2V6N//rBrGULRtzU1DFS9IkUC8F2DeWELFSW6E/7SSwb0Kxvzlkn3
 YSThRNDBhm0JfU7zWBLr1vnZLMo8Vn/1/kOVMWai21xx5lQHTscwC7Q1iJltFk5RjqlX
 xS1e5+AzgdYLogcHXWU7eSZkOW6isIcK/TahyLmZABaHeFilZWx+JoZRuJdQOLn7wKQq
 mJJ914UeVm6Ih3l6wDzPZMVesGBj5334vhh84Uh+kQ6RSrCI2e2QpR8ODOjKKiz3wP0Z
 /OsqtpAKZHbYSJMdeJKRuMNm27n+1UenZysVUkN0wHQcddWtwmjQA8kcM1NUIT0/Dbmc
 Qe9g==
X-Gm-Message-State: AOAM533dmeQmKV3h3dD0TQuPOL4y4vFtEjoNBdVSQiLUgAp7MZlW4Fxc
 XreqDq+Zos92JKzfIgoL4gi+iw==
X-Google-Smtp-Source: ABdhPJxhA/VhsuDIAS0OWxUiI3i8TAhLLHvv9SkU+3wJwc/Kf9vwByE1Bdg0iWstOjaQzCy5lMbUTQ==
X-Received: by 2002:a1c:6a0e:: with SMTP id f14mr8313877wmc.58.1637854229881; 
 Thu, 25 Nov 2021 07:30:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p27sm3220547wmi.28.2021.11.25.07.30.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:30:29 -0800 (PST)
Date: Thu, 25 Nov 2021 16:30:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, Simon Ser <contact@emersion.fr>,
 Rob Clark <robdclark@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-input@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YZ+sEw2ya80bYYaC@phenom.ffwll.local>
Mail-Followup-To: Pekka Paalanen <ppaalanen@gmail.com>,
 Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 linux-input@vger.kernel.org
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
 <20211119115419.505155b5@eldfell>
 <YZfIgd8s7uGXAD2X@phenom.ffwll.local>
 <98236dpcx39iOz8xAYrwGLfiLdwgUlljrbBgHL3wd8A0Wz4KzRk3PR8s_tb5Rxu4eScKI4483kB6Vhv-T64CJYOeQqwXlqo2c-64HvoS5cg=@emersion.fr>
 <YZfMm3GkFereYPTZ@phenom.ffwll.local>
 <20211122114342.0d23890f@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122114342.0d23890f@eldfell>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_073031_683026_70A07D34 
X-CRM114-Status: GOOD (  42.47  )
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

On Mon, Nov 22, 2021 at 11:43:42AM +0200, Pekka Paalanen wrote:
> On Fri, 19 Nov 2021 17:11:07 +0100
> Daniel Vetter <daniel@ffwll.ch> wrote:
> 
> > On Fri, Nov 19, 2021 at 04:04:28PM +0000, Simon Ser wrote:
> > > On Friday, November 19th, 2021 at 16:53, Daniel Vetter <daniel@ffwll.ch> wrote:
> > >   
> > > > Random idea ... should we perhaps let userspace connect the boosting? I.e.
> > > > we do a bunch of standardized boost targets (render clocks, display sr
> > > > exit), and userspace can then connect it to whichever input device it
> > > > wants to?  
> > > 
> > > On IRC we discussed having user-space hand over a FD to the kernel. When the FD
> > > becomes readable, the kernel triggers the boost.
> > > 
> > > This would let user-space use e.g. an input device, an eventfd, or an epoll FD
> > > with any combination of these as the boost signal.  
> > 
> > Can userspace filter eventfd appropriately like we do here? And can they
> > get at that maybe 2nd eventfd from logind or whatever there is on distros
> > where /dev access is locked down for compositors/users.
> 
> (Mind, eventfd is a specific thing, see 'man eventfd', and evdev/input
> device fd is different.)

Yeah I was a bit sloppy, but I knew.

> I don't think any of that is any problem when userspace prepares an
> epoll fd to be given to the boosting machinery. The boosting machinery
> could have several different targets as well, PSR vs. GPU clocks and
> whatnot.
> 
> I envision a compositor to maintain an epoll fd for boosting by
> adding/removing the same device fds to it that it already uses in its
> operations. I don't see any need to open new device fds just for
> boosting. It's only the epoll fd given to the kernel and after that the
> epoll set can still be changed, right?
> 
> The boosting machinery would never actually read or write the
> registered fd(s), so it would not interfere with the normal operations.
> But it also means the fd will remain readable until userspace services
> it. Userspace may need to set up that epoll set very carefully to have
> it work right (e.g. edge-triggered?).
> 
> If your input handling is in a different process than the DRM poking
> for some reason, the epoll fd should still work if:
> - it is possible to use SCM_RIGHTS to pass the epollfd from the
>   input process to the DRM process, and
> - you cannot extract the watched fds from an epoll fd.
> 
> Do we have those assumptions today?
> 
> Then the attack surface in the DRM process is limited to changing the
> epoll set of which fds can trigger boosting, but the DRM process can do
> that anyway. I also presume the input process can still add and remove
> fds from the epoll set even afterwards.
> 
> > I do agree that if we can do this generically maybe we should, but also
> > the use-case for input boosting is pretty well defined. I think it's just
> > about making sure that compositors is in control, and that we don't make
> > it worse (e.g. with the sr exit adding latency when the compositor can
> > redraw quickly enough).
> 
> The epollfd design sounds very good to me. One can register an
> arbitrary set of fds with it, and use even eventfds in the set to have
> purely software triggers.

Yeah I think just allowing to internall poll on any arbitrary fd sounds
like a neat interface. Userspace should then be able to do whatever it
wants to.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
