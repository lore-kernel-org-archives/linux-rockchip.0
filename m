Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BC30C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 20:47:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE6E561AA7
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 20:47:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DE6E561AA7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSJQ9CUmNznyWjLrH/LcCjqOXBX8CCOTMPrkLP+U/pY=; b=sgBAZHS9Qj+yQA
	rNPNNTE2c9z06aZK1reBSY8Ihouv1q/rzsE/xHGlunlDEhMpsApTwG7BR1n4klOXsJOONtOcS/P4O
	sd5t+VmLBo0RSCwAB/GuhR/NsXt2loBZ/5tLi72+8SlKI8iLR8GMYIVnJWXO9KQuHZrrzSZhcX4/O
	EDQEfTsOnRPNLJcTxIEsvNIe1vkyH3dg4vCyu8vhJdKwxRxRIqwyLr7FL66QMya2Tr9P/BmHuwenk
	6XAK58doKYCzsygD5MFbS0P1+aJNL4sO1UgZUTMz8CXABfqzHBoE+jSvWUo6GZEydbDk53ulBncE/
	s4EyJYYoIChOY6galFEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnRqR-006G0D-6T; Wed, 17 Nov 2021 20:47:51 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnRqN-006Fzp-OB
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 20:47:49 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 p18-20020a17090ad31200b001a78bb52876so6256760pju.3
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 12:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0vK/ighOzZuC6Y+2uf+e2G0O4RrKtsj6uBz25D3JSHE=;
 b=jOsuG4++rRbfbei3wgTWv6Nu9ZKIRWjd3Q1x8lfasRr7VVQd0qRTzAC8Wf64zWmi6b
 +T90ZsPVL13J8h7iqkBL8g1cM/39AHbMKaEQaWoGP7mZ8i0+yOUfHJaKKciQfUSaqs63
 0RPcrWHsBEcdZ5IygXZHZDxEv5Ii2QJlOkXdO5UM537S+WxY7KMyuzCADhhxiDGboq+4
 iFSg0jXX6aZkaHPbw10/ZRNVcc49nx00/PtB6PKSJgHxywjQMawPsqQv+E2T7r+6uzXn
 aB+RH841EyvHFULt1YvNwTaapEZ1m2n4vyET2yGrGfkJ/aLRpJHKCyDdD7raJIIaauzN
 PBVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0vK/ighOzZuC6Y+2uf+e2G0O4RrKtsj6uBz25D3JSHE=;
 b=PF5k29IqWrSN85vh1wkxfEg8bcf9xltHS+R2XEydorvX+pnjhuOOf97Wt5K2d9/kVo
 KTauFySxnfD7+LU+Rqy2ib0p4FNWXNqvpARqGm/TXejbMITDui/oCsCIwbNwzVtXnZB1
 CSgkrIvu8/6qZ5KjOEOGaCqKtockNnMr73FJnb871Lo89rKsf8SWZihKT7cPaibdxXoY
 nucL2NBzRZ/gZfaqTPk+4+hkG564k9KOo8uuhcpvTQzPReV2pEeyMm5hNCRBixYHUn+L
 Jd1Lp+ENlqWiWpvRlh9Tl9b9cZSILtZ6XdkteJQ0eLG8ch30kNj9qgNz5udLjeW/sb+s
 Dv+Q==
X-Gm-Message-State: AOAM531wSvxKMTSo3C9oIsSsXc+0A0xeF8CpNIgw9ShwtUEeY//CQ8tE
 /qbK266R0GWKjV+e5mAqfqY=
X-Google-Smtp-Source: ABdhPJzEC2p9CKz/ZZEYDEmlP4fgK23s9z+zbfLmbyywgcJzuvpeuyktKLwofPfWSV13pArbF8sPwQ==
X-Received: by 2002:a17:90b:3890:: with SMTP id
 mu16mr3355961pjb.186.1637182065107; 
 Wed, 17 Nov 2021 12:47:45 -0800 (PST)
Received: from google.com ([2620:15c:202:201:e863:bb5d:673b:3a6d])
 by smtp.gmail.com with ESMTPSA id pg13sm511061pjb.8.2021.11.17.12.47.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 12:47:43 -0800 (PST)
Date: Wed, 17 Nov 2021 12:47:41 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Doug Anderson <dianders@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YZVqbZpAPHOBG6bL@google.com>
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
 <CA+ASDXMvZCjn+X98JccyJiLQ0ggq-t-HqnM5SKYMbiQFqZDhGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+ASDXMvZCjn+X98JccyJiLQ0ggq-t-HqnM5SKYMbiQFqZDhGQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_124747_840157_692DECD6 
X-CRM114-Status: GOOD (  26.50  )
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

On Wed, Nov 17, 2021 at 10:38:58AM -0800, Brian Norris wrote:
> On Fri, Nov 12, 2021 at 4:52 PM Doug Anderson <dianders@chromium.org> wrote:
> 
> (Snip other comments; they seem reasonable, and I'll factor them into
> the next version)
> 
> > I guess one random thought I had is whether there would be an
> > appropriate place to put this that _wasn't_ in DRM. I still wonder
> > whether we'll ever try to upstream something like the cpufreq boost
> > driver that we're carrying around and using in Chrome OS. If so, it
> > would want to use these same helpers and it'd be pretty awkward for it
> > to have to reach into DRM. ...any chance we could just land these
> > helpers somewhere more generic?
> 
> Yeah, I was torn on what to do here as well. I'd rather land something
> than nothing, and when reading past conversations, it sounded like
> Dmitry didn't want this kind of thing in drivers/input/ [1]. I'd love
> to be wrong here though.

I simply feel that input_handler is already a very simple abstraction
and trying to specialize it to simplify users further is not productive.

> 
> I'm not sure where else this would belong though -- either in the
> producing subsystem (input) or the consuming one(s) (drm, cpufreq). We
> could make up some odd middle ground I suppose (lib/?), but that seems
> pretty artificial.
> 
> I guess one question is, what is this abstracting, and is that
> abstraction actually a shared need for multiple subsystems? I think
> the abstraction is, "impending user activity; <component X> should
> prepare itself". That general need is exactly the same for the cases
> I'm aware of. And if there is any tuning needed (e.g., ignore input
> device Y; or turn the whole thing off, because we're ignoring input
> for now), that would also seem to be a shared need.
> 
> Anyway, back to my first paragraph: I'll plan on keeping this as-is
> (as a DRM helper) unless I hear otherwise from input folks.
> 
> Brian
> 
> [1] https://lore.kernel.org/all/20180416174117.GA77055@dtor-ws/

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
