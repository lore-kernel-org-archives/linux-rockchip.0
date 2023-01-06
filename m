Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4C4FC61DB3
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 22:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUImxXXdLsJzg6YGSSHxlqWI1fAiNyliwp/BKSc7qww=; b=W2TR7JoWKA4TI3
	TSxxb60SksvhbxHTLdr1i8h2KtkVEh/vk/yDT4y9V78x342OnkT7Aqew81WdBT325kZSfFELbVWxM
	T/8RLwJVAoy1qD6xyLQLSt30fRCc4Y+sQYES3cD/8NbA2rhl9awrwRTZhTVVPVAr67DX4QWuualoK
	6pUZkAHzqnz4i4qrANSbp3516bmtLsa5ig3rXA1UmafUGSgBKy23oc2gmHOt+hifO1TFOENTA7j21
	bPPPhInUJxTKGk4N0yHsqtOMDipphqucf4w6a8Pn0NFeDOIbZrQyHTOX0M+a8pTbC/YXKdqjqM0PT
	CacnJqsIo0xoLAeR7wwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDvSX-00FMOY-5I; Fri, 06 Jan 2023 22:45:09 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDvST-00FMKc-NL
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 22:45:07 +0000
Received: by mail-wm1-x32a.google.com with SMTP id g25-20020a7bc4d9000000b003d97c8d4941so4598362wmk.4
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 14:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UGy1a+dQKHkfgMaGdXrExlXz8vRVE+MSLUjgxvFrzRU=;
        b=b3vPWppdq1IsndpXupEfsRMTk3QaBdNYCMOlodFw2+b3gG45RHdjoWU9OLTCik7qNv
         9F5GO45xYapdcd209T8SG1aQazvHxwfpd2RGChyyOzRjDbik6wbVgtjHhPZwIxk+N+vW
         MQkZh5xRWdvCOtzEHgE8DaeyjK/bPET5GkPYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UGy1a+dQKHkfgMaGdXrExlXz8vRVE+MSLUjgxvFrzRU=;
        b=JHrauMYhc5wSi3IckroTa9NlUFnxXqhC2vyQTrRgDYbKOwYIErdAj9muMx18z31crY
         PIExTTIpa5JfHl2wNKCgiDZpHLKfVMEVO83yppdTf7giOYjJptHN/MEXUBmPg7KKQTYh
         7W/IC3YlkgI5ZkSfoTSLINAV/2cg0Fsw11e+aFHegwQsi74Gn/8Bv50m0f5i48t8ople
         Gsy635NuaioLW2+F+J0d8xYx7CnQAjIuTNOlZABJea6sqHYt1fdJelM6u76iS0hVh9qA
         DO2q2mrbpV65T+RsNoqtE+BLlqSmwRrJhoCtuyzTvxRsJT/3UV4jtJDvr3F4PGTA7yaK
         lyZw==
X-Gm-Message-State: AFqh2kq/g+4mDoW7+YGTGtzERHnqrLgpBtFhN0yby60MomNVbDviEbxh
	NpVvJF3+IhSYGAgSkDDSwyF+lg==
X-Google-Smtp-Source: AMrXdXtZLtlt6MiuOrMIKvdJ9pC47OvNiNZ+yOBh4lsB+P6QM7nN6tzUBNdqkhjBij20IN3wDHGw0A==
X-Received: by 2002:a05:600c:3d98:b0:3cf:d70d:d5a8 with SMTP id bi24-20020a05600c3d9800b003cfd70dd5a8mr39756580wmb.6.1673045101776;
        Fri, 06 Jan 2023 14:45:01 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id l24-20020a1ced18000000b003d99da8d30asm7426155wmh.46.2023.01.06.14.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 14:45:00 -0800 (PST)
Date: Fri, 6 Jan 2023 23:44:58 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7ikar6ZcW3rrPGz@phenom.ffwll.local>
Mail-Followup-To: Brian Norris <briannorris@chromium.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
 <Y7hl0Z9PZhFk8On9@phenom.ffwll.local>
 <Y7h3cuAVE2fdS9K3@google.com>
 <Y7iFAJqGNXA7wHoK@phenom.ffwll.local>
 <Y7iS6E4UQVllOCFv@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7iS6E4UQVllOCFv@google.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_144505_791545_61221463 
