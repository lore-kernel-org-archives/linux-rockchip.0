Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6493EC54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 18:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTkhWdb0WUgPgilDXxD9JG8CcxdExz8XSFNILGvUen0=; b=eYvL+vQIrKNQGq
	0dwh8xce4a3WkL+ZL/pkFKsm3a2/UgYr/hjrIKKNtdphPiEkI4l9uoLf+swxAheqsONe1n7JI8PCr
	qWPBwT0Z+eGxxSQQvypwWgZYgGJDs9nWJTAJbN305J+OY0mVp4RwvykeMsq9IL7aEI3pT9ndJAzgB
	gAvx+L5+nRZJZV5TCLdvqZQX1XvhMMla0Crxr12DQkuP1QSMwGkrTEvFZjWJH7GGs/CI00mpTF9To
	5nGGnD34PPZAephrxzR35ymLBG5NXAKGJSA4+plKBDxTbY5SaB6jIp2AZFFDMvRP4EhdNZgFZVN1G
	rjsWbKoBBXRLvjVTDiGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDr9J-00EKk0-Hb; Fri, 06 Jan 2023 18:09:01 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDr9F-00EKjV-Vk
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 18:08:59 +0000
Received: by mail-pj1-x1034.google.com with SMTP id m7-20020a17090a730700b00225ebb9cd01so5915572pjk.3
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 10:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aRfBMIOrWnkTgcTHC8fokRZyL82kMsM9senrx2vjrp4=;
        b=KGEHXfRmPiYzMG2kUn40dLIk5Z1zjbUEthvuPHMpU6fXdKK6/8qi6QmjzIFqCAjxHo
         jdVeSB8e9/bEAZb+jcbPfsS3Hvi9dlBXT03QtiyWDcGq+k9yn3JWMV2F6TuXSP3iN7bh
         1C2hcM1cmLER/jBXk3lKj5hiOdZ3tqDNm480o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aRfBMIOrWnkTgcTHC8fokRZyL82kMsM9senrx2vjrp4=;
        b=sw/Z6f3RLXYE93QTqPlbaj1klEOrt+cKbAVHGUXwnVRX+zQQpCBUy7HJTEfhmSZP9o
         tB/GHZ/L1MG75IaCSnUD3PfoWyLRyIxu/uNIXMYdeOUZB7U03zSr1bKEVvvveAXMlWQs
         9IkssHB8JwIaHg86n+JQTi0u+spQMQpVPl6Kx8j2cCa1XbbQPLv/kpwR484tke+fm28U
         bvEqPNGL8m7sDpdjtAcXwei61uHXZbkUtzmEklPAcVbjwSvTEacpL9trUX/cBUmis2xr
         T//m5TBVQevEZfka1mha4oUnJ9ShWD5lMg01xLaDkmMBIxUeayfBynEKm6ZFe3KiVB1p
         5Svw==
X-Gm-Message-State: AFqh2kr0pwrhdAXcNdarAL1j9RqAlOCc3QekGo28NH7duxOwuH4bdu6z
	e+3u6qDsa0iuowuqOzVECgDEyg==
X-Google-Smtp-Source: AMrXdXu3+CpeCXjMMRDSk0RxLILeTWZA5Pe+CQFqkM1hhlNB+wt9gU/hx35Rd9JRj7BX4MHLZ0xiiA==
X-Received: by 2002:a17:902:eb8f:b0:192:8ec5:fd58 with SMTP id q15-20020a170902eb8f00b001928ec5fd58mr43083908plg.6.1673028536246;
        Fri, 06 Jan 2023 10:08:56 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:5567:fb20:aa4f:352])
        by smtp.gmail.com with ESMTPSA id u5-20020a170902e80500b00189529ed580sm1282081plg.60.2023.01.06.10.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 10:08:55 -0800 (PST)
Date: Fri, 6 Jan 2023 10:08:53 -0800
From: Brian Norris <briannorris@chromium.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7hjte/w8yP2TPlB@google.com>
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_100858_112269_56FA2EA1 
X-CRM114-Status: GOOD (  32.60  )
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

Hi Daniel,

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

That's not what crtc_needs_disable() does w.r.t. self-refresh. In fact,
it's the opposite; see, for example, the
|new_state->self_refresh_active| clause. That clause means that if we're
entering self-refresh, we *intend* to disable (i.e., we return 'true').
That's because like I mention above, the self-refresh helpers overload
what "disable" means.

I'll also add my caveat again that I'm a bit new to DRM, so feel free to
continue to correct me if I'm wrong :) Or perhaps Sean Paul could
provide second opinions, as I believe he wrote this stuff.

> And yes vblank better work in self refresh :-) If it doesn't, then you
> need to fake it with a timer, that's at least what i915 has done for
> transparent self-refresh.

OK! Then that sounds like it at least ACKs my general idea for this
series. (Michel and I poked at a few ideas in the thread at [1] and
landed on approx. this solution, or else a fake/timer like you suggest.)

> We might need a few more helpers. Also, probably more igt, or is this
> something igt testing has uncovered? If so, please cite the igt testcase
> which hits this.

The current patch only fixes a warning that comes when I try to do the
second patch. The second patch is a direct product of an IGT test
failure (a few of kms_vblank's subtests), and I linked [1] the KernelCI
report there.

Brian

[1] Link: https://lore.kernel.org/dri-devel/Y5itf0+yNIQa6fU4@sirena.org.uk/
    Reported-by: "kernelci.org bot" <bot@kernelci.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
