Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE4AC388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 15:55:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1EA7247DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 15:55:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fZ7FuCy/";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SKr2/Rrs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1EA7247DF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ox4TfKiaYqO9M/HdCTu2LBNW0PBU05NeUyvDgzDOOto=; b=fZ7FuCy/Ih5Cklr1FnwFLAh2l
	oil0Vz/cPIOtLKX6mCQcTxIoG/GsFOo2IRqB4DSXjSXyaYhLa6/9NPIiLS1yEHhVI/qJWMeMM/ZZH
	cJC/Au2EnxJJ3OlT7UMfM6eyP3SwzszUaevgzDVThti/xmYq8r827s/4ejXSD06vJy7WDFtvx4ko1
	M+pzrG4hDE1gY3CZvR2riWa99TWy00KNeHXm7ezujVBmkjTtJZtNFVWxFyFTescVCaszN8XHGhRcc
	ua3SxnntxCz6AKbeicaWe/UsDaguXqNhyMeNx3Aszn32SkEXjcapAYtf3BAVofq5f6pYYKpKe2Mbn
	cbknKqiHQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXnnE-0005Ps-83; Wed, 28 Oct 2020 15:55:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXnnC-0005PT-5J
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 15:55:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id c21so6946073ljj.0
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 08:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xtVwlvaWZlHA4dJxYE3dokSjDugC3i0v20/tqR9kT28=;
 b=SKr2/Rrs/9HilxCVQka/YluN5gEkovGrqH85JG+SIy7DEWcMB+9pMO8WzdbzNhh3fJ
 c2pl8xFwM0GZcJ+KeY7CIvJmk3tgZ6dR2Ea10UzUhPTDrk7HYZPs492Nku9mMLVztjug
 0J1wtBL8VjVDvR9zrj+yuJw0pQuDi1B+XVJx9tlsJnD1D6lPx6aB85tobmyJ2otLjigo
 6yywpf6AtsbzlwjR4MdvyUXmynw5e6ofLc1/HtUaqvj1RwM70JQmYwXiPuASmW8QpvJd
 ZF3Dz5z3IP/MTBufdZwGJIH1ahgc4Uw5ev/jPNJChNJb6B6E7UACIoRKDqUMCYka3X4G
 gfzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xtVwlvaWZlHA4dJxYE3dokSjDugC3i0v20/tqR9kT28=;
 b=qvJr/dgq4WU1SxopEYN3RiArj+1+ah2SNLdEmA5W5K5RIjwhZHpN+bpmfrrDwJjfko
 4ZHafzsrerdnl+eO2S3S5wdVgdeJLXLANjcOlFj67cZw+HPLOrohuxBgDJ+i8/iPV8cT
 /KJ73/qQawHcSsIyyquninJPr1hyI3i5YN0tlaD+20rj3sOzVTFkLXPP1QwAP5E+v4Jh
 zOJ6I7+eU9l/csT2Yrd4p75H96SrfeuWT+t1YhRShGLuUJ88exktMphNvGFttUPtX99x
 rTK5eANbBL1f8UCQ6bZL+8nF/rnq3cYnxKxIR0GjLE8GTTAUH7A59UuQXIuWEzrku5DH
 9cyQ==
X-Gm-Message-State: AOAM533hBf2irTdn/c2Z5jf4RwiP9yPXCW+NI14eInMaxRA49GwU0xso
 9NAtW/Q0qkqeZjY7+LMFngoNcvlwCT+Q3wj8ayEqRA==
X-Google-Smtp-Source: ABdhPJx4logLjoFSvgZOZ7Au5M8nTXfH107v3sJvAOIOntuPqNy1JKkOGxGQcSTQ0MdSQaGiDVoz/fOzuqn8h557lh0=
X-Received: by 2002:a2e:a547:: with SMTP id e7mr3805831ljn.283.1603900516691; 
 Wed, 28 Oct 2020 08:55:16 -0700 (PDT)
MIME-Version: 1.0
References: <20201013063731.3618-1-jay.xu@rock-chips.com>
 <34840448.7XeAIBGaoL@diego>
In-Reply-To: <34840448.7XeAIBGaoL@diego>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 28 Oct 2020 16:55:06 +0100
Message-ID: <CACRpkdY8kRVJptQxCQNzbumjj-H+t-atJdguF39stukmiTfYyA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] rockchip-pinctrl fixes
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_115518_248817_DC129CFB 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBPY3QgMTMsIDIwMjAgYXQgMTA6MjIgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cgo+ID4gSmlhbnF1biBYdSAoMyk6Cj4gPiAgIHBpbmN0cmw6IHJvY2tj
aGlwOiBtYWtlIGRyaXZlciBiZSB0cmlzdGF0ZSBtb2R1bGUKPiA+ICAgcGluY3RybDogcm9ja2No
aXA6IGVuYWJsZSBncGlvIHBjbGsgZm9yIHJvY2tjaGlwX2dwaW9fdG9faXJxCj4gPiAgIHBpbmN0
cmw6IHJvY2tjaGlwOiBjcmVhdGUgaXJxIG1hcHBpbmcgaW4gZ3Bpb190b19pcnEKPgo+IGxvb2tz
IGdvb2QgdG8gZ28gYXMgZml4ZXMuCgpJIHJlY29yZCB0aGF0IGFzIEFja2VkLWJ5IDopCgpZb3Vy
cywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
