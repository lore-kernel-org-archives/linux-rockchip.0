Return-Path: <SRS0=b48f=H2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E40CC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 16:06:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B27A264EF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Feb 2021 16:06:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B27A264EF5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gF3zjLQd+PW1JnHZyIrMzu06vjXWVVzl/9CdqsVkwMM=; b=0csF/GRjIInEwC2iofiMCJBgo
	o8QYw5ZU9A7o0QTHmzsnvSGjbhR4OkZuoh8WpjSsHhDbThJa4I3TWQ/xH7twjA+dcTgpvK/Gx9GK5
	JMq7tHdYApoAqxQTCLNroMcwa9HACIP+LhDgLkbhX/g7ZMGpJKmX0ouNbznMpJuEn7bWLt/Judyup
	wK7c0zJH8tVDSDIN5yYiX50JEnY9DNiTDAXZI4TSx0etBkFHc4lInSEkuYp2svnBn5KQMSiNOkIlN
	005PIepksRwLZUgyS3R97SiECY5D21VC1k6W2M8gaf/AnBWMMF69TsquFCn2vojWWAcw5ut1ZRi5n
	I4w+to8+A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEwgB-0001wO-Gq; Wed, 24 Feb 2021 16:06:23 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEwg8-0001ve-6d
 for linux-rockchip@lists.infradead.org; Wed, 24 Feb 2021 16:06:21 +0000
Received: by mail-wr1-x434.google.com with SMTP id e10so2184435wro.12
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Feb 2021 08:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ho7+jbWkPLe62RqDxRMAHg2mRAnGfcFm5FI9bReH5Ic=;
 b=D9i4vOJZBIGoaG+7t5QKqBCGfC4/n8CeTKgeq9x1bR/uneeT5y8a+YXTTLOT1HB1Ft
 D1I47nnO8wj5gV+f014x9CyCCWuHDl8ulsOnbPrudUD32DG5VqZy6JU+utcc+onGTs0g
 /KszCsSwIRecLOl3OudhRxPnxIhxxGRkbR9blfXGfreHJHN6Ad5WSF9HuEBvQJcKBB9v
 x0FjZZjIo10MNHiLgewGvw/VSzz+XjJ6MBYhYHu8zk1SRfJCvLd9LvmTovUCOzjdgR4+
 CNMEUUZ/gtRMI/qerb7DsfaJMB6ucCBErRADFyXswps4GSV2L9YbGPeYpx+7lC+OafMZ
 irqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ho7+jbWkPLe62RqDxRMAHg2mRAnGfcFm5FI9bReH5Ic=;
 b=Ef/qhbf44r/WXKwed9XBGXw0bLeEWucgnVz9uveQYaf7gfhCc2U6IhG2IVcuFs9VgH
 dHNAmITwrutjorXFjiAcfR30+FGQrUkhzSqAWwXvRU6/Yr1RD+B2kfOFtGuTTopEGjH4
 kppRcxfXRbQrQmyY+CCxJHryV1/PLcwl3++3/ulGMr3/Uzw7OuZErOOx6VJp1+jbSqUW
 zqfHRfR7rb3FuDTRh8KZiC5Y/cYmtKPE6Cj/KNo7IRlVKAX/CEqoRInDvjLzMw/4YXmj
 qgNuKkAwQVg3cKmBpYEIZGOqh6Of5bmb3Z6m0Ql8H1tl7AIflTaCXuY7RpH53XcAzNOk
 w8iw==
X-Gm-Message-State: AOAM5307qCGFqoC7xTCd7mBiEs/d2f+Rx/ZuBfen9EMUujnt7UX7RY2P
 HRor3wyQie2uxoLsoU7J7CmxM8Squ3EQ6k6qyBfgmSRw5bxUlQ==
X-Google-Smtp-Source: ABdhPJzMjfW7et16dlBlIUk3RMbaiTevIDWEWvDsfKcc4aiZ0oNOp8ZVMiM1JKkb4SyFU9nFeq+Smn+VtqilCPjJayA=
X-Received: by 2002:a5d:4521:: with SMTP id j1mr5630733wra.354.1614182777056; 
 Wed, 24 Feb 2021 08:06:17 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
 <20210223165348.edghgglgx4g2lvfw@DESKTOP-E1NTVVP.localdomain>
 <YDU2+A0MNJnrWxPs@maud>
 <20210223183404.jmdw5rojy4s64xfd@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rOVTd7YhbPoYyxhDD1+S7xG23L2v8Hujdh6tGFBq+n+Hg@mail.gmail.com>
 <CAKMK7uG+xNt4iQkB2ysbMQPbe_JSPWCq+3VzV+OOAuAhn=9x0Q@mail.gmail.com>
In-Reply-To: <CAKMK7uG+xNt4iQkB2ysbMQPbe_JSPWCq+3VzV+OOAuAhn=9x0Q@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 24 Feb 2021 16:06:05 +0000
Message-ID: <CAPj87rPRgJU0N7-41K2VLuBahEnYQH52FaTqVbDpW7CHu_6VmA@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_110620_384309_438D4232 
X-CRM114-Status: GOOD (  14.15  )
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
Cc: Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, nd <nd@arm.com>,
 Brian Starkey <brian.starkey@arm.com>,
 Alyssa Rosenzweig <alyssa@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey,

On Wed, 24 Feb 2021 at 14:58, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Tue, Feb 23, 2021 at 7:50 PM Daniel Stone <daniel@fooishbar.org> wrote:
> > The issue is a userspace one though, not a kernel one. Userspace (e.g.
> > GNOME Shell, Weston, Xorg) decides ahead of time that it's going to
> > use XRGB8888, then use the modifiers available to it for that format.
> > There's no logic in those projects to look at the list of 8bpc
> > non-alpha formats, examine XRGB vs. XBGR, decide that XBGR is 'better'
> > since it has more modifiers available, then go use XBGR.
>
> That sounds a bit like userspace being too simple. Since if they're ok
> with dealing with modifiers accessing the raw buffer is out the window
> anyway, so bgr vs rgb shouldn't matter.

Sure, you can add colour-channel permutations, if you have concrete
'rough equivalence' mappings, and you check that between KMS + EGL +
anything external you want to use like PipeWire.

We pretty much punted on that long ago and just use XRGB for
everything. Android punted on that from the beginning and just uses
XBGR for everything ... so it's not really a matter of dumb vs. smart
userspace, just equally dumb userspaces which disagree with each
other. ;)

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
