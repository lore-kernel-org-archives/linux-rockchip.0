Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB466C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:24:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8A34461A62
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:24:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8A34461A62
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWWf/xP6c6NMTkLnBxpj8FjgltXcr1SartrIhdtIsBQ=; b=3eJ4lPtOdSI1eE
	qBkglf5YjpHWXJCnB9NQEN2JHdwLlid+AbrpovI8GB1938KfaZPm7gxiLR6QnGBMTxifM3S1KKWuU
	Gs0EgpyzDHZ5gdIn8sztkSU+CeiaV74UMbV2tubQ7gji4paVjVVNAcp0Gha6QfhjneqtCyb5od2aP
	82yboe0jepHFpIdnwZzFdNSL7EfF3xbb6yxmpxjIMttouMMhzz7dfKOin9/P+XL97DIljszkAsaOV
	uhO59b/tBN4yEzeWoHu5+ivNfQW5vEhe6sY/Krk1eUc/xbkTUYQezpN+60MTsF4IgxLNCdXGTnveY
	8va3t7lx6Ras4B6GV2lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnPc6-0065zL-HN; Wed, 17 Nov 2021 18:24:54 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnPc3-0065y9-9y
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 18:24:52 +0000
Received: by mail-oi1-x230.google.com with SMTP id n66so8242304oia.9
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 10:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lQ6/wfGxlq62JVYF2E32Rlz6vPrZMUyQROpg1BnR6yc=;
 b=iJ4RM1d7x7IyjFcBbZxyPp3mTGbPzfcdiC4ayejMerwTaE6kvxxQNbdNI3IW1UANOm
 L2bIw3wpFdnpwXCZvzOso5Y2Tw2uj0aczx4iy4lh3dpCRZYjxEJ9kg7rh1JGFJg2ajvc
 5fTgGT4YGyt4SaCS/fIbIeHouKL9x3aQ0F26E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lQ6/wfGxlq62JVYF2E32Rlz6vPrZMUyQROpg1BnR6yc=;
 b=q9nWn7MzXIumTks9p1lfLGjONExWr+JdfeV8B6745PUvLXS17sEdhxxlLOcnmyjFp1
 Vzr1kDXWWJZX+hoE3bVjeENSnbAWL5oOxA9FUDGWlDIJakuEFw1CGJNgd29/MsHLQPsN
 4TGQXrmYdGPeCSsthm+WZUwiHQCXTmTH1t5jQX+tsDXOHiXIR/pjArkyc1owCy2sY8k5
 8xZIq+1yNlJpjmQ9IjZBsNltSvNMlZdwFJbIsrHnJtYQJybOpv6BCWbB8kN2zu6C0oQt
 vZfLIJnAr5yaiJV5QAS2kVS3E1/ppC9W85jMxrkRFZumiX+exI96xJpA34Qo+O2M3XcW
 rlUg==
X-Gm-Message-State: AOAM533D5ynthe8kX8bWNtb8+fDoYjhpu7PCkh7RPKpsLKNVj0Dx8mTA
 2kJPKu4Lia+XK9xQCcJNVtsP+jvXOXP7XQ==
X-Google-Smtp-Source: ABdhPJz8prkxGN7nr4hexGpMFJMXOR3T89N37BzBatJagIKJXsvVv8d4lr5n1Ji6To5DwPWD3vovgA==
X-Received: by 2002:a05:6808:dc5:: with SMTP id
 g5mr1736513oic.58.1637173489212; 
 Wed, 17 Nov 2021 10:24:49 -0800 (PST)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com.
 [209.85.210.41])
 by smtp.gmail.com with ESMTPSA id j5sm89044oou.23.2021.11.17.10.24.46
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 10:24:47 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id
 h16-20020a9d7990000000b0055c7ae44dd2so6230924otm.10
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 10:24:46 -0800 (PST)
X-Received: by 2002:a9d:4b19:: with SMTP id q25mr14987933otf.186.1637173485758; 
 Wed, 17 Nov 2021 10:24:45 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
 <CAD=FV=WDRDHVSiFW+yxaR=Z+mNdKnUY_eF_CFqKeQhcKmdag5g@mail.gmail.com>
