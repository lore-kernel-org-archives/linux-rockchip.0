Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7092C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 18:50:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 393B660231
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 18:50:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 393B660231
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q1dUXwdW7o7v4yqodWw+kJ//X4i4GBZo7dNNJuvhg9s=; b=dfhOBp0Zm//PaI2syChIU8n12
	6x+vvljaQ0oXJA/9PE6CqmuEXiyskv9z4cTTCYKm+3lvQZz05ivf+jLGsKf5l9/KMYOQUBjIUXXBo
	yGCxTdGDqmsOl08tKXZW3qcUX59MiqizZ+2KJxNrNic7g5HO9NziImzWB2yEN9qsNpLq5yIapR+8m
	mQ5xWcgtel+cVuPJZRjoU6XLVwy5oJ5dX7v3XsVOllQyduVLVuSTnGI4OK7uSi6r8gGvJcpsGDF0u
	oSJv+wjRrskHouGrOJQNlUGq++DPuSz0IL0vESs7cAggQP8nLUdV902kl2PSbKPPlRHrERI4/5LJ7
	irhs/7CvQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEclN-0000kL-9J; Tue, 23 Feb 2021 18:50:25 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEclK-0000j5-1F
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 18:50:23 +0000
Received: by mail-wr1-x42b.google.com with SMTP id c7so6894303wru.8
 for <linux-rockchip@lists.infradead.org>; Tue, 23 Feb 2021 10:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UNzpelxOUm9gemU7mzyeXuP921hBYsw6d3/DgmI/o1o=;
 b=U//jMsYdlc/uaNjTNeMr+0EiX4fYzqqnrf3SHF4XCJ4gLEBFUZbV2B0u9gx3s4vTpB
 h4Yncv8Yh1QiXVSGuMPr0zJhBJ+70m6ydETKc4a5oav5cCXBRUcKFdGxQ7Lj0i6PwbJW
 pRv+s3TQh/1XjzBSts04vmQsOBhmIOvOyCasf+uaQXuHaLkZOhqkNVzCGWfDrkwOQJmv
 866oZCO11cRMU5EFU7CJO5Aj1gsvD0y8Fj2jks5VrSlUUMMc09Y09peQ1FloKBeaVQJm
 WhEw4oV//3rUqmc8algpRD4u7DY8WQStG/H0wXI894lmZsUUoTpqOvGhybuSI0TM0n9l
 XSlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UNzpelxOUm9gemU7mzyeXuP921hBYsw6d3/DgmI/o1o=;
 b=l9andAMw/GHM9yeEpaBxtLL2Iwk0uppxQ7Y5ioC5pF9TSgMSbLaetCh35jmg0XwA3+
 B90aVFOkg7MfRxwTIAghV1qMqE9KwZGNpiswErQYaJHnrTOlrxKgb2DNn+Irl8uVFCU4
 T1jnC0vA9zUMWaB8NKoL+mhtsT2DsUV+Neku8i2URMd4/i3mv4Ev1Yk5PdHaHcv9AcVo
 0cKXtFSrd+cW+DLYqjWTaFe7CT+XfZUmeJ5GUMaf1jDj+gNDQsb8dTEum0GG/1aJUk/F
 gBHOuhA1o3MCk5wDufYMhsh0KG8ZjWBpNEWYjYSRpLyhejVbPB3QdrckitZXYZKlQF/z
 YPzA==
X-Gm-Message-State: AOAM531wYzfjybCDnKmqIQ92rhnpu2HuvdD4DuvqHe2C1TuvoK4J29R/
 9083NsgVXqqOcuPfWevMJv2UQjf/ZdiNEA/89GAqsg==
X-Google-Smtp-Source: ABdhPJyF7qufeip5RXK+PwlO8QKov1rkPn4a+1cTHobjlUDKMPgg7QX+ihyTA9QNaLv1cSDveGdY8kJRXnvtSyJtsRQ=
X-Received: by 2002:a5d:4bce:: with SMTP id l14mr27572309wrt.256.1614106220002; 
 Tue, 23 Feb 2021 10:50:20 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
 <20210223165348.edghgglgx4g2lvfw@DESKTOP-E1NTVVP.localdomain>
 <YDU2+A0MNJnrWxPs@maud>
 <20210223183404.jmdw5rojy4s64xfd@DESKTOP-E1NTVVP.localdomain>
In-Reply-To: <20210223183404.jmdw5rojy4s64xfd@DESKTOP-E1NTVVP.localdomain>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 23 Feb 2021 18:50:09 +0000
Message-ID: <CAPj87rOVTd7YhbPoYyxhDD1+S7xG23L2v8Hujdh6tGFBq+n+Hg@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Brian Starkey <brian.starkey@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_135022_231345_BED600BF 
X-CRM114-Status: GOOD (  11.95  )
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
Cc: nd <nd@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Alyssa Rosenzweig <alyssa@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Brian,

On Tue, 23 Feb 2021 at 18:34, Brian Starkey <brian.starkey@arm.com> wrote:
> On Tue, Feb 23, 2021 at 05:10:16PM +0000, Alyssa Rosenzweig wrote:
> > But it seems to me allowing
> > both BGR+YTR and RGB+YTR upstream is the better route than simply
> > preventing hardware from using AFBC at all, and there are natural
> > encodings for both with fourcc modifiers.
>
> Are those the only options? I see XBGR8888, ABGR8888, BGR888 and
> BGR565 are all handled in vop_convert_afbc_format(), which are all
> "valid" for use with YTR, and all except XBGR are on the "preferred"
> AFBC format list in afbc.rst.

The issue is a userspace one though, not a kernel one. Userspace (e.g.
GNOME Shell, Weston, Xorg) decides ahead of time that it's going to
use XRGB8888, then use the modifiers available to it for that format.
There's no logic in those projects to look at the list of 8bpc
non-alpha formats, examine XRGB vs. XBGR, decide that XBGR is 'better'
since it has more modifiers available, then go use XBGR.

So whilst removing XRGB+AFBC wouldn't technically remove the
possibility to use AFBC, the practical effect is that it wouldn't be
used.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
