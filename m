Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00BE2CD11DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 07:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZF7CrZ20pVwlfSJ/FAS3e3fYGVcT7LuOKeCdJsWxp0=; b=PC7HF5MfM3jevQ
	PbiRRKZ90BnhO8Kybh0ZaBXp+DTyIyOvPJKAK0Pf78fij8f79DIM+Kcc59xuHEGpqiGyrOyvGmC3x
	Bo14n5x7a2NqVUsyTjvuGIf/paSX9Lvz0z/LQIlUGAomk5gPgWUxHljYV3HOQ8J8ITiR/LveG1LNZ
	U3j8O1jWt+dspJyRvoQ+nBuuZ5YGQAtzzU6tI6rZIq68htG00VP8egnEkg+sAL15/2CSU5skeNMPn
	X2p9w5H/wUwUyZeClFfZj1vNw3fNzNdtMapnRQKBPQwbAlOUDBGXmPoD4pxVnr3arBfSajCjoUR5X
	3UnCllcjVpuGvavKyz8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpkR6-0000000CvWq-1Tzy;
	Thu, 28 Mar 2024 07:44:32 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpkR2-0000000CvVp-3I7r;
	Thu, 28 Mar 2024 07:44:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 092DACE249F;
	Thu, 28 Mar 2024 07:44:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B581C433C7;
	Thu, 28 Mar 2024 07:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711611866;
	bh=rsW713L6NZekmOoVcJVtU8yCHsKQyzRJjtC7motQbGo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=BoinFanISIerriuVlF6xTZ/QbfkQ4l4UCuna99cZDP4iKmpRCCIQVbJ6vgIKG1D3F
	 84zwpm7whTp+yHJtSgWY8tJAFyWK6CsN3bbRAL5wEhOQgkr6IRp0xTMn48w9BqbX9n
	 nthaQ4QX/yY6yF8kPuQmd26yrcK6bv91vi+zWxV8FyQmgLJEmQ8qRjag8Kq4AODQVx
	 dEvm33p1nehz7lY9eR669ZN72oXLAuJG5COwAXnYwMPNC2OdOcFJIAZdyzIeCe0MZ2
	 Du9edWxDOnBDosezes/WaKhd5NlTVgFNJU4qh/3fr/B5qCnOEGtr1olR4rpBbWtgpq
	 ipZDPvxUkqdDQ==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d6c9678cbdso7219311fa.2;
        Thu, 28 Mar 2024 00:44:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXz8VXtPRtdk0BDfRvLagu7iLsL6oRCDTp3uoUSlsG+XMQHgLYgzJRdLkpmrYES+PQQazolPb2Al1HaofvwuD5RdduOe4Q34IERVC0As2j/Kw4wP9NyfCE4GIaaHqJYaP9Ij0Njnody/piPeXYmBQG9P37VdNIGNkk=
X-Gm-Message-State: AOJu0YwO6rLA7qWncJpFnQYgTNbjS/SEVX5LZzcJjiS8uY6RnzRg8Iay
	C1qmvNtrYeauzRrohHQx6ZFXrFqSfoee8QHVk/P0Ntf3Zqleduzo0pwHnPkiKqqHXTTF8ruGP5d
	tFyEXeafJellUiSsUWtyxjg4ZHKc=
X-Google-Smtp-Source: AGHT+IH/ggOEZcR73/h+xKMWYkVaJmvS45/mU9XSwGPJV0h7bFkb82lRzycfbQybpn9n+ArZ6qPfk2jpJSl4YQ4WRNM=
X-Received: by 2002:a2e:99d3:0:b0:2d6:f127:f5e7 with SMTP id
 l19-20020a2e99d3000000b002d6f127f5e7mr1550018ljj.21.1711611864681; Thu, 28
 Mar 2024 00:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240327192641.14220-1-dev@folker-schwesinger.de>
 <20240327192641.14220-2-dev@folker-schwesinger.de> <CAGb2v64cF2fuW7vKq_=AhY+ciAp8t=fxT23AFJWB1qOv1xWuNw@mail.gmail.com>
 <D05701GE187C.3VLOERXP8B3NR@folker-schwesinger.de>
