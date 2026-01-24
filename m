Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB8F0D715E2
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Jan 2026 23:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHlFjEmiZIyRTjMeaYw3zBwnrishR5Iz4FcTIyX9Eaw=; b=CrSxOLtoxKw3bp
	H74TzDFm+64U5kUc/ryHBLaznmYklZf2HxfNwjkaxaNko8+RQDeC6uLr4c3xIepqsP26yktLZccIo
	P/OUaH3d5BTBIE7BqQ99Ci2hgFbkVXAht4pDr66IqkVSws1a4G2f/LVwwOgwoUpXLX5o6NRhAO4pf
	aREbpVbTOIDCVSFSbntqGbZ54bUFIfp8FxPFkWCvqYguD4MJVk/+5DbeL4pI25YpuisqVHulKY/3G
	0yXdnUQddhfHtp7/oOSXRT+MisAdj0Tqj7HzDsmcLRFtrl1l8hLq00FswcB/DVwN+5UVeSoeoNNx4
	8wXS2FTDtSwwz9qqwrBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjnQa-0000000Ai0C-3QO2;
	Sat, 24 Jan 2026 23:52:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjnQY-0000000AhzU-1oa8
	for linux-rockchip@lists.infradead.org;
	Sat, 24 Jan 2026 23:52:27 +0000
Received: by mail-ed1-x542.google.com with SMTP id 4fb4d7f45d1cf-64b9cb94ff5so4712560a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Jan 2026 15:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1769298743; x=1769903543; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PIfml6cmBSDqptc9LOz4z9hdECIJ2oI0juXYl4HG5Xk=;
        b=kv2nM6d8TtgadfHJeBVKGIaY/wDSWibIJO86yy33XV6JtPsprZYJjncPf8gRbiAEUU
         yzwvCxvBA9jM+QxA8ZR2MJraZ1pNo0b0IyyYJX8FTtY3Nd0RQaS6xU1iCAt/Neh7J3oL
         tJQ5wu78soGo4sg9kptV4uZ5EQ4EKneAbUHy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769298743; x=1769903543;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PIfml6cmBSDqptc9LOz4z9hdECIJ2oI0juXYl4HG5Xk=;
        b=ozt6J974OjTzCEr/yGQszaifRI71KEEk/pzMglqyvZVPBItCMLCZrM3wKAkQ87sy/3
         YLrm5caC50jSU7VQ/yJOw28Fdf71XVPaLe0/BeBX1VxTwL3woSWSVuUkpZVIHTpD3oqI
         F3tGMb76nJOqvzHICPTEgIxNjyxAN8xeEsT6j8iNLETJoaH31BifV/7kM9XTRfsehAiv
         Nteuxnm5NB2fHs66V8HNE1wwUA8JOHg63filCuOI48yYQcqror6Cbz6DFLRxhP2BDVEV
         AC1ZAG/3v3K1Jc0agA/VXuDrsoMa7n9ZPfZHrnSDNIFT8/jkEIOoE10js+BJfCJmuSTK
         fF4g==
X-Forwarded-Encrypted: i=1; AJvYcCXHT114/athrcVcfwjhTbakxbmVHU4yiFxSSQVxCAJgPjHVC7U1rWhgWgEsINFEJz/RqLgLQQsORYeOFrbLUQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwpdrBE33LClRjX8eWOwMCyUCj4Sg8M/W5ahW+DER+KxoZFKrUV
	EOoHt1y3AD54FrKCp0LpUqiLHJktJezj/5YbY6kb+TE6QDxdJpdLlg9kNgO9gSCEkUsznjsf33J
	UeeDsnuol
X-Gm-Gg: AZuq6aKeVKLY0wLveJhXHMqKYvOe0fd0FMgX+rZ2noxM1mK3nYy2NYLoODgqwQarT/B
	KJFLIiHCgiS513CL/2YEGnKLYHyyNirhyxBjZdzCk3dXXbf5EE+WEmTOq+NRH2L2N5yLjzNIzIw
	VqADJaMoN+o8jdbshKN4Hg5KDdJW4ctocfM5b3fCkLOhPTQSkRbdHgbdSjbbeic83JSB9eJVwyV
	g3AEuDtKb6D2C+O2aC/ldLb02RgbhI80zrIygzhyJtQS2UBCq0hoBTC23XCkL2bN+Fd6rgEkvuL
	1XFNl9IX4Dp0lXQJjuA9HRYwur7zn+ymjpC28j9BCT5iltdAHnjQU5fyd5wxphR7ubaVgwptyTf
	CAZaCt2F+yHDjNC13xucP2Y0glA9SsI/A6MvwymxvZlMvn/qzKQG3hUatUZx8f4umq2JmUbNFG/
	echRkoj+15AwEt4HXXjnpTzDB/dR0CopUFEl/RYo8SIMqamjAmgg==
