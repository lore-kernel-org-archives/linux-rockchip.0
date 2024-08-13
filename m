Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ACDCC52D7B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 14:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMN/VZKrWWcFnJb3WcPJpJsisq9EF/ZuiQfTXRDuKfM=; b=urTaGYGJD/VaGF
	PamrnD4PkWHABF3XFeID4qAoAFFuqXbaO9savhr008C0So4sOBnS8Jo3LFqCROdHVnp7Bqr2E7QHR
	CaT1lGei0e0jOSf+uzR/+18aa4JNH8xgnwlwPcuzSp+ORLwjVeHABpWukzxadRMbVeVWQxmwpUGY/
	EARntsObIqcC+zoqdRYY56isN7qOXTLKdpbFL8NlKHq6WGpECuXfLe7o2J6lfHSCVLsLJsfOfrtzX
	OJGbTsm69HmiGHKZlks44EW0WNDbSpjIsKgKmGmAmmjvlTrv4RlgiJkHYRGQ7FO7vMpfW/ahhVXwj
	WfGo7ykn7zh3oVpdj9rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdsLZ-00000003zHQ-133h;
	Tue, 13 Aug 2024 14:18:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdsKv-00000003z7y-2V5f;
	Tue, 13 Aug 2024 14:17:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 82039616E9;
	Tue, 13 Aug 2024 14:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36859C4AF0F;
	Tue, 13 Aug 2024 14:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723558640;
	bh=Ts02BaX1uJBucVrRoYv/f607u6/Qe7CljCeo1TcnB1o=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=akETTczIweO4EVNKAeoT9iyLYwL8xm6U3nSR0TYlL8u1t7nbfvShuXn0mKX5sHs/q
	 tDaaWC+JKCqOEBDfxfOcYwh5XXTaKYi57CDnUZMtAdQpgabl35qRf+SOXs+NPhDmM5
	 jMhBP0zgiQ+tCgEmL6dpjBkbHTj4i+0QPEiE+VK6p/WHxQXM+52typMPLkC7SaXd6g
	 adQJ51OTLGEAZ7W5Q7nOOemnh+UT0WpJGSDtozbLJoTFKoB4Nv6TGJThKpax/mBmWH
	 tCHbu5wNLeyqrUpadE9f4aLX3dxt7UQzk7Y7gpXEDCnjWYl8gvlmUQ2WKfcsfJTDB7
	 jGpf1mtYCp54Q==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f1a7faa4d5so48321281fa.3;
        Tue, 13 Aug 2024 07:17:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUnoH0xBbTf8xzrldU1cTWol/QeBA7lqAhUjTWMGQOJwrjgxC5yMoTXnSUWj+v82WGrJnfpViyV6sTBlNKgb/teli7U+xJQsPnQRNi65MUcmncSUIRT2DjR7Z/UHWenr7oonO3ItsaarGPq5/J+G3XL7B3bJQZjAf8=
X-Gm-Message-State: AOJu0YwE+aleNRMCiaPpswIGgOjSUM3jhQsK9/CKQWlGZRwE+fZeziV0
	wI6/yVIkKBH0aL25SFoLXkjYRPnS7lE7+3c7QqFLLByq1QDsLvnbJ1Cu4lQO+LzBQJ7trswNAPB
	mhMwyw9PlnS75SrjnI+uG+aqx9A==
X-Google-Smtp-Source: AGHT+IG4ZD1LYUmTcjNxsu4NSl0NVMrynBgp0QWu3I61S59AOffl8L/RksPbuMpvt7XgOGWntMOsVjpu4+iKl0U5l+Q=
X-Received: by 2002:a2e:be93:0:b0:2ef:2bb4:2ea1 with SMTP id
 38308e7fff4ca-2f2b712cfedmr34435731fa.4.1723558638412; Tue, 13 Aug 2024
 07:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1722355365.git.daniel@makrotopia.org> <d2beb15377dc8b580ca5557b1a4a6f50b74055aa.1722355365.git.daniel@makrotopia.org>
