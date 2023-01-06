Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98C5DC3DA7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 19:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QS2YbuOohbp/RxXQ9NLSWgckcph+7SBsp7mC3JthPtA=; b=Gu99cAI2+9goqd
	seg83LjuPXx6csSFZ8LEnRGId/BYyrc/H/GLRPJTHoDK6btW0z+aloPX+jWTocEUgGi5O7jaj3hWJ
	A0wFD56aSIOzbjsiT+y7h8n6tCkwLX/Vxjhi4Z7No+ACJ5B8W5dPkeLfGEaLOar5Xxx/5JbtVzt45
	YxH4yhtRBgd/ZVNZcCq0OHakGJjC2/Al2uO+P/Pd6W+a2wlbGIJeV+XkfV4ggs7aNMeZC1/4TXSwU
	4k8hoahdQgA0mxh0OjMSDOrYu7X0Lk3/1+ouL8kYvUqP396dnxGtQaD4jI9+uzj7Uufnw0N9q7wVp
	ZwPPMTDBNgQXvJXnjSIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDsSn-00EbaH-Ql; Fri, 06 Jan 2023 19:33:13 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDsSl-00EbZ7-8x
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 19:33:12 +0000
Received: by mail-pj1-x102d.google.com with SMTP id v13-20020a17090a6b0d00b00219c3be9830so2754415pjj.4
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 11:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MFslfd+pC3/chcOWKMwxg3XD+/XfpfE2RT5MHLxEcXU=;
        b=USdDzZhhWDJBoerKZ6sMe7xg6j0XN8M9ShxJ4WtrGWLrm7Qvne88YzVYrL5fIU0niK
         eE7dTaorSZcyd/zlf4KVTqdihiFDkB/gNmtEOAXRyKxnA9SYcWnEpAAWpaorPuJ//Qkd
         AV5giVIwDvgnNz3AVs4WTV6OiJHAtAzClM4No=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MFslfd+pC3/chcOWKMwxg3XD+/XfpfE2RT5MHLxEcXU=;
        b=vytsqKp6PMy87yMbxr0Ah06wEIFM76FDYdDZ3nCGIvTNHnsaRKPuJLRmJudrHW7QnO
         weNrWxTD2IDVmn6913CjCcExD9lGzhFXXVnpSaqlVPjNiAyeqsBsy7Re9sjdWgPvbYLm
         ePdGI6L8iQUzbQZRDXtl0XIYEyszRM4wd5TA0WJ6VOazn5vesBGKw1yJOKNIIEVkPg15
         s6OXUdpWDitc6nmcxwstWZrVjrhiaqeC3e4EZa27Zfl2X0ajn5uOOECy04B8TJ42/IjC
         hW7xYiOCJCw+Pb7ci/nt+gnpnHtzUOpiBmoxvSgqBaPJFywi89/16NDQWK32Xu+lLv/y
         WtAg==
X-Gm-Message-State: AFqh2kpEMywtH7LID+GRYVD1naH6C4ijP4BfejD/SlRZDp6Temq8E1UU
	xAIk7OHmMLlp+NqmmxFU8E4V2A==
X-Google-Smtp-Source: AMrXdXsH3vIaY64jg/dcbXKNEQaz/aJx6Q/1RM0SJeHVYhMTi8gZJKnEWYPW2YjzNx/EtPEwTX3XXQ==
X-Received: by 2002:a17:902:b402:b0:191:2b76:612c with SMTP id x2-20020a170902b40200b001912b76612cmr53370723plr.62.1673033589074;
        Fri, 06 Jan 2023 11:33:09 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:bc4e:2cc9:68b3:15dc])
        by smtp.gmail.com with ESMTPSA id i7-20020a17090332c700b001894881842dsm1298174plr.151.2023.01.06.11.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 11:33:08 -0800 (PST)
Date: Fri, 6 Jan 2023 11:33:06 -0800
From: Brian Norris <briannorris@chromium.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7h3cuAVE2fdS9K3@google.com>
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
 <Y7hl0Z9PZhFk8On9@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7hl0Z9PZhFk8On9@phenom.ffwll.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_113311_358425_08111352 
