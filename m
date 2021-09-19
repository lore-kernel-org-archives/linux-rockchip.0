Return-Path: <SRS0=i330=OJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2D26C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Sep 2021 14:47:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ABEBA6126A
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Sep 2021 14:47:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ABEBA6126A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaciqUmEyZUWs8NSj1KaaGReT8C+ytkhJFHsmJkLA7w=; b=Kk+vSMY9VCzmYQ
	mmxWJ7URD8ShcrkOceEZB2BPEnKE+j4SMdXNdtsDnbhSIoSl8iCL/MlkFtCUn7MMRNxroHgjAy1eF
	7/FY8AL4rFgcj9ST2DJsqO8uEfBn0/ssQBANYfwv1QazTHBjtz5MIKwl4TueUOREvxTBj86oLU+rv
	AkA1vxQO+WS3Cw1mNWFyKI0HBJSoUrIvmC+EM+sh6wL2DOuOXjE18Ecg6WRj0HMRcIo55r0/GKgjP
	Mdu9gnzjWKU5hWXZNkcW7vRadz7DbEhv9ImECKRsalaYZK+kgzo77D6X2KimPcZWa9JIckTfazZFl
	tiIHI4kct2E4gbLc3e7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRy6U-00HPjW-0R; Sun, 19 Sep 2021 14:47:38 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRy6R-00HPih-6s
 for linux-rockchip@lists.infradead.org; Sun, 19 Sep 2021 14:47:36 +0000
Received: by mail-lf1-x129.google.com with SMTP id z24so29425136lfu.13
 for <linux-rockchip@lists.infradead.org>; Sun, 19 Sep 2021 07:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lmDmi4ftibwcwvQEbdJqNW7006uN+Sn0ovT9xUpowbg=;
 b=n7L0J9pPStqtmw9pJSM4IYMMGi2K9h8R0s8soWPd7QUE6OYVsQlwZZkeR6yHOQO8OC
 8TSo0XugMgqobFzoL0iQo19lJm7TBB+dZZym756y/Nb0pX0/ftTfpPnVaDudGWQWhWof
 D8WrVCCXydGQXup/Z/u3tB3sMrAaKAJv6kqh2ka5aFrJ0xBsvfgD3APBhlRPirqbVVAo
 XZEJNarW8ldkljJ4349eSFvKfU28GIjx/PghKlXYOu+ID5HycZahCTd0kHog3QQAHu1C
 u6FjRpVxKY8yacZ0CdaaghgJrM3c420Ct/h9QEEK0gjaEpTayKiTRg1Ce6An73C4vS4j
 Uz+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lmDmi4ftibwcwvQEbdJqNW7006uN+Sn0ovT9xUpowbg=;
 b=nvJ7bOrfzKPpC2XfVK+5EiZXSnsCKa9xIAZcfri3Ax14esq75zY1hcn8fL1LsINGa0
 7PjZfE7QCSQfGZJy+mgTBgrWahVD33/kCwS8lMEuCrzdt/mQXsk0zZ9wQDRGtA4p40RE
 TbuSN0uVxhV82Py2O60OsnMeHatGhXCMXyEmlYJIoITAtOHqpjPR3uSj1M/rQjwu21p0
 9lKs/aqP0aIqkCjOWug+UoCi9+VgbOTyS7R4Wd72NVvcvb40X9gB5nLu+DckiEVKFEMZ
 /ylW/usUNg+z0WX073j5XG6k1QfSybTT1BTFr/S0h5PEwgWaL7mbD18WbvUPc95EGkNM
 csfw==
X-Gm-Message-State: AOAM532wO1NxI3lNjwrrJZbM3883cBlN3peHR4EvrMpQ946ZC0DPhVKQ
 ou2Vw5FrHHNuGHoTJyTMLWvf65yZBFdo4MM+XglowQ==
