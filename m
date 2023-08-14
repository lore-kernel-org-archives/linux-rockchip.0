Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68FC1C001DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Aug 2023 11:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWAZif/kvdcWlfMTihllBJ9b7thJPSzA7sycgkjFd8w=; b=IVWE1m2di0arby
	3x9kiHFiRXtANCejfSTQTSjGI/1UuzUM5JYagAWsnmy7dDVkpDpLETdYEWBBiYcARI/b5HkcZ/FML
	zzAobiHDpdrYcL6BfrQdIYm1uvrYvZxAey84vSUkxoR9rEx6X00ua0/eNx6jGY4ypKD57P3wP36XZ
	Z7nQi0I+/P6kxaIalizCh0Wo4XObdk7+y3rLftAUMb1jqzWwmUpHN1DBVKuaXChApnUVW/BY2iIS2
	DRvh7OrzlUdZ6OhHgTmU05lRKEBITQzPtt4LsYxSahKhPDMEmXjwlj+R6Eb5vHApWhPYne3FyVo0M
	8ZG6NPWlejK82LmwNllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVW1Q-00GyzP-1I;
	Mon, 14 Aug 2023 11:46:08 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVW1O-00Gyyh-1G
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Aug 2023 11:46:07 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d35a9d7a5bdso4156051276.0
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Aug 2023 04:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692013565; x=1692618365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2P1gn77Ztxq7xPn+wQ0Fs/wFqOGj6ZlA2NPjSUCwZ3U=;
        b=fHU5HVcyteFyoy8ercb7Q0BmuyOD576qTt9aNQFaZu6+A8JckEDLK1IYmFkOJRPbnJ
         +1+tSXOAG6Dr1q8G/VBwED0SKGHQH0Pg0KyNvtnOuAHWrjto2N23ing7FZt1DfYYUnF6
         DcMnmV0kN0NSKr1RHMqqlJGefP2gYE4UHs5uhVLQRV9s/Nv6hc9u99mLlkNJAFqDAwoL
         J5AsFApAqVQ2tlZZ/89AWys/6npIRdu4JhrCgSv8GlB7gAA1wIlzlfu55UcAOw0qGrH5
         qh2sJ4BlGmYV1uUC2TMykqdfD/Q+8zBkH6NdWK6iBe/DF8HPCRoDRu3J0N5xnZt0Dp1k
         9feQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692013565; x=1692618365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2P1gn77Ztxq7xPn+wQ0Fs/wFqOGj6ZlA2NPjSUCwZ3U=;
        b=OJEAH7OvMp4AqJGrIiEA1HwoAMzd2V9+2O/3maxPm3sFz2Jt6JhcwdO+U9AVqeTHFv
         AsoGIMZX9HUhUIzqNmyffT3/nAxw3eW0NrmUggpumrrY0AHOgLp9qYt2ivpQGIdyhnZA
         EgNzv12ZQ/8iOICt5arCvyP1rUmxJCKgYkNEpRHB/IFlDwRK1U2Nv5m6+FDC07rILe9X
         RiIGcln10mgcAJL5dt1e0tPSBl74CBIGA1G7svJaL9wDcOPTRT6xs47Wh/3knDoRKRGv
         OI1yysvIycqO+F2C7mbfBEYN8G/VwTRfodyYfFacrrfnrq8Loolneel4Tu/oLsXtMsI7
         Zn7Q==
X-Gm-Message-State: AOJu0YwYxvr6xRptW8ETUMRPCSjKYniIFGT2F1aRBZxiWgNW7pnt9EWy
	veNtrR7Rx0csYaiQDb8WtI3PcMpuUVF0QYug5IIjDA==
X-Google-Smtp-Source: AGHT+IE52lkpTSCVEEuMCNFDfYTvvpD0HznuYfzxrW7Dx9SI0gi3S2xayhsie8DQkNLi3uASK7R4w3gQBDEN6QweWhM=
X-Received: by 2002:a25:dbc6:0:b0:d09:a5e8:8692 with SMTP id
 g189-20020a25dbc6000000b00d09a5e88692mr9932582ybf.45.1692013565501; Mon, 14
 Aug 2023 04:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230731110012.2913742-1-jagan@edgeble.ai> <20230731110012.2913742-2-jagan@edgeble.ai>
 <5699457.DvuYhMxLoT@diego> <3694249.5fSG56mABF@diego>
