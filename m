Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 251DDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:43:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE06960FED
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:43:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DE06960FED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5ACFw+JoU2QjPQl1d8YqZYIdNGa6jOykAc/jZdr9tQ=; b=pjneo9rSK3GPRw
	w2EFt7uflgS4O4UnGQ1WZspkeiZIYTVxrZNZM+gJEogZL2VnS+mWKkzUuPvdKoUubwIy8Wz0iYxry
	OdemP7c9TP7dhydQ8Uu50do+xh7KLowQBr3cqcARc3JhFflsXhFLltCMzqYHRhkVb/SAGTGQoIujE
	yYnpZxmF1pJYbBLYDTlb7l4czEq29rypF9bifYjoS5k1zRRmilrz6xHO6b8iUeb9idkXBlEUWMrOf
	1jNxQxDckh1xLeSHiPQUPtwH/HvTgoRfYuCRTUDkf3Re2c+6Q/gJv+IrcV08vyum3OW9R66v3nrZC
	in/l1Uemd3CNz/jn7FZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUvbA-003ovJ-Mg; Mon, 27 Sep 2021 18:43:32 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUvb8-003ouf-11
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 18:43:31 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 g62-20020a9d2dc4000000b0054752cfbc59so19999455otb.1
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 11:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HADnuLjmEAtZ6Adqy4cLTMjazC/sJm6aQiFvmVyyZo4=;
 b=THiCwO7Zruhs5bQqv3BzUlc2PVXfItncfte4Dq3tvyVrPzlN4omD2HJN0zKWLQu7Gq
 2R5/2tJoY80gO09YsafkznMakjhV0PKeqTcfocK6lgX1f5Ak98bouzA6SLA8l+m2Fm87
 jL7k3dh+oKEedYtCK2//ERCD0Et5Oy2spD8tQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HADnuLjmEAtZ6Adqy4cLTMjazC/sJm6aQiFvmVyyZo4=;
 b=p4aiYbwHTnogbKbKaS3lbEfYepNSa9EKdkTTawHiEb5i90cge/xKSbD0bAZ0gHCql3
 +sdlPJ8LNtagDLF21daQf7X2ZOwIE7/3uz56EvyoU8DfK5PFdub0CUcJvjUQcWIrccun
 h093P9o2FicAcLfmWtLZI/F79AoUxh4mfzCWx9T/VOGb1ExXUd9WhpacO1OmlEDrvtuL
 HpXtR2XmTQ65idfGyCe7TDCKHJc9EEWWOZqgcUlxUPWgt9iKdwBxv8SeYPisBosi8+OQ
 jNIjGSLA2z6Eax8xNVVnnZkwClVZjSOjxgzQr72ajpouu6NtxoCX4DZNpxvYTYIzD7MJ
 nnAQ==
X-Gm-Message-State: AOAM530R2er5q4rjcQKp1B4225sRnMyBnEDKE2yabU4l8NY/0/0PNFwF
 M4P0F9MJZNZUm89QwwtyORG3p/t4GA7wmg==
X-Google-Smtp-Source: ABdhPJzGudzKs5BHJ2u/R6jiU9DPvdMkwxD0AlzmACBVNcLEzxetjBh3Ds5f8CVf/4xK8/fFTCHQPQ==
X-Received: by 2002:a05:6830:31a5:: with SMTP id
 q5mr1321232ots.191.1632768208671; 
 Mon, 27 Sep 2021 11:43:28 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id u12sm4224775otq.20.2021.09.27.11.43.27
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 11:43:28 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id
 77-20020a9d0ed3000000b00546e10e6699so25755003otj.2
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 11:43:27 -0700 (PDT)
X-Received: by 2002:a05:6830:112:: with SMTP id
 i18mr1353439otp.186.1632768207428; 
 Mon, 27 Sep 2021 11:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210924162321.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
 <CAGXv+5Ej=sDXOy1Hg9fQrdxN-OEmxpfUjE8PfxgfBkWu9dvOXQ@mail.gmail.com>
In-Reply-To: <CAGXv+5Ej=sDXOy1Hg9fQrdxN-OEmxpfUjE8PfxgfBkWu9dvOXQ@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 27 Sep 2021 11:43:16 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO4yGRDAH24YygC_utY3xBesLT1VapTibeiCYoH-xoH1Q@mail.gmail.com>
Message-ID: <CA+ASDXO4yGRDAH24YygC_utY3xBesLT1VapTibeiCYoH-xoH1Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/rockchip: dsi: hold pm-runtime across bind/unbind
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thomas Hebb <tommyhebb@gmail.com>, 
 aleksandr.o.makarov@gmail.com, stable <stable@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_114330_109071_AC07ED86 
X-CRM114-Status: GOOD (  20.36  )
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

On Mon, Sep 27, 2021 at 12:10 AM Chen-Yu Tsai <wenst@chromium.org> wrote:
> On Sat, Sep 25, 2021 at 7:24 AM Brian Norris <briannorris@chromium.org> wrote:
> > We should match the runtime PM to the lifetime of the bind()/unbind()
> > cycle.
>
> I'm not too familiar with MIPI DSI, but it seems that the subsystem expects
> the DSI link to be always available, and in LPM if power saving is required?
> If so then this change matches that expectation, though we might lose some
> power savings compared to the previous non-conforming behavior.

Yeah, I was a little torn on whether we should care about any possible
lost power savings here, because now we stay runtime-enabled even if
the display is not enable()d. But I'm not aware of a good hook for
handling this kind of a sequence, and I'm not convinced there is much
savings by disabling the power domain in that case.

> > Fixes: 59eb7193bef2 ("drm/rockchip: dsi: move all lane config except LCDC mux to bind()")
>
> This hash is from some stable branch. The mainline one is:
>
> 43c2de1002d2 drm/rockchip: dsi: move all lane config except LCDC mux to bind()

Oops, good catch. I've been doing too much debugging/development on
5.10.y stable. Fixed in v2.

> The bind function is missing an error cleanup path. We might end up with
> unbalanced runtime PM references. (And also possibly an enabled pllref clk.)
> This is a pre-existing issue though. The code changes here look correct.

In v2, I've performed cleanup for the runtime PM state in this patch,
and added an additional patch to fix the other existing issues you
noted. Thanks.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
