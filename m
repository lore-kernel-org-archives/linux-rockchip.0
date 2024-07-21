Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC87C3DA61
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 13:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBKb2oc+JlkvYtWJp3CUMvlrnUcyJEN0GUYBrnol6yM=; b=ERUEPoOdZnf5ja
	R4aF7aL2Ap2f+uI8koTb3ohIjKC/h06qCal24+prwSpyeOsNFf0IEsMz9vxfi71jG/X+XIaAoxv9F
	+4X10gsm1KjSOGr2pJ6HwtKejJ+cr0sMCD21s78Ihj4PpkCUR2rGwfnL2MRD7lXYnrS/sEgAXkxqd
	+ZnbSuUqPZRLNFmXg08JYRuk7LZyES6HFDdiGuKQbYgnSr64pFAOH7LeB1DQLQVdiTfJiErwDxPLp
	iBKcqywhWeKwmljpo3YonHolgKd9AAoDry/g9yqFo5uSb4OYypeVSVfiByoCc7JT5mgUArJJGawlv
	u3Cwlv77S5DOr7iGX2Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVWyV-00000006w2b-1sRA;
	Sun, 21 Jul 2024 13:51:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVWy8-00000006vyL-1R1y;
	Sun, 21 Jul 2024 13:51:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8646DCE0A1E;
	Sun, 21 Jul 2024 13:51:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68EA6C116B1;
	Sun, 21 Jul 2024 13:51:17 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="ngGG6Hll"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1721569874;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UuD2foEERRRpEhFk8ZpQ8lRWoO79GE6pHriVooejuIw=;
	b=ngGG6HllAsmUjM+fx3uyRcPRHmks6sJel+U0fBxaOkvB5fE8YSyKCzj5BeP6XKpaiSG4is
	Bzc8OPpH0NkVFSlKgGJ0HVgUXZ+yDLllD6ir+FLBwDnl6vqBc712OUZ6HGyCrbimIJBxfW
	WsLXjBVpPpt+595dc4BfYN0xuTyEt8M=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b7c0e143 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sun, 21 Jul 2024 13:51:13 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-70388567d24so1913357a34.0;
        Sun, 21 Jul 2024 06:51:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX5M9ta1eLX4+J+oZ9rBpGq28G1aWkJ8fVKJNUdvFwjAELz/Z3UcS0e/QQmm7IQ2P+2ViTQvExp7u0Du0lKiQt3fnl+9+CEEJ21VWL4cxvazDMrASrqhOzUAam4KV6gEQLb8ZKa9zeyPWWyFcJqDvj0qmg5UqimxAs=
X-Gm-Message-State: AOJu0YwC3AD7AfynqRDR7HsnmoVb5vEeUo8eNAR+fA7ruyrSYXunkoHn
	xaTPjm5ZHhJX31BREVknWzgNB57XU2emAr6jffxwoHAohLaCStkjDoBFmIcgkI7RvxxlxzfrnPZ
	8jNbOas7TL5x7mebSUps+XnpHBKY=
X-Google-Smtp-Source: AGHT+IFsMlVRtNwCXluUUXjW9ka5Q7ZhDwyasPEQ56gn6Eo7mx7wDJvxEZ5Eug0XalQazDCf32gnVeHUc/x5z7LJ0Gw=
X-Received: by 2002:a05:6870:7193:b0:260:e2ed:1abe with SMTP id
 586e51a60fabf-2612163699cmr4854499fac.39.1721569871308; Sun, 21 Jul 2024
 06:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1721522430.git.daniel@makrotopia.org> <c28cb9ad04062b6da66d9cac8adefa0edc0046ea.1721522430.git.daniel@makrotopia.org>
 <Zpz5-2q-C0oQBqoa@zx2c4.com> <Zp0R3YtzDoi02P1K@makrotopia.org>