X-CRM114-Status: GOOD (  48.42  )
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

On Fri, Jan 06, 2023 at 01:30:16PM -0800, Brian Norris wrote:
> On Fri, Jan 06, 2023 at 09:30:56PM +0100, Daniel Vetter wrote:
> > On Fri, Jan 06, 2023 at 11:33:06AM -0800, Brian Norris wrote:
> > > On Fri, Jan 06, 2023 at 07:17:53PM +0100, Daniel Vetter wrote:
> > > > - check that drivers which use self_refresh are not using
> > > >   drm_atomic_helper_wait_for_vblanks(), because that would defeat the
> > > >   point
> > > 
> > > I'm a bit lost on this one. drm_atomic_helper_wait_for_vblanks() is part
> > > of the common drm_atomic_helper_commit_tail*() helpers, and so it's
> > > naturally used in many cases (including Rockchip/PSR). And how does it
> > > defeat the point?
> > 
> > Yeah, but that's for backwards compat reasons, the much better function is
> > drm_atomic_helper_wait_for_flip_done(). And if you go into self refresh
> > that's really the better one.
> 
> My knowledge is certainly going to diminish once you talk about
> backwards compat for drivers I'm very unfamiliar with. Are you
> suggesting I can change the default
> drm_atomic_helper_commit_tail{,_rpm}() to use
> drm_atomic_helper_wait_for_flip_done()? (Or, just when
> self_refresh_active==true?) I can try to read through drivers for
> compatibility, but I may be prone to breaking things.
> 
> Otherwise, I'd be copy/paste/modifying the generic commit helpers.

Nah thus far we've just copypasted into drivers. Maybe it's time to fix
the helpers instead, but I'm somewhat vary of the fallout this might
cause. My idea was to get a few more drivers over to wait_for_fences with
copypasting and then do the big switch for everyone else. Or something
like that. I'd leave it as-is if you're not extremely bored I guess :-)

> > > > - have a drm_crtc_vblank_off/on which take the crtc state, so they can
> > > >   look at the self-refresh state
> > > 
> > > And I suppose you mean this helper variant would kick off the next step
> > > (fake vblank timer)?
> > 
> > Yeah, I figured that's the better way to implement this since it would be
> > driver agnostic. But rockchip is still the only driver using the
> > self-refresh helpers, so I guess it doesn't really matter.
> 
> I've run into enough gotchas with these helpers that I feel like it
> might be difficult to ever get a second driver using this. Or at least,
> we'd have to learn what requirements they have when we get there. (Well,
> maybe you know better, but I certainly don't.)

I'm still hopeful that we might need them a bit more.

> I'm tempted to just go with what's the simplest for Rockchip now, and
> look at some generic timer fallbacks later if the need arises.
> 
> > > Also, I still haven't found that fake timer machinery, but maybe I just
> > > don't know what I'm looking for.
> > 
> > I ... didn't find it either. I'm honestly not sure whether this works for
> > intel, or whether we do something silly like disable self-refresh when a
> > vblank interrupt is pending :-/
> 
> Nice to know I'm not the only one, I suppose :)
> 
> > I think new proposal from me is to just respin this patch here with our
> > discussion all summarized (it's good to record this stuff for the next
> > person that comes around), and the WARN_ON adjusted so it also checks that
> > vblank interrupts keep working (per the ret value at least, it's not a
> > real functional check). And call that good enough.
> 
> Sounds good. I'll try to summarize without immortalizing too much of my
> ignorance ;)
> 
> And thanks for your thoughts.
> 
> > Also maybe look into switching from wait_for_vblanks to
> > wait_for_flip_done, it's the right thing to do (see kerneldoc, it should
> > explain things a bit).
> 
> I've read some, and will probably reread a few more times. And I left
> one question above.

Yeah makes all sense.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