In-Reply-To: <D05701GE187C.3VLOERXP8B3NR@folker-schwesinger.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 28 Mar 2024 15:44:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v65M5Zv73UKwEtmK=-MgDuubjKFA=R-bxceh+uL3iPuG6Q@mail.gmail.com>
Message-ID: <CAGb2v65M5Zv73UKwEtmK=-MgDuubjKFA=R-bxceh+uL3iPuG6Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add enable-strobe-pulldown to
 emmc phy on ROCK Pi 4
To: Folker Schwesinger <dev@folker-schwesinger.de>
Cc: Vinod Koul <vkoul@kernel.org>, Yogesh Hegde <yogi.kernel@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Christopher Obbard <chris.obbard@collabora.com>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_004429_198061_1194B4D5 
X-CRM114-Status: GOOD (  14.97  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBNYXIgMjgsIDIwMjQgYXQgMzowOeKAr1BNIEZvbGtlciBTY2h3ZXNpbmdlcgo8ZGV2
QGZvbGtlci1zY2h3ZXNpbmdlci5kZT4gd3JvdGU6Cj4KPiBPbiBUaHUgTWFyIDI4LCAyMDI0IGF0
IDY6MzkgQU0gQ0VULCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiA+IEBAIC02NDgsNyArNjQ5LDgg
QEAgJnNhcmFkYyB7Cj4gPiA+ICAmc2RoY2kgewo+ID4gPiAgICAgICAgIG1heC1mcmVxdWVuY3kg
IDwxNTAwMDAwMDA+Owo+ID4gPiAgICAgICAgIGJ1cy13aWR0aCAgPDg+Owo+ID4gPiAtICAgICAg
IG1tYy1oczIwMC0xXzh2Owo+ID4KPiA+IFNob3VsZG4ndCB0aGlzIGJlIGtlcHQgYXJvdW5kPyBU
aGUgbm9kZSBzaG91bGQgbGlzdCBhbGwgc3VwcG9ydGVkIG1vZGVzLAo+ID4gbm90IGp1c3QgdGhl
IGhpZ2hlc3Qgb25lLiBTYW1lIGZvciB0aGUgb3RoZXIgcGF0Y2guCj4gPgo+Cj4gVGhpcyBpcyBu
b3QgbmVjZXNzYXJ5LCBtbWMtaHM0MDAtMV84diBpbXBsaWNpdGx5IGFjdGl2YXRlcyB0aGUKPiBj
b3JyZXNwb25kaW5nIEhTMjAwIGNhcGFiaWxpdHksIHNlZSBkcml2ZXJzL21tYy9jb3JlL2hvc3Qu
YzoKPgo+IGlmIChkZXZpY2VfcHJvcGVydHlfcmVhZF9ib29sKGRldiwgIm1tYy1oczIwMC0xXzh2
IikpCj4gICAgICAgICBob3N0LT5jYXBzMiB8IE1NQ19DQVAyX0hTMjAwXzFfOFZfU0RSOwo+IC8q
IC4uLiAqLwo+IGlmIChkZXZpY2VfcHJvcGVydHlfcmVhZF9ib29sKGRldiwgIm1tYy1oczQwMC0x
Xzh2IikpCj4gICAgICAgICBob3N0LT5jYXBzMiB8IE1NQ19DQVAyX0hTNDAwXzFfOFYgfCBNTUNf
Q0FQMl9IUzIwMF8xXzhWX1NEUjsKCkxvb2tpbmcgYXQgdGhlIGluaXRpYWwgY29tbWl0IGZvciBh
ZGRpbmcgdGhlIGhzNDAwIHByb3BlcnRpZXMsCml0IHdhcyBhbHNvIG1lbnRpb25lZCB0aGF0IGhz
NDAwIHN1cHBvcnQgaW1wbGllcyBoczIwMCBzdXBwb3J0LgpJdCBqdXN0IHdhc24ndCBleHBsaWNp
dGx5IHNwZWxsZWQgb3V0IGluIHRoZSBiaW5kaW5ncy4KCkluIHRoYXQgY2FzZSwgSSB0aGluayB3
ZSdyZSBnb29kIGhlcmUgZm9yIHRoaXMgcGFydGljdWxhciBjYXNlLgoKPiBLaW5kIHJlZ2FyZHMK
Pgo+IEZvbGtlcgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