In-Reply-To: <CAD=FV=WDRDHVSiFW+yxaR=Z+mNdKnUY_eF_CFqKeQhcKmdag5g@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 17 Nov 2021 10:24:34 -0800
X-Gmail-Original-Message-ID: <CA+ASDXOiwU-r5ZGes-ZNxZSuMgbidz=+SdAX8phoYcvexUmU=w@mail.gmail.com>
Message-ID: <CA+ASDXOiwU-r5ZGes-ZNxZSuMgbidz=+SdAX8phoYcvexUmU=w@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/self_refresh: Disable self-refresh on input events
To: Doug Anderson <dianders@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, David Airlie <airlied@linux.ie>, 
 linux-rockchip@lists.infradead.org, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Rob Clark <robdclark@chromium.org>, 
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_102451_390220_5915F838 
X-CRM114-Status: GOOD (  30.68  )
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

Hi Doug,

On Fri, Nov 12, 2021 at 4:52 PM Doug Anderson <dianders@chromium.org> wrote:
> On Wed, Nov 3, 2021 at 4:40 PM Brian Norris <briannorris@chromium.org> wrote:
...
> > Leverage a new drm_input_helper library to get easy access to
> > likely-relevant input event callbacks.
>
> So IMO this is a really useful thing and I'm in support of it landing.
> It's not much code and it clearly gives a big benefit. However, I
> would request a CONFIG option to control this so that if someone
> really finds some use case where it isn't needed or if they find a
> good way to do this in userspace without latency problems then they
> can turn it off. Does that sound reasonable?

Sure, I think so. This feature is unfortunately on the borderline of
"policy" (which we normally avoid baking into the kernel), so having
some control over it is probably a good idea -- e.g., module
parameter, CONFIG_*, or both.

I suppose that would make sense to be a "self_refresh"-level control,
and not a "drm_input_helper"-level control? Because different
applications (PSR, GPU boost, etc.) may have different characteristics
and reasons for leveraging this or not.

> > Inspired-by: Kristian H. Kristensen <hoegsberg@google.com>
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> > This was in part picked up from:
> >
> >   https://lore.kernel.org/all/20180405095000.9756-25-enric.balletbo@collabora.com/
> >   [PATCH v6 24/30] drm/rockchip: Disable PSR on input events
> >
> > with significant rewrites/reworks:
> >
> >  - moved to common drm_input_helper and drm_self_refresh_helper
> >    implementation
> >  - track state only through crtc->state->self_refresh_active
> >
> > Note that I'm relatively unfamiliar with DRM locking expectations, but I
> > believe access to drm_crtc->state (which helps us track redundant
> > transitions) is OK under the locking provided by
> > drm_atomic_get_crtc_state().
>
> Yeah, I'm no expert here either. I gave a review a shot anyway since
> it's been all quiet, but adult supervision is probably required...

Thanks ;)

> I can believe that you are safe from corrupting things, but I think
> you still have locking problems, don't you? What about this:
>
> 1. PSR is _not_ active but we're 1 microsecond away from entering PSR
>
> 2. Input event comes through.
>
> 3. Start executing drm_self_refresh_transition(false).
>
> 4. PSR timer expires and starts executing drm_self_refresh_transition(true).
>
> 5. Input event "wins the race" but sees that PSR is already disabled => noop
>
> 6. PSR timer gets the lock now. Starts PSR transition.
>
> Wouldn't it be better to cancel / reschedule any PSR entry as soon as
> you see the input event?

I did think about that option (calling mod_timer to delay the next PSR
entry), but thought it was a bit excessive, at least in terms of
calling it a "race" -- the race between steps #5 and #6 are
essentially equivalent to the natural (unsolvable) race between #1 and
#2 (we can't really read the future about input events).

But rereading your explanation and thinking again, I see that you're
pointing out less of a "race" in the traditional sense, and more of a
missing part of this feature: I think what you're really saying is
that input events should not only exit PSR, but they should delay PSR
(re)entry for some time. With my current patch, input events only
enforce any delay time window if we were already in PSR.

I'll try to factor that into the next version. Thanks!

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
