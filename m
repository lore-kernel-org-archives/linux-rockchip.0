Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AFAC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:39:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D6D261B96
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:39:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D6D261B96
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAigY3NWpLgEyoKILEOppFejO0281olvjFyHogFHBvo=; b=DVpc/bpzH1iOwp
	tkdWjwcFhiRH+cJKBn1gBBdMXH8RgRsgyMccldyo1B0oEbaMrO3y5xHxqGnWUtr8WZi75sj4Oo87L
	ve4GTdOalvGmomVWFEng0MbfS3Qnoyec7d06Sb3Mlc6CXcLdJj7UNCvvA0qEUCQi6l1Dym8cB+C+R
	IBm3OA9Bs5XqJielnbohYfVlUThTPa5HU6GppE1i3Y4AfaNJ3dPOy3gr5MksNm/mXhdHRLHz0v0DR
	xSylQhPOzXejwj5ZkM1h7jAQRdLMMCceN5rT7xnPgNio26P7DtHwIQx7gzsu0a3Qqsz5wSBaipffn
	xecLek11kRqH5PoDO+aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnPq0-0067aB-OH; Wed, 17 Nov 2021 18:39:16 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnPpx-0067ZU-Ch
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 18:39:14 +0000
Received: by mail-oi1-x234.google.com with SMTP id t19so8423325oij.1
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 10:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xMwG57gRfhGvfx3bsDRgnJ+lC91dyaKgwcL6O6NADCg=;
 b=bJY06TjEuEzBnei7QjerBZN/1ksqFWHyKXL5pm5sxptQa7m+l/ok/BVkK/Uw2vekW5
 VIav0aHERuBwOTK/lDVT3QeGPFjnz59tSD824VTVn8odKVwl2w8sQKQy2un2aeRMQ8//
 KXriJulpdalysaLauw+DTWngzeYooAdSBTcPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xMwG57gRfhGvfx3bsDRgnJ+lC91dyaKgwcL6O6NADCg=;
 b=xw1XELtSRw2HEdIqJHGveeTAZMPyoIkMqHp9wYnXysn1MBX6pIr+l7YIzFZ7UkL9Vz
 7LpxwhwnZRfD21HD3TWloRGNCKxcGgLviO4yoIypaRYQaTKIri8WSoubzTAU5aJriJM+
 R+u0SOpJgmXAdIt0toX20CHcwFsyrBX0YeTZAvv75y5oa8j3prNth6B5JKBeLMZvSSJz
 pAUyk5Ty1FpTyiyg5FSs3gnFSia0JGd9Bb/V9mqLWJMkTdQ6oXpZ4cWjO8w9GS9mVX20
 Z1j1hMccyjLKFMx9jhfKmG88KwJyqDT/wGB5OI/HxWSn9TzvSq9iAVMRIt+TnPBThYqc
 Yzng==
X-Gm-Message-State: AOAM532Pl0QzKFd4Z0WBcBQVBm5Ipzx2peC0yrQ/qaqiwVuJ/oIwOz5J
 jKvKtg+UsiQOfkdPBUmSw+GQLglYBWqYxA==
X-Google-Smtp-Source: ABdhPJxbG/6po5YS/b88jx+k8EhHBYT1OIylwyX/Xl3Gu+3qn8C9yfrZqJ1CaFWWlBv8RhskYzbOrQ==
X-Received: by 2002:a05:6808:300d:: with SMTP id
 ay13mr1736039oib.144.1637174351452; 
 Wed, 17 Nov 2021 10:39:11 -0800 (PST)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com.
 [209.85.167.181])
 by smtp.gmail.com with ESMTPSA id f18sm127101otl.28.2021.11.17.10.39.10
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 10:39:10 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id u74so8322030oie.8
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 10:39:10 -0800 (PST)
X-Received: by 2002:a05:6808:1811:: with SMTP id
 bh17mr1707744oib.105.1637174349813; 
 Wed, 17 Nov 2021 10:39:09 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
In-Reply-To: <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 17 Nov 2021 10:38:58 -0800
X-Gmail-Original-Message-ID: <CA+ASDXMvZCjn+X98JccyJiLQ0ggq-t-HqnM5SKYMbiQFqZDhGQ@mail.gmail.com>
Message-ID: <CA+ASDXMvZCjn+X98JccyJiLQ0ggq-t-HqnM5SKYMbiQFqZDhGQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/input_helper: Add new input-handling helper
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
X-CRM114-CacheID: sfid-20211117_103913_473187_DCBCE030 
X-CRM114-Status: GOOD (  17.68  )
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

On Fri, Nov 12, 2021 at 4:52 PM Doug Anderson <dianders@chromium.org> wrote:

(Snip other comments; they seem reasonable, and I'll factor them into
the next version)

> I guess one random thought I had is whether there would be an
> appropriate place to put this that _wasn't_ in DRM. I still wonder
> whether we'll ever try to upstream something like the cpufreq boost
> driver that we're carrying around and using in Chrome OS. If so, it
> would want to use these same helpers and it'd be pretty awkward for it
> to have to reach into DRM. ...any chance we could just land these
> helpers somewhere more generic?

Yeah, I was torn on what to do here as well. I'd rather land something
than nothing, and when reading past conversations, it sounded like
Dmitry didn't want this kind of thing in drivers/input/ [1]. I'd love
to be wrong here though.

I'm not sure where else this would belong though -- either in the
producing subsystem (input) or the consuming one(s) (drm, cpufreq). We
could make up some odd middle ground I suppose (lib/?), but that seems
pretty artificial.

I guess one question is, what is this abstracting, and is that
abstraction actually a shared need for multiple subsystems? I think
the abstraction is, "impending user activity; <component X> should
prepare itself". That general need is exactly the same for the cases
I'm aware of. And if there is any tuning needed (e.g., ignore input
device Y; or turn the whole thing off, because we're ignoring input
for now), that would also seem to be a shared need.

Anyway, back to my first paragraph: I'll plan on keeping this as-is
(as a DRM helper) unless I hear otherwise from input folks.

Brian

[1] https://lore.kernel.org/all/20180416174117.GA77055@dtor-ws/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