X-CRM114-Status: GOOD (  30.38  )
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

On Fri, Jan 06, 2023 at 07:17:53PM +0100, Daniel Vetter wrote:
> Ok I think I was a bit slow here, and it makes sense. Except this now
> means we loose this check, and I'm also not sure whether we really want
> drivers to implement this all.
> 
> What I think we want here is a bit more:
> - for the self-refresh case check that the vblank all still works

You mean, keep the WARN_ONCE(), but invert it to ensure that 'ret == 0'?
I did consider that, but I don't know why I stopped.

> - check that drivers which use self_refresh are not using
>   drm_atomic_helper_wait_for_vblanks(), because that would defeat the
>   point

I'm a bit lost on this one. drm_atomic_helper_wait_for_vblanks() is part
of the common drm_atomic_helper_commit_tail*() helpers, and so it's
naturally used in many cases (including Rockchip/PSR). And how does it
defeat the point?

> - have a drm_crtc_vblank_off/on which take the crtc state, so they can
>   look at the self-refresh state

And I suppose you mean this helper variant would kick off the next step
(fake vblank timer)?

> - fake vblanks with hrtimer, because on most hw when you turn off the crtc
>   the vblanks are also turned off, and so your compositor would still
>   hang. The vblank machinery already has all the code to make this happen
>   (and if it's not all, then i915 psr code should have it).

Is a timer better than an interrupt? I'm pretty sure the vblank
interrupts still can fire on Rockchip CRTC (VOP) (see also the other
branch of this thread), so this isn't really necessary. (IGT vblank
tests pass without hanging.) Unless you simply prefer a fake timer for
some reason.

Also, I still haven't found that fake timer machinery, but maybe I just
don't know what I'm looking for.

> - I think kunit tests for this all would be really good, it's a rather
>   complex state machinery between modesets and vblank functionality. You
>   can speed up the kunit tests with some really high refresh rate, which
>   isn't possible on real hw.

Last time I tried my hand at kunit in a subsystem with no prior kunit
tests, I had a miserable time and gave up. At least DRM has a few
already, so maybe this wouldn't be as terrible. Perhaps I can give this
a shot, but there's a chance this will kick things to the back burner
far enough that I simply don't get around to it at all. (So far, I'm
only addressing this because KernelCI complained.)

> I'm also wondering why we've had this code for years and only hit issues
> now?

I'd guess a few reasons:
1. drm_self_refresh_helper_init() is only used by one driver -- Rockchip
2. Rockchip systems are most commonly either Chromebooks, or else
   otherwise cheap embedded things, and may not have displays at all,
   let alone displays with PSR
3. Rockchip Chromebooks shipped with a kernel forked off of the earlier
   PSR support, before everything got refactored (and vblank handling
   regressed) for the self-refresh "helpers". They only upgraded to a
   newer upstream kernel within the last few months.
4. AFAICT, ChromeOS user space doesn't even exercise the vblank-related
   ioctls, so we don't actually notice that this is "broken". I suppose
   it would only be IGT tests that notice.
5. I fixed up various upstream PSR bugs are part of #3 [0],
   along the way I unborked PSR enough that KernelCI finally caught the
   bug. See my explanation in [1] for why the vblank bug was masked, and
   appeared to be a "regression" due to my more recent fixes.

Brian

[0] Combined with point #2: ChromeOS would be the first serious users of
    the refactored PSR support. All this was needed to make it actually
    usable:

    (2021) c4c6ef229593 drm/bridge: analogix_dp: Make PSR-exit block less
    (2022) ca871659ec16 drm/bridge: analogix_dp: Support PSR-exit to disable transition <--- KernelCI "blamed" this one, because PSR was less broken
    (2022) e54a4424925a drm/atomic: Force bridge self-refresh-exit on CRTC switch

[1] https://lore.kernel.org/dri-devel/Y6OCg9BPnJvimQLT@google.com/
Re: renesas/master bisection: igt-kms-rockchip.kms_vblank.pipe-A-wait-forked on rk3399-gru-kevin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
