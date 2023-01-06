Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7008CC3DA7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ctHd9ATfyTp+iIUbxv7tsBthy5GrTwZAGOZzcXw51g=; b=Ohbun1jaV+16gj
	O26R63EYGYGlX8pMnJv5puSO6YRGyxOYl4GKFk1n7+BfY8HvcfrCc85ruGeX+GGJ5uDiDaZapbsBm
	eiEgiWU+VcnTATmnr4OpxunXfg//7fjm3ftlovv9tploHCdpPD12rpDThkfRA/QrAgT6TL5olUdDZ
	PbzHRrrDcGJqP1ut1ZTpuFv0izwBzq1Htw50Z0o0bFX1Ei83FBof8iKyUWWnJOCyU+Bmrx9EYOUCP
	wolb1aMBdR5jwL869r93kDgzgt9q3IEnQIRTnPOKIJJbbH/8ltwjNSkjkzJ/qjTtq3XYYYTXrNWa7
	plDV26OI5gQyvgF34KAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDrI2-00ELQ1-02; Fri, 06 Jan 2023 18:18:02 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDrHz-00ELOl-01
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 18:18:00 +0000
Received: by mail-wm1-x32b.google.com with SMTP id g10so1631111wmo.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 10:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vZgX/uzlYtYm+9CzMWs/3dsasYH/jPMu/yKWM7axVwk=;
        b=EYP1baRZFqqVCOv2pOnk8Fyfs9j+68lHjfHjXy3FlgSyMB+a6B7b/8lxKKeXQM6i3+
         DUnkfdSpmpGibulk4z1SW1HEiJ/8mZiJud0QlpdKVVZWFI5fO126Iwwh2aunqAGusgw9
         FORTEE3dj1I00pDSrYlO+fYYkuAEfEm/4fEbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vZgX/uzlYtYm+9CzMWs/3dsasYH/jPMu/yKWM7axVwk=;
        b=orIrzrLQHc2ERxU23FOoy4mT2odBxBmeBrLcHPepJhsPFgEyIqmBONF6Vvxgu33Hci
         7RzO3cwyOP18lInJ74uR4WHplOBcIm4oxF3LnoC2DsIGnThegZEdnEsKH8ivQGzdJRGe
         7iT3Qt0A4f7VntoZOBnqGgnR6h4LA4UV4Jl8MQa+moGSYWmonuJp26Sjon5Scm7I9EON
         OgiWMH8bOq+POFRfa/L2Idxz3dqF1nDhxmJRgUTPS5qYtFUEwOXJLBYYLCZKhD0KC3Ck
         gkoSyGx22ixPNDSLN0LcLz80/0fWHrUjVzdRibGIrxnGOI8ziAhCDDFn2oOn0ppuzf6J
         slnA==
X-Gm-Message-State: AFqh2kpbgjvF2EksyjICLDi/tK1M4hAeLGfzFh57t8W6N9KmVcQifGoF
	seFpdhEnB47Io10JglyLleV4fg==
X-Google-Smtp-Source: AMrXdXsk//Ebc0AFqktmpd6sDIvJObm64v2tJRUyH+TzrQSdtbUZvCiU+wBVSRkdkv1F957NrNmdzA==
X-Received: by 2002:a05:600c:3d8a:b0:3d3:4406:8a37 with SMTP id bi10-20020a05600c3d8a00b003d344068a37mr40344682wmb.41.1673029076764;
        Fri, 06 Jan 2023 10:17:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c444a00b003d998412db6sm7762398wmn.28.2023.01.06.10.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 10:17:55 -0800 (PST)
Date: Fri, 6 Jan 2023 19:17:53 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Norris <briannorris@chromium.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7hl0Z9PZhFk8On9@phenom.ffwll.local>
Mail-Followup-To: Brian Norris <briannorris@chromium.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_101759_058348_D8F8B0A1 
X-CRM114-Status: GOOD (  37.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jan 06, 2023 at 06:53:49PM +0100, Daniel Vetter wrote:
> On Thu, Jan 05, 2023 at 05:40:17PM -0800, Brian Norris wrote:
> > The self-refresh helper framework overloads "disable" to sometimes mean
> > "go into self-refresh mode," and this mode activates automatically
> > (e.g., after some period of unchanging display output). In such cases,
> > the display pipe is still considered "on", and user-space is not aware
> > that we went into self-refresh mode. Thus, users may expect that
> > vblank-related features (such as DRM_IOCTL_WAIT_VBLANK) still work
> > properly.
> > 
> > However, we trigger the WARN_ONCE() here if a CRTC driver tries to leave
> > vblank enabled here.
> > 
> > Add a new exception, such that we allow CRTCs to be "disabled" (with
> > self-refresh active) with vblank interrupts still enabled.
> > 
> > Cc: <stable@vger.kernel.org> # dependency for subsequent patch
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> > 
> >  drivers/gpu/drm/drm_atomic_helper.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> > index d579fd8f7cb8..7b5eddadebd5 100644
> > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > @@ -1207,6 +1207,12 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
> >  
> >  		if (!drm_dev_has_vblank(dev))
> >  			continue;
> > +		/*
> > +		 * Self-refresh is not a true "disable"; let vblank remain
> > +		 * enabled.
> > +		 */
> > +		if (new_crtc_state->self_refresh_active)
> > +			continue;
> 
> This very fishy, because we check in crtc_needs_disable whether this
> output should stay on due to self-refresh. Which means you should never
> end up in here.
> 
> And yes vblank better work in self refresh :-) If it doesn't, then you
> need to fake it with a timer, that's at least what i915 has done for
> transparent self-refresh.
> 
> We might need a few more helpers. Also, probably more igt, or is this
> something igt testing has uncovered? If so, please cite the igt testcase
> which hits this.

Ok I think I was a bit slow here, and it makes sense. Except this now
means we loose this check, and I'm also not sure whether we really want
drivers to implement this all.

What I think we want here is a bit more:
- for the self-refresh case check that the vblank all still works

- check that drivers which use self_refresh are not using
  drm_atomic_helper_wait_for_vblanks(), because that would defeat the
  point

- have a drm_crtc_vblank_off/on which take the crtc state, so they can
  look at the self-refresh state

- fake vblanks with hrtimer, because on most hw when you turn off the crtc
  the vblanks are also turned off, and so your compositor would still
  hang. The vblank machinery already has all the code to make this happen
  (and if it's not all, then i915 psr code should have it).

- I think kunit tests for this all would be really good, it's a rather
  complex state machinery between modesets and vblank functionality. You
  can speed up the kunit tests with some really high refresh rate, which
  isn't possible on real hw.

I'm also wondering why we've had this code for years and only hit issues
now?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