In-Reply-To: <d2beb15377dc8b580ca5557b1a4a6f50b74055aa.1722355365.git.daniel@makrotopia.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 13 Aug 2024 08:17:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKG+dMJjPXrWiQ8qZ7yfpdX3R22ntKRBawYZWTaW_9GWA@mail.gmail.com>
Message-ID: <CAL_JsqKG+dMJjPXrWiQ8qZ7yfpdX3R22ntKRBawYZWTaW_9GWA@mail.gmail.com>
Subject: Re: [PATCH v9 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_071721_760217_E2699B1C 
X-CRM114-Status: GOOD (  16.03  )
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMjQgYXQgMTA6MTHigK9BTSBEYW5pZWwgR29sbGUgPGRhbmllbEBt
YWtyb3RvcGlhLm9yZz4gd3JvdGU6Cj4KPiBGcm9tOiBBdXJlbGllbiBKYXJubyA8YXVyZWxpZW5A
YXVyZWwzMi5uZXQ+Cj4KPiBJbmNsdWRlIHRoZSBqdXN0IGFkZGVkIFJvY2tjaGlwIFJORyBkcml2
ZXIgZm9yIFJLMzU2eCBTb0NzIGFuZAo+IGVuYWJsZSBpdCBvbiBSSzM1NjguCj4KPiBTaWduZWQt
b2ZmLWJ5OiBBdXJlbGllbiBKYXJubyA8YXVyZWxpZW5AYXVyZWwzMi5uZXQ+Cj4gU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+Cj4gLS0tCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgfCAgNCArKysrCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kgfCAxMCArKysrKysrKysrCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC5kdHNpCj4gaW5kZXggZjFiZTc2YTU0Y2ViMC4uMmE2Y2EyMGU2MDdmZCAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+IEBAIC0yNTcsNiAr
MjU3LDEwIEBAIHBvd2VyLWRvbWFpbkBSSzM1NjhfUERfUElQRSB7Cj4gICAgICAgICB9Owo+ICB9
Owo+Cj4gKyZybmcgewo+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAgJnVz
Yl9ob3N0MF94aGNpIHsKPiAgICAgICAgIHBoeXMgPSA8JnVzYjJwaHkwX290Zz4sIDwmY29tYnBo
eTAgUEhZX1RZUEVfVVNCMz47Cj4gICAgICAgICBwaHktbmFtZXMgPSAidXNiMi1waHkiLCAidXNi
My1waHkiOwo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
eC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+IGluZGV4
IDQ2OTBiZTg0MWExY2QuLmQxNjBhMjNmZDQ5NTkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTZ4LmR0c2kKPiBAQCAtMTExMyw2ICsxMTEzLDE2IEBAIHNkaGNpOiBtbWNA
ZmUzMTAwMDAgewo+ICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgICAg
ICAgfTsKPgo+ICsgICAgICAgcm5nOiBybmdAZmUzODgwMDAgewo+ICsgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1ybmciOwo+ICsgICAgICAgICAgICAgICByZWcg
PSA8MHgwIDB4ZmUzODgwMDAgMHgwIDB4NDAwMD47Cj4gKyAgICAgICAgICAgICAgIGNsb2NrcyA9
IDwmY3J1IENMS19UUk5HX05TPiwgPCZjcnUgSENMS19UUk5HX05TPjsKPiArICAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAiY29yZSIsICJhaGIiOwo+ICsgICAgICAgICAgICAgICByZXNldHMg
PSA8JmNydSBTUlNUX1RSTkdfTlM+Owo+ICsgICAgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJy
ZXNldCI7CgpUaGlzIGFkZHMgYSBuZXcgd2FybmluZzoKCnJuZ0BmZTM4ODAwMDogJ3Jlc2V0LW5h
bWVzJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTldKycK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