In-Reply-To: <3694249.5fSG56mABF@diego>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 14 Aug 2023 13:45:29 +0200
Message-ID: <CAPDyKFo=OWGSp00n7ihUuDv7ico6DPp73kYwU1rFf6GYLwKACA@mail.gmail.com>
Subject: Re: [PATCH 01/14] genpd: rockchip: Add PD_VO entry for rv1126
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Jagan Teki <jagan@edgeble.ai>, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_044606_428997_245D91E3 
X-CRM114-Status: GOOD (  15.26  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCAxMiBBdWcgMjAyMyBhdCAxNDo1NywgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cj4KPiBBbSBNb250YWcsIDMxLiBKdWxpIDIwMjMsIDIyOjQ4OjQ1IENFU1Qg
c2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiA+IEFtIE1vbnRhZywgMzEuIEp1bGkgMjAyMywgMTI6
NTk6NTkgQ0VTVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiA+IFBEX1ZPIHBvd2VyLWRvbWFpbiBl
bnRyeSBpbiBSVjExMjYgYXJlIGNvbm5lY3RlZCB0bwo+ID4gPiAtIEJJVV9WTwo+ID4gPiAtIFZP
UAo+ID4gPiAtIFJHQQo+ID4gPiAtIElFUAo+ID4gPiAtIERTSUhPU1QKPiA+ID4KPiA+ID4gQWRk
IGFuIGVudHJ5IGZvciBpdC4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AZWRnZWJsZS5haT4KPiA+Cj4gPiBSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KPiA+Cj4gPiBAVWxmOiBub3cgdGhhdCB3ZSBoYXZlIGEgZ2VucGQgc3Vi
c3lzdGVtLCBJIGFzc3VtZSB5b3UncmUgZ29pbmcKPiA+IHRvIHBpY2sgdXAgdGhpcyBwYXRjaCwg
cmlnaHQ/CgpZZXMsIHRoYXQncyB0aGUgaW50ZW50LiBBdCBsZWFzdCBhZnRlciB2Ni42LXJjMS4K
Cj4KPiBMb29raW5nIGF0IG90aGVyIHNvYyB0cmVlcywgaXQgbG9va3MgbGlrZSBnZW5wZCBjaGFu
Z2VzIHJpZ2h0IG5vdyBhcmUKPiBvZnRlbiBzdGlsbCBnb2luZyB0aHJvdWdoIHRoZXNlIC4uLiBz
byBJJ3ZlIGdvbmUgZm9yd2FyZCwgbWVyZ2VkIHRoZQo+IGdlbnBkIHNoYXJlZCB0YWcgYW5kIGFw
cGxpZWQgdGhpcyBwYXRjaCBvbiB0b3AgaW4gbXkgcm9ja2NoaXAgZHJpdmVycwo+IGJyYW5jaC4K
ClRoYXQncyBmaW5lLiBXZSBhcmUgaW4gYW4gaW50ZXJtZWRpYXRlIHBoYXNlLCBzbyB0aGluZ3Mg
YXJlIGJlaW5nCnF1ZXVlZCBib3RoIHZpYSB0aGUgc29jIHRyZWVzIGFuZCB0aGUgZ2VucGQgdHJl
ZS4KCkkgYW0gcGxhbm5pbmcgdG8gc2VuZCBhIHB1bGwtcmVxdWVzdCB0byBMaW51cyBmb3IgdjYu
Ni1yYzEgdG8gbWFrZQpzdXJlIHRoZSBkZWx0YSB0aGF0IGhhc24ndCBhbHJlYWR5IGJlZW4gcHVs
bGVkIGJ5IEFybmQgZ2V0cyBpbmNsdWRlZAp0b28uIElmIHlvdSBtZXJnZSB0aGUgaW1tdXRhYmxl
IGJyYW5jaCwgeW91IHNob3VsZCBoYXZlIHRoZSBuZWNlc3NhcnkKcGFydHMuCgpLaW5kIHJlZ2Fy
ZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
