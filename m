Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500A5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 19:57:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1AB1060E8B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 19:57:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1AB1060E8B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Easm6c6LbB7vcez7V8jsaVA0oipeNmBoU4wxulrY9rA=; b=3KK/QQoKpJp57k
	VOCBDHiiidd7rCoJyxYRxJ+J0IYKq/EJpHOVpEIjKO1DQnzEl4dnAuSBMCZMDIpeOnD5xbsP3J6PP
	iUF8KG2Yrr44V4j9PU7T9LG0bCUrgLfaM6UlFdjTHRKlDClh47MU/f8DIhPRIKNZKsfBGX2ZC6Pho
	Xlzn6tm3yPUw+R0l5mBXKQJN+g6aboLBUOyKV7LPvr0SbOZJiEjVtKXGJEjUWkdb1bIL9u2ZqqvE6
	kn6eP9a+mHxdaXEwsiy7LaMaXX9ZBXi6eNg7zNccg/1kVfc6Z91X+MLXRjFtqO84seNEcs8VMVe2m
	kD8qagld4GlIfrQF+48Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUwl4-0045ic-7O; Mon, 27 Sep 2021 19:57:50 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUwl1-0045hA-Q6
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 19:57:49 +0000
Received: by mail-ot1-x32a.google.com with SMTP id
 67-20020a9d0449000000b00546e5a8062aso25973700otc.9
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 12:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1ONQHO/Bzi5LFkOtwJS2vhWiuGqb/wIXJtxU1fHbPl8=;
 b=Wb7xiO1cI0MfWuS+695CXwjxtBdtVtrQvJDK9SFDz1vxh7CK3HOiUog8QJXp6qtWBL
 EL1KbLzoz+pYkbwOA24q0ibT8HzvO7QIIcPl35X9CIzWQzBHd2SS/aJR089sVLOfem9+
 i2BXO4Fe4jZMytYXFF4Gv74oA+ImkhvoOKDMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1ONQHO/Bzi5LFkOtwJS2vhWiuGqb/wIXJtxU1fHbPl8=;
 b=yunAIy+MIWg4pNwdQKkucx0HCXAegPtZFWp3d9Gwk8848rpgNIugcZcprjyy5p7qFt
 p7YCAuVPc6LYjb+tALT6Jf7BfsT7WFgvq+YnxLM1/ez37uGFc8D4yektSzt2mDIl8GnS
 Pvo9aZUlJ/VxJM1ZJTiuDTyzGwaH/9Q8Qvd78bev5ql0/WuGxt3B8SPVVqwFJlTL5LGf
 exo3zKewu1p04Bm4m0GTF0uX91YiPFmWAxk0kOX1y3TqT97tyRlRTkC0yX4NXNTwRmkx
 QN2tIbJ4jWCN917F0cN5cjOZMAIoYmQNyE43/qvpWbERqYjo5f44gqmY2Qlpqwq7JJDV
 s65w==
X-Gm-Message-State: AOAM531rlqF0AeenAt1VnE8EcgneVPiV2KxM+mZxAF3e3cYaKC+7N7sR
 FcPNSWl2TAsiPTa24+PyxVkdr51TUgFAkg==
X-Google-Smtp-Source: ABdhPJwIoEGsEyUzsnxXTBaa+zDT0SPbMyLKgJ89WtmGthWsGGnvliNsGAkQ8Y0Eu64Mxth5MHQshw==
X-Received: by 2002:a05:6830:1191:: with SMTP id
 u17mr1610008otq.32.1632772665732; 
 Mon, 27 Sep 2021 12:57:45 -0700 (PDT)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com.
 [209.85.167.182])
 by smtp.gmail.com with ESMTPSA id ay42sm3964483oib.22.2021.09.27.12.57.44
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 12:57:45 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id u22so27108849oie.5
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 12:57:44 -0700 (PDT)
X-Received: by 2002:a54:4393:: with SMTP id u19mr659705oiv.77.1632772664480;
 Mon, 27 Sep 2021 12:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210927175944.3381314-1-briannorris@chromium.org>
 <20210927105928.v2.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
 <CAMcCCgS_r17Lj_qPX9TdH3=7D_tiXu9OzL=dDNS+9MZyOUv-+Q@mail.gmail.com>
In-Reply-To: <CAMcCCgS_r17Lj_qPX9TdH3=7D_tiXu9OzL=dDNS+9MZyOUv-+Q@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 27 Sep 2021 12:57:33 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMyaWfg07UEcbN_N4WBK=PzVO+SnwZ=VnjL2hJDWvOxDw@mail.gmail.com>
Message-ID: <CA+ASDXMyaWfg07UEcbN_N4WBK=PzVO+SnwZ=VnjL2hJDWvOxDw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm/rockchip: dsi: Hold pm-runtime across
 bind/unbind
To: Tom Hebb <tommyhebb@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wenst@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sandy Huang <hjc@rock-chips.com>, 
 Linux Kernel <linux-kernel@vger.kernel.org>, aleksandr.o.makarov@gmail.com, 
 stable <stable@vger.kernel.org>, 
 =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_125747_883257_F27DFAD9 
X-CRM114-Status: GOOD (  13.24  )
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

On Mon, Sep 27, 2021 at 12:18 PM Tom Hebb <tommyhebb@gmail.com> wrote:
> Reviewed-by: Thomas Hebb <tommyhebb@gmail.com>

Thanks!

> Thank you for catching this, and sorry that my original fix broke things.
> There had actually been a report of this breakage from my patch, but I
> missed that email until it had already been merged and then didn't have
> time to follow up on it. Totally my bad.

No worries. It was a 1 step forward, 1 step backward kind of a thing
anyway -- things were broken in many cases before your patch too (with
very similar-looking symptoms) -- so the net result is still good,
having both issues fixed.

I'm not sure how that ideally should have been handled [1], but it's
totally fair to not have time to follow up on everything. At the
worst, we could have reverted things; but again, I'm pretty sure
things were broken just as well without your fix, just with a
different root cause.

Regards,
Brian

[1] Don't accept (or, revert?) your bugfix until what may or may not
have been a regression is fixed? I'm not sure.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
