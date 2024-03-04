Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FD0AC5478C
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 11:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Av3ONGb8RXhUcUZJ9GnncmxbFn1A7OzrQe2NAn8oKVg=; b=pM7lEq8g1Lke2X
	Q3BXAFm6ucFnm4Ot1EIDRQNFAXYMfFny0BXdtx05cT7HF4gu1kn29qaEngtcjR1e4y7XI9kGfi/4a
	ky1f29CnGhfsfZxw6OmXXDf8/u8iiRgD1KBmIFVGtULdI0TcHygCLNRoStWooi9Y0lIjLTFOzYHoS
	vXZtv8iaZzMGj4at/lt7JtGFITc+fafjLc5D7L/ABxeVScMkXehplqI1tXWslTf4vzD3gvZh4NV/+
	eYdE5JUxU72bJ7jwHqQIzGGs0jEWVhw0m1+eqCAYX6ewy2RdVhwM10czHv8c3SYmBTDJS1XghvzRR
	FNZtgnKdQIO/fSbbAfVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh6bC-00000008q9G-0iuG;
	Mon, 04 Mar 2024 11:35:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5F7-00000008Xes-3vUO;
	Mon, 04 Mar 2024 10:08:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 71BAC60E08;
	Mon,  4 Mar 2024 10:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2424DC433F1;
	Mon,  4 Mar 2024 10:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709546886;
	bh=46Jx6AT1/o6p7H91xYBsT3Uh+eulEJeAciCWRan3b4Y=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=OE1PZGdOa+UDkNU9R5hOn5U+ZSxg/dB1bVTxTffqczAaBC2KIeZtkgShEM70MOzkv
	 amItPqY51B8Rc44DsH7pE/m7hPMRKTs2zlg5eR6ApJLuVsTwSJQ8jG2KOsPDTZWiIR
	 ZxzYzbkYGsIkWGxz4ZFJWY//gGIDeIlJY6GGjVd/dQTO3C26HiW+Zo5U+hGbbT2CpB
	 OIyK9Sb8xpgcFx4mXcn0KIuuPl1e3q7r0RP2UVtgSc13NuOKCgoOLsKUR3odVpL6fp
	 wqtG0iVIi0tKJCOO1Ka7PTjM1fY2QqPfO6+5YUL58OOXCjpmn2UWiqSYGrRVNm6Zu2
	 tC8zD/su0lN4g==
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5c66b093b86so4186661a12.0;
        Mon, 04 Mar 2024 02:08:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXGo6li5//8ncddaR74GkPrEXHMcarJYoOFPQSOjmeHD4fan3QHg9afluMpRxZqNnL0t0qhmAedJtPCnAPrPoQ4NlQyYpCFOAZ7UDEnhFExdEf1vV7iAAN52FDvFQxjmaybIvqnnJBCsmBaNI1YpqCb+giATGgY8Xk=
X-Gm-Message-State: AOJu0YzEyeb+MDZUPwqMllz4XtirZTqDTWISQCRhGJAy4LCOar1oCZ1L
	cElaFTBKKArqCgZ+be2IeiHJvTSN5k9uxz4sf122X/6BO6i3PwmalHMVUWa8JTeMxu2oTQyN9vu
	X13kFWvvmIlQ8j/1M1J7L8NIv8Gk=
X-Google-Smtp-Source: AGHT+IGLWaWH/1OuLQTSCRHqS4xfe11XbLsnIkhfYtUKy//CPSvUkWrs2Yr11zmUqxGDdUaWdbby+/xd77TZ1p9C060=
X-Received: by 2002:a17:90b:4d91:b0:296:f2d5:6567 with SMTP id
 oj17-20020a17090b4d9100b00296f2d56567mr11535077pjb.4.1709546885655; Mon, 04
 Mar 2024 02:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20240304084612.711678-2-ukleinek@debian.org>
In-Reply-To: <20240304084612.711678-2-ukleinek@debian.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 4 Mar 2024 18:07:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
Message-ID: <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_020822_201188_52008E8B 
X-CRM114-Status: GOOD (  21.82  )
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