X-Google-Smtp-Source: ABdhPJwXnTjXl0i8JlJQlNjJu8tA3ja58MlRNxYCL22486ltOyGOxvhIR5XFzp5T4vRuXB22kODXEPpoqdt/anIjpJ0=
X-Received: by 2002:a05:6512:3c92:: with SMTP id
 h18mr15315667lfv.656.1632062852495; 
 Sun, 19 Sep 2021 07:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210913224926.1260726-1-heiko@sntech.de>
 <20210913224926.1260726-5-heiko@sntech.de>
 <CACRpkda2Hc6E27LK=vH_qKkTayG3qP=BGdqBKyLR2dMhekyWTw@mail.gmail.com>
 <1992229.jx4eJSTThl@diego>
In-Reply-To: <1992229.jx4eJSTThl@diego>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 19 Sep 2021 16:47:21 +0200
Message-ID: <CACRpkdYmfYmQpc6+bnpqaiQGrgH7gcBK-fgZ7VjTHGwPHULyCQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] gpio/rockchip: fetch deferred output settings on probe
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210919_074735_319270_D1D88946 
X-CRM114-Status: GOOD (  11.16  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBTZXAgMTgsIDIwMjEgYXQgMjowMCBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKCj4gVGhlIGlzc3VlIGlzIHRoYXQgdGhlIHBpbmNvbmYgcGFydCBmb3Ig
UElOX0NPTkZJR19PVVRQVVQgaXMgYWN0dWFsbHkKPiB1c2luZyB0aGUgZ3BpbyBjb250cm9sbGVy
IHRvIHJlYWxpemUgdGhpcyBzZXR0aW5nLiBTbyB3aGVuIHRoaXMgZW5kcyB1cAo+IGluIGEgcGlu
Y3RybC1ob2csIHN0dWZmIGV4cGxvZGVzIHdoaWxlIHByb2JpbmcgdGhlIGZpcnN0IHBpbmN0cmwg
cGFydC4KClRoZSBOb21hZGlrIGRyaXZlciBoYXMgc29tZXRoaW5nIHNpbWlsYXIsIEkgY2FtZSB1
cCB3aXRoIGEgc29sdXRpb24KYWdlcyBhZ28gd2hpY2ggaXNuJ3QgZWxlZ2FudCBlaXRoZXIsIHNv
IGl0J3Mgbm90IGxpa2UgSSdtIGFueSBiZXR0ZXIgOi8KCmNvbW1pdCBhYjRhOTM2MjQ3NTYxY2Q5
OTg5MTNiYWI1ZjE1ZTNkM2VhZWQxZjllCiJwaW5jdHJsOiBub21hZGlrOiBhc3N1cmUgR1BJTyBj
aGlwcyBhcmUgcG9wdWxhdGVkIgoKPiBUaGlua2luZyBhYm91dCB0aGlzLCB0aGUgY29tcG9uZW50
IGZyYW1ld29yayBtYXkgYmUgb25lIG9wdGlvbj8KPiBBbmQgdGhlbiBhZGRpbmcgYSBwaW5jdHIt
cmVnaXN0ZXIgLyBpbml0K2VuYWJsZSB2YXJpYW50IHdoZXJlIHRoZQo+IHBpbmN0cmwgaG9ncyBj
YW4gYmUgYXF1aXJlZCBzZXBhcmF0ZWx5LCBub3QgYXMgcGFydCBvZiBwaW5jdHJsX2VuYWJsZT8K
CkNoZWNrIG91dCBteSBjb21taXQsIGJ1dCB0aGUgY29tcG9uZW50IGZyYW1ld29yayBpcyB3aGF0
IHdlCnNob3VsZCBpZGVhbGx5IHVzZSAoSU1PKSB3aGVuIGRyaXZlcnMgZGVwZW5kIG9uIGVhY2gg
b3RoZXIKc28gSSB0aGluayB5b3UgYXJlIHJpZ2h0LgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
