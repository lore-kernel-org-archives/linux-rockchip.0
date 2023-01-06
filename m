Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07BBC54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 21:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBci7D6pCSx/3PlmoBxNGVHe6BMlo3FGBR1q3vl3LTs=; b=SVqZAjRyIKXbef
	+X/yDhxc0zvqdkoiMeRKWgbQJBywX/r3DGLVfnOCvUx0eJTJDwvridWUOfTgXAnId+oOaYtHwpanE
	uWsDbZKY/0wL2cn7kuV0af90xAl9G28r/ZV32VNTy4YNSeHZJhgML7ScECGvEuZ3XwOW7zNxlQOMq
	4OQyfYoRyyayNW91Ju6wezTWEPfCcHGyPQlIxXKGeJDUSGMOA444vCRZoIJ9BW0XYjLf6u41Mm7pc
	NoNTnHci47gA8vgFACz84DzijAfU8E71iqDhYOYGJBken8RKnFcz0ZD0iogQJg8zjFX28Yn4hSVJv
	dQnTtMFShocSQWecYR7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDuIC-00F3d7-EL; Fri, 06 Jan 2023 21:30:24 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDuI9-00F3bx-FU
	for linux-rockchip@lists.infradead.org; Fri, 06 Jan 2023 21:30:22 +0000
Received: by mail-pl1-x630.google.com with SMTP id y1so3028536plb.2
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jan 2023 13:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uBO4FktmK6B4vf85PEbj+zhpKQreEDnrkFtn4Z9nRks=;
        b=OIIbGQJxzBLO7wv9/sPjTp5y7hdL2iWtD8GEt2IDMqLwSm+ZLQgKJaWVWmbl5V/IxB
         vBQBQHiIHxWOQxKkDl91hruPIVXwDuQyESeivpfWahMcH4uOKyEe2UpDBQL8sKov2bbK
         gSXg/T5si3rR9wkYqyCdFA2ALe5aq0x5Ylluw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBO4FktmK6B4vf85PEbj+zhpKQreEDnrkFtn4Z9nRks=;
        b=EzgxnCGltNrxeva2mYDTEPq9PXBuwTRoAAB6HBaHXtD4AfnBqhbVL0Q4zeQOSs4Fgt
         WGXNsxeMPO8UXD0yGlpjOXcj6PXz3xulCSW9QsEJwKZl59GAy4ADA8KcgrIsG/B2UMYO
         30IhhlzwcvFhC78Dux7jTOvQloJYDcPq2HlN3fDveiWcyn2LNHlxlOTj7osmJW0Yx/O6
         qEDHGmAmCeX3Bwf+VVB64zhePZXpg86m9DSzwqODMBz4JahKtHnxeZWylVfqeD6Bk/UP
         fDrSzy2fHB217YIP1oC8DCu2gJngLjw0vyVAtFmioJq54Ja3ugPH13hgrZRW+qym3+M8
         Z48A==
X-Gm-Message-State: AFqh2ko8uXNPw3Ya5ZcxL658lQ1iR5qx0aqUk2ZTAU0hOs9+cqsSkOvD
	H1f5qOXhTtv0+1vMHMBEjlR14Q==
X-Google-Smtp-Source: AMrXdXtctuMxpO+yWZByUv5pU58/S3zStxu5pv6MQgkWfy4yibmn8t7EWVsbY9JnzLFXXpQVflBD+g==
X-Received: by 2002:a17:902:eb4c:b0:192:feef:588 with SMTP id i12-20020a170902eb4c00b00192feef0588mr7130910pli.23.1673040619642;
        Fri, 06 Jan 2023 13:30:19 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:bc4e:2cc9:68b3:15dc])
        by smtp.gmail.com with ESMTPSA id s21-20020a170902b19500b00189e1522982sm1353032plr.168.2023.01.06.13.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 13:30:19 -0800 (PST)
Date: Fri, 6 Jan 2023 13:30:16 -0800
From: Brian Norris <briannorris@chromium.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <Y7iS6E4UQVllOCFv@google.com>
References: <20230105174001.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
 <Y7hgLUXOrD7QwKs1@phenom.ffwll.local>
 <Y7hl0Z9PZhFk8On9@phenom.ffwll.local>
 <Y7h3cuAVE2fdS9K3@google.com>
 <Y7iFAJqGNXA7wHoK@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7iFAJqGNXA7wHoK@phenom.ffwll.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_133021_584043_061E67A6 
X-CRM114-Status: GOOD (  35.95  )
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

On Fri, Jan 06, 2023 at 09:30:56PM +0100, Daniel Vetter wrote:
> On Fri, Jan 06, 2023 at 11:33:06AM -0800, Brian Norris wrote:
> > On Fri, Jan 06, 2023 at 07:17:53PM +0100, Daniel Vetter wrote:
> > > - check that drivers which use self_refresh are not using
> > >   drm_atomic_helper_wait_for_vblanks(), because that would defeat the
> > >   point
> > 
> > I'm a bit lost on this one. drm_atomic_helper_wait_for_vblanks() is part
> > of the common drm_atomic_helper_commit_tail*() helpers, and so it's
> > naturally used in many cases (including Rockchip/PSR). And how does it
> > defeat the point?
> 
> Yeah, but that's for backwards compat reasons, the much better function is
> drm_atomic_helper_wait_for_flip_done(). And if you go into self refresh
> that's really the better one.

My knowledge is certainly going to diminish once you talk about
backwards compat for drivers I'm very unfamiliar with. Are you
suggesting I can change the default
drm_atomic_helper_commit_tail{,_rpm}() to use
drm_atomic_helper_wait_for_flip_done()? (Or, just when
self_refresh_active==true?) I can try to read through drivers for
compatibility, but I may be prone to breaking things.

Otherwise, I'd be copy/paste/modifying the generic commit helpers.

> > > - have a drm_crtc_vblank_off/on which take the crtc state, so they can
> > >   look at the self-refresh state
> > 
> > And I suppose you mean this helper variant would kick off the next step
> > (fake vblank timer)?
> 
> Yeah, I figured that's the better way to implement this since it would be
> driver agnostic. But rockchip is still the only driver using the
> self-refresh helpers, so I guess it doesn't really matter.

I've run into enough gotchas with these helpers that I feel like it
might be difficult to ever get a second driver using this. Or at least,
we'd have to learn what requirements they have when we get there. (Well,
maybe you know better, but I certainly don't.)

I'm tempted to just go with what's the simplest for Rockchip now, and
look at some generic timer fallbacks later if the need arises.

> > Also, I still haven't found that fake timer machinery, but maybe I just
> > don't know what I'm looking for.
> 
> I ... didn't find it either. I'm honestly not sure whether this works for
> intel, or whether we do something silly like disable self-refresh when a
> vblank interrupt is pending :-/

Nice to know I'm not the only one, I suppose :)

> I think new proposal from me is to just respin this patch here with our
> discussion all summarized (it's good to record this stuff for the next
> person that comes around), and the WARN_ON adjusted so it also checks that
> vblank interrupts keep working (per the ret value at least, it's not a
> real functional check). And call that good enough.

Sounds good. I'll try to summarize without immortalizing too much of my
ignorance ;)

And thanks for your thoughts.

> Also maybe look into switching from wait_for_vblanks to
> wait_for_flip_done, it's the right thing to do (see kerneldoc, it should
> explain things a bit).

I've read some, and will probably reread a few more times. And I left
one question above.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