X-Received: by 2002:a05:6402:5106:b0:658:1552:5122 with SMTP id 4fb4d7f45d1cf-658706c5592mr167180a12.17.1769298742840;
        Sat, 24 Jan 2026 15:52:22 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b3ea49asm2618494a12.11.2026.01.24.15.52.21
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Jan 2026 15:52:21 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so38308305e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Jan 2026 15:52:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXO3C6Yuits9pDqMaXf4ULBNHjKOXW8iiN3sf6DccnEMbGw6ZghO1yKsSfVHDO9NEPSeU0ge7zKGh3HaUIDHA==@lists.infradead.org
X-Received: by 2002:a05:600c:64cf:b0:47d:403e:9cd5 with SMTP id
 5b1f17b1804b1-4805ce4dcc4mr3092475e9.11.1769298741403; Sat, 24 Jan 2026
 15:52:21 -0800 (PST)
MIME-Version: 1.0
References: <cover.1769191673.git.robin.murphy@arm.com> <a00a59dcef3693efb02a8ee942848fbeaeaf05ba.1769191673.git.robin.murphy@arm.com>
In-Reply-To: <a00a59dcef3693efb02a8ee942848fbeaeaf05ba.1769191673.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 24 Jan 2026 15:52:10 -0800
X-Gmail-Original-Message-ID: <CAD=FV=ViHWqjMGfYFgHBNRY-ex2vZjMaYoYLJb=vcUfPQRb9FA@mail.gmail.com>
X-Gm-Features: AZwV_QgqvLshh6AyFk-0oo1A1QJCI8IT1Nk4fy1OUz5UpJUZH977eNP0Jn9jIQc
Message-ID: <CAD=FV=ViHWqjMGfYFgHBNRY-ex2vZjMaYoYLJb=vcUfPQRb9FA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] drm/panel-edp: Move FriendlyELEC HD702E
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260124_155226_486013_B1331772 
X-CRM114-Status: GOOD (  13.91  )
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

SGksCgpPbiBGcmksIEphbiAyMywgMjAyNiBhdCAxMToyMuKAr0FNIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gRnJpZW5kbHlFTEVDJ3MgSEQ3MDJFIG1vZHVs
ZSBpcyBhbiBlRFAgcGFuZWwgKGluIGFzIG11Y2ggYXMgaXQncyBzb21lCj4gTFZEUyBMQ0QgYmVo
aW5kIGEgQ2hyb250ZWwgQ0g3NTExQiBlRFAgYnJpZGdlKSwgc28gbW92ZSBpdHMgZGF0YSBvdmVy
Cj4gdG8gdGhlIGVEUCBkcml2ZXIsIGFsc28gcmVzb2x2aW5nIHRoZSB3YXJuaW5nIGFib3V0IHRo
ZSBtaXNzaW5nIGJwYwo+IHZhbHVlIGluIHRoZSBwcm9jZXNzLgo+Cj4gVGhlIHVuZm9ydHVuYXRl
IGNvbWJpbmF0aW9uIG9mIEhQRCBub3QgYmVpbmcgd2lyZWQgdXAgYW5kIHRoZSBSSzMzOTkgZURQ
Cj4gY29udHJvbGxlcidzIGJlaGF2aW91ciBzZWVtcyB0byByZXN1bHQgaW4gdGhlIEVESUQgbm90
IGJlaW5nIHJlYWRhYmxlCj4gb3ZlciBEUC1BVVggd2l0aG91dCBwcm9iaW5nIHRoZSBwYW5lbCBm
aXJzdCwgdGh1cyB0aGUgaGFyZC1jb2RlZCBtb2RlIGlzCj4gc3RpbGwgbmVlZGVkIHRvIGdldCB0
aGluZ3MgZ29pbmcuCj4KPiBSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ry
b25nQGxpbmFyby5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT4KPiAtLS0KPiB2MjogQ2xhcmlmeSBpc3N1ZSB3aXRoIHRoZSBnZW5lcmljIGJp
bmRpbmcKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jICAgIHwgMjYg
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVs
LXNpbXBsZS5jIHwgMjUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDI2IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IERvdWds
YXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KCkknbGwgcGxhbiB0byBhcHBseSBw
YXRjaGVzICMxIGFuZCAjMiBpbiB+MSB3ZWVrIHRvIGRybS1taXNjLW5leHQgaWYKdGhlcmUgYXJl
IG5vIG90aGVyIGNvbW1lbnRzLiBJZiBzb21lb25lIGVsc2Ugd2FudHMgdG8gYmVhdCBtZSB0byBp
dCwKdGhvdWdoLCBJJ20gYWxzbyBPSyB3LyB0aGF0LgoKLURvdWcKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