T24gTW9uLCBNYXIgNCwgMjAyNCBhdCA0OjQ34oCvUE0gVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVp
bmVrQGRlYmlhbi5vcmc+IHdyb3RlOgo+Cj4gV2hpbGUgaXQgcmVxdWlyZXMgdG8gaGF2ZSB0aGUg
cmlnaHQgcGh5IGRyaXZlciBsb2FkZWQgKGkuZS4gbW90b3Jjb21tKQo+IHRvIG1ha2UgdGhlIHBo
eSBhc3NlcnRpbmcgdGhlIHJpZ2h0IGRlbGF5cywgdGhpcyBpcyBnZW5lcmFsbHkgdGhlCj4gcHJl
ZmVycmVkIHdheSB0byBkZWZpbmUgdGhlIE1BQyA8LT4gUEhZIGNvbm5lY3Rpb24uCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dWtsZWluZWtAZGViaWFuLm9yZz4KPiAtLS0K
PiBIZWxsbywKPgo+IEFuZHJldyBhbHJlYWR5IHBvaW50ZWQgb3V0IHdoZW4gSSBwb3N0ZWQgdGhl
IHBhdGNoIGludHJvZHVjaW5nIHRoZSBnbWFjMCBub2RlCj4gdGhhdCByZ21paS1pZCB3b3VsZCBi
ZSB0aGUgcHJlZmVycmVkIHdheSB0byBzZXR1cCB0aGluZ3MuIEJhY2sgdGhlbiB0aGlzIGRpZG4n
dAo+IGhhcHBlbiBiZWNhdXNlIHRoaXMgY2hhbmdlIGJyb2tlIHJlY2VwdGlvbiBvZiBuZXR3b3Jr
IHBhY2tldHMuIEhvd2V2ZXIgdGhpcwo+IG9ubHkgaGFwcGVuZCBiZWNhdXNlIEkgZGlkbid0IGhh
dmUgdGhlIHJpZ2h0IHBoeSBkcml2ZXIgbG9hZGVkLgoKSXQgY291bGQgYmUgdGhhdCB0aGUgUEhZ
IGlzIHN0cmFwcGVkIHRvIG5vdCB1c2UgaXRzIGludGVybmFsIFJYIGRlbGF5LgpBbmQgdGhlIFBI
WSBoYXMgc29tZSB3ZWlyZCBkZWZhdWx0IFRYIGRlbGF5LCBzbyBoYXZpbmcgdGhlIGRyaXZlcgpw
dXQgc29tZSBzZW5zaWJsZSB2YWx1ZXMgaW4gaXMgcHJvYmFibHkgYmV0dGVyLgoKQ2hlbll1Cgo+
IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXFuYXAtdHM0MzMuZHRzIHwgNCArLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCj4gaW5kZXggNmE5OTgxNjYwMDNjLi4zNmFkNDhk
NDZiYzEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
cW5hcC10czQzMy5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC1xbmFwLXRzNDMzLmR0cwo+IEBAIC0yMCwxNSArMjAsMTMgQEAgJmdtYWMwIHsKPiAgICAgICAg
IGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDA+LCA8MTI1MDAwMDAwPjsKPiAgICAgICAgIGNsb2Nr
X2luX291dCA9ICJvdXRwdXQiOwo+ICAgICAgICAgcGh5LWhhbmRsZSA9IDwmcmdtaWlfcGh5MD47
Cj4gLSAgICAgICBwaHktbW9kZSA9ICJyZ21paSI7Cj4gKyAgICAgICBwaHktbW9kZSA9ICJyZ21p
aS1pZCI7Cj4gICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAgICAgICAgcGlu
Y3RybC0wID0gPCZnbWFjMF9taWltCj4gICAgICAgICAgICAgICAgICAgICAgJmdtYWMwX3R4X2J1
czIKPiAgICAgICAgICAgICAgICAgICAgICAmZ21hYzBfcnhfYnVzMgo+ICAgICAgICAgICAgICAg
ICAgICAgICZnbWFjMF9yZ21paV9jbGsKPiAgICAgICAgICAgICAgICAgICAgICAmZ21hYzBfcmdt
aWlfYnVzPjsKPiAtICAgICAgIHJ4X2RlbGF5ID0gPDB4MmY+Owo+IC0gICAgICAgdHhfZGVsYXkg
PSA8MHgzYz47Cj4gICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4KPgo+IGJhc2UtY29t
bWl0OiA2NzkwOGJmNjk1NGI3NjM1ZDMzNzYwZmY2ZGZjMTg5ZmMyNmNjYzg5Cj4gLS0KPiAyLjQz
LjAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