In-Reply-To: <Zp0R3YtzDoi02P1K@makrotopia.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Sun, 21 Jul 2024 15:51:00 +0200
X-Gmail-Original-Message-ID: <CAHmME9pAgDV_kQZXTDG0LiX7W6+SBL3+fNsF6B-RyTMXRMxBnw@mail.gmail.com>
Message-ID: <CAHmME9pAgDV_kQZXTDG0LiX7W6+SBL3+fNsF6B-RyTMXRMxBnw@mail.gmail.com>
Subject: Re: [PATCH v8 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_065120_984482_089155B4 
X-CRM114-Status: GOOD (  29.21  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, devicetree@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, linux-rockchip@lists.infradead.org, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBKdWwgMjEsIDIwMjQgYXQgMzo0OeKAr1BNIERhbmllbCBHb2xsZSA8ZGFuaWVsQG1h
a3JvdG9waWEub3JnPiB3cm90ZToKPgo+IE9uIFN1biwgSnVsIDIxLCAyMDI0IGF0IDAyOjA3OjIz
UE0gKzAyMDAsIEphc29uIEEuIERvbmVuZmVsZCB3cm90ZToKPiA+IE9uIFN1biwgSnVsIDIxLCAy
MDI0IGF0IDAxOjQ4OjM4QU0gKzAxMDAsIERhbmllbCBHb2xsZSB3cm90ZToKPiA+ID4gRnJvbTog
QXVyZWxpZW4gSmFybm8gPGF1cmVsaWVuQGF1cmVsMzIubmV0Pgo+ID4gPgo+ID4gPiBFbmFibGUg
dGhlIGp1c3QgYWRkZWQgUm9ja2NoaXAgUk5HIGRyaXZlciBmb3IgUkszNTZ4IFNvQ3MuCj4gPiA+
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEF1cmVsaWVuIEphcm5vIDxhdXJlbGllbkBhdXJlbDMyLm5l
dD4KPiA+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5v
cmc+Cj4gPiA+IC0tLQo+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgu
ZHRzaSB8ICA3ICsrKysrKysKPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTZ4LmR0c2kgfCAxMCArKysrKysrKysrCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2Vy
dGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5k
dHNpCj4gPiA+IGluZGV4IGYxYmU3NmE1NGNlYi4uYjljNmIyZGM4N2ZhIDEwMDY0NAo+ID4gPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gPiA+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiA+ID4gQEAgLTI1Nyw2
ICsyNTcsMTMgQEAgcG93ZXItZG9tYWluQFJLMzU2OF9QRF9QSVBFIHsKPiA+ID4gICAgIH07Cj4g
PiA+ICB9Owo+ID4gPgo+ID4gPiArJnJuZyB7Cj4gPiA+ICsgICByb2NrY2hpcCxzYW1wbGUtY291
bnQgPSA8MTAwMD47Cj4gPiA+ICsgICBxdWFsaXR5ID0gPDkwMD47Cj4gPgo+ID4gQXMgSSBhbHJl
YWR5IHdyb3RlIHlvdSBmb3IgdjcsIHF1YWxpdHkgaXMgb3V0IG9mIDEwMjQsIG5vdCAxMDAwLCBz
byB0aGlzCj4gPiB3b24ndCBoaXQgOTAlIGFzIHlvdSBpbnRlbmQuCj4KPiBJdCdzIG5vdCBhY3R1
YWxseSA5MCUuIEFyb3VuZCAxMjUgb3V0IG9mIDEwMDAgdGVzdCBydW5zIGFyZSBmYWlsaW5nIG9u
Cj4gdGhlIFI1QyBib2FyZHMgSSBnb3QgaGVyZSwgc28gdGhhdCBtYWtlcyBpdCA4Ny41JSB3aGlj
aCBpcyBwcmV0dHkgY2xvc2UKPiB0byB0aGUgODcuOSUgb2YgdGhlIDkwMC8xMDI0IGZpZ3VyZSB0
aGVyZSwgaGVuY2UgSSBrZXB0IGl0IDkwMCBkZXNwaXRlCj4geW91ciBjb21tZW50LgoKSnVzdCBk
byA5MjI/Cgo+Cj4gPgo+ID4gQnV0IGFsc28sIEkgdGhpbmsgcHV0dGluZyB0aGlzIGluIHRoZSBE
VCBpcyBhIG1pc3Rha2UuIE90aGVyIGRyaXZlcnMKPiA+IGRvbid0IGdlbmVyYWxseSBkbyB0aGlz
LCBhbmQgaWYgdGhlIGhhcmR3YXJlIGlzIGFjdHVhbGx5IHRoZSBzYW1lIHBpZWNlCj4gPiB0byBw
aWVjZSAoaXQgaXMuLi4pLCB0aGVuIHRoZXJlJ3Mgbm90IHBlci1tYW51ZmFjdHVyZWQgdW5pdCB0
d2Vha2luZwo+ID4gbmVlZGVkLiBTbyBrZWVwIHRoaXMgaW4gdGhlIGFjdHVhbCBkcml2ZXIgQyBs
aWtlIG90aGVyIGRyaXZlcnMuCj4KPiBTbyBxdWFsaXR5IHNob3VsZCBiZSBhc3NpZ25lZCB1c2lu
ZyB0aGUgRFQgY29tcGF0aWJsZSwgcmlnaHQ/Cj4gQW5kIGlmIG5lZWRlZCB3ZSBzaG91bGQgaGF2
ZSBzZXZlcmFsIG9mIHRoZW0sIG9uZSBmb3IgZWFjaCBTb0MgKGlmCj4gdGVzdGluZyBub3cgdHVy
bnMgb3V0IHRvIHNob3cgdGhhdCB0aGUgcmVzdWx0cyBhcmUgc3BlY2lmaWMgZm9yIHRoZSBTb0MK
PiByYXRoZXIgdGhhbiBmb3IgdGhlIGJvYXJkKS4KCk5vLCBkbyBpdCBpbiB0aGUgQy4gSWYgeW91
IGRvbid0IGhhdmUgZXZpZGVuY2Ugb2Ygc3VjaCBjcmF6eQpjb21wbGV4aXR5IGFuZCBkaXZlcnNp
dHksIGRvbid0IG92ZXJlbmdpbmVlciBmb3IgaXQuIE5vdGhpbmcgZWxzZSBkb2VzCnRoaXMgaW4g
dGhlIERULgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
