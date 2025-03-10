Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CCE7C28B30
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 19:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hw1zJ9xcHPybPjFz4qHwg0LiVIC9AUdCkdba6NWW5c=; b=ckrVNYJlfGo1qq
	VzPFQBkj3Q6bSYhHthl42uRZLtmr+qVfjFkhSqIBEZHbVhlBK+MeULEFJMbblqNq3Hx957NbyTXRr
	4dehqCzaFWGGSrugiYyO+7i4MtNtRVAF2Xs0bFiWk2fmi2XfIYTsxf6rpvVXfXQz4aGmG0KfQIegI
	uwpMcFr1Gbo41VE+SmNseIUnXGKkaf9mp9VFXUc61NrF0tIcwszSVYpP17Lgd28K0rOr/Eg1ybp98
	wUoNdOA6wLz5mLEFP3gC+w6npyTyTbK+YsrZUi26gXtQsyQzyzp/q/+OAqW+X46iVvVNrxA3lwjux
	4YBdmtq3AwSUJ5WBD3vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1triro-00000003jvm-1A4X;
	Mon, 10 Mar 2025 19:32:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1triqB-00000003jsZ-1zcL;
	Mon, 10 Mar 2025 19:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Zrr8qOY5AroKW6DfKo2xALklKHaHMS61VgN2ae8lGd4=; b=nnLiHwqCXra8vWkf1q0iD36j+w
	QvHsbDdQkti3DSY2ixnanNFPEnh4op1ZNJY6+5T3keKngFHZnS3t1eQKJZ0x2+PaQPcxoGS9ZRr+J
	M8cVM9ZV3lUopUaBgAkm5i9ZDivmodd2L8HYHhbbEBAO9abD+Vn6vTx5mCuNciDeMhb2/cZJWnMF5
	oC3YY25HhUw4PpdcjKnlQRJRET6XXsmHMEsQj+m/HaB8chIwfhEYQDKBzA89nSLNGyea26CqtHwzq
	Roz65irHg79fScBKGJ4GZcH6zJRdQlP9VRhIg6FT7qwuR5k+N6kW0SWAtKTJ7UWIk46RV5eRk+xbe
	BI7PxROQ==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1triq7-0000000220p-2lVc;
	Mon, 10 Mar 2025 19:31:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5127DA43335;
	Mon, 10 Mar 2025 19:25:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22595C4CEEC;
	Mon, 10 Mar 2025 19:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741635059;
	bh=v4yFecT2Oniyy1NPYOTfbARYRqI9e57Xhic4hOu+GeQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=YEsJI4SW1f/4rNuYiyHSu6/QnSExJ4x+d6iQjI9VDYrZoNADxke2mnXUwP9afkihL
	 hTuuH7V0VvVUg5uJFbcLaV3P7z7RXNhKKuijQf+ljuhhIZy4j+4VTXINMoR1mxU6mu
	 9oYCm4t8FMpXLRBV22kEbpTDdhoxwjLbeq0rMzzReSuaVBXcAgYjIAZq3BHxisBfVj
	 GLFn9UmZ/rHmt/8ArwgEiV5JpYwhB5ksIkuxE1S5ZZfX7MMhJRKQW4RKzxHjSn4O1U
	 ToiRFxu1+MR8QXk+J8FtqIwrbQ6ID67F5bBBCPBS5GARlRPIQNUENI/DTESUA/ZxXY
	 2OvQqUx3x58Hw==
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2ae81dd81so176459066b.0;
        Mon, 10 Mar 2025 12:30:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUYkuLdK8wR37zH0XHsguwCaJQdiRGkpg6ehE5b3JCCUXVZ3w1+/Ctj5XPI/eI2NKFxe1HQcNKsaau3doJPmfA=@lists.infradead.org, AJvYcCV5wEq4kXq81U06ZgdJc9hOXUH3w5DxOQPAiwO6z6ixhPsGsBFBUBGESq01m88s5b7uP6w88IPwYoEMQy6aWrmB@lists.infradead.org
X-Gm-Message-State: AOJu0YwFHR6xzsKxQ4qXH1gzGrwAREcxTjeyT4k0jKQkhjzqDuyUP8dG
	/WSBhKCRG7SMPJWhCKA6l1qvDiBKrcSDt7s+mlqytENDjLD9LDjoj4EiPJGtNe8sy50sUZ+1cLp
	XNRMvVfZdBLiThRnRezEB6uZ3tg==
X-Google-Smtp-Source: AGHT+IGxBKdAQOOWVnO3ZEjAzX0VnUi4wg5gUyfxa5EYDnUv2ipBTTlxmPR9u72RbqgdJn4WQkU1sK0SjNez+497cro=
X-Received: by 2002:a17:906:7308:b0:ac2:6582:1564 with SMTP id
 a640c23a62f3a-ac2b9e1d1d1mr100096466b.27.1741635057630; Mon, 10 Mar 2025
 12:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <20250307093309.44950-1-krzysztof.kozlowski@linaro.org>
 <5417098.31r3eYUQgx@workhorse> <20250310124956.GA3875809-robh@kernel.org>
In-Reply-To: <20250310124956.GA3875809-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 10 Mar 2025 14:30:45 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJShHSMzMwiYA79OppJYKKR8qN=1soXPV_hCZiXGyVkSg@mail.gmail.com>
X-Gm-Features: AQ5f1JosXmbTct3QI9ZnK1eBDcQPU7QRj7_3mqIgKtvsQToiQl1meMSpHXHswhc
Message-ID: <CAL_JsqJShHSMzMwiYA79OppJYKKR8qN=1soXPV_hCZiXGyVkSg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: rng: rockchip,rk3588-rng: Drop
 unnecessary status from example
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Daniel Golle <daniel@makrotopia.org>, Aurelien Jarno <aurelien@aurel32.net>, 
	Olivia Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_193103_966739_A1C0A441 
X-CRM114-Status: GOOD (  28.23  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgNzo0OeKAr0FNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBNYXIgMDcsIDIwMjUgYXQgMDM6MDU6NTBQTSArMDEw
MCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+ID4gT24gRnJpZGF5LCA3IE1hcmNoIDIwMjUg
MTA6MzM6MDkgQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBUaW1lIEtyenlzenRvZgo+ID4gS296
bG93c2tpIHdyb3RlOgo+ID4gPiBEZXZpY2Ugbm9kZXMgYXJlIGVuYWJsZWQgYnkgZGVmYXVsdCwg
c28gbm8gbmVlZCBmb3IgJ3N0YXR1cyA9ICJva2F5IicgaW4KPiA+ID4gdGhlIERUUyBleGFtcGxl
Lgo+ID4gPgo+ID4gPiBSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtv
emxvd3NraUBsaW5hcm8ub3JnPgo+ID4gPgo+ID4gPiAtLS0KPiA+ID4KPiA+ID4gQ2hhbmdlcyBp
biB2MjoKPiA+ID4gMS4gRHJvcCB1bm5lY2Vzc2FyeSBmdWxsIHN0b3AgaW4gc3ViamVjdCBwcmVm
aXggYWZ0ZXIgJzonLgo+ID4gPiAyLiBBZGQgUmIgdGFnLgo+ID4gPiAtLS0KPiA+ID4gIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ybmcvcm9ja2NoaXAscmszNTg4LXJuZy55YW1s
IHwgMSAtCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+ID4gPgo+ID4gPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9yb2NrY2hp
cCxyazM1ODgtcm5nLnlhbWwKPiA+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvcm5nL3JvY2tjaGlwLHJrMzU4OC1ybmcueWFtbCBpbmRleAo+ID4gPiA3NTc5NjcyMTJmNTUu
LmNhNzFiNDAwYmNhZSAxMDA2NDQKPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3JuZy9yb2NrY2hpcCxyazM1ODgtcm5nLnlhbWwKPiA+ID4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9yb2NrY2hpcCxyazM1ODgtcm5nLnlhbWwK
PiA+ID4gQEAgLTUzLDcgKzUzLDYgQEAgZXhhbXBsZXM6Cj4gPiA+ICAgICAgICAgIGludGVycnVw
dHMgPSA8R0lDX1NQSSA0MDAgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKPiA+ID4gICAgICAgICAg
Y2xvY2tzID0gPCZzY21pX2NsayBTQ01JX0hDTEtfU0VDVVJFX05TPjsKPiA+ID4gICAgICAgICAg
cmVzZXRzID0gPCZzY21pX3Jlc2V0IFNDTUlfU1JTVF9IX1RSTkdfTlM+Owo+ID4gPiAtICAgICAg
ICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICAgICAgICB9Owo+ID4gPiAgICAgIH07Cj4gPgo+ID4g
SGksCj4gPgo+ID4gaXMgdGhlcmUgdGhlIHBvc3NpYmlsaXR5IHdlIGNvdWxkIG1ha2UgZHRzY2hl
bWEgYXMgaW52b2tlZCBieSBgbWFrZQo+ID4gZHRfYmluZGluZ19jaGVjayBXPTFgIChvciBXPTIp
IGFkZCBhIHdhcm5pbmcgZm9yIGV4YW1wbGVzIHRoYXQgaGF2ZSBkaXNhYmxlZAo+ID4gb3IgZXhw
bGljaXRseSBsaXN0ZWQgc3RhdHVzIHByb3BlcnRpZXMgd2hlbiBub3QgbmVlZGVkPyBPciBpcyB0
aGlzIHNvbWV0aGluZwo+ID4gYmV0dGVyIGhhbmRsZWQgaW4sIHNheSwgY2hlY2twYXRjaC5wbD8K
PiA+Cj4gPiBUaGUgcXVlc3Rpb24gYXJpc2VzIGJlY2F1c2UgZHVtYiBtaXN0YWtlcyBieSBtZSBs
aWtlIHRoaXMgc2hvdWxkIGlkZWFsbHkgYmUKPiA+IGNhdWdodCBiZWZvcmUgdGhleSB3YXN0ZSBw
cmVjaW91cyBtYWludGFpbmVyIHRpbWUuCj4gPgo+ID4gSWYgaXQncyBiZXN0IGhhbmRsZWQgaW4g
ZHRzY2hlbWEsIEkgY2FuIGxvb2sgaW50byB3b3JraW5nIG9uIHRoYXQgc28geW91IGd1eXMKPiA+
IGRvbid0IGhhdmUgdG8gZG8gZXZlbiBtb3JlIHdvcmsgZHVlIHRvIG1lLgo+Cj4gVHJ1c3QgbWUs
IEknbSBhbHdheXMgbG9va2luZyBmb3IgdGhpbmdzIHRvIGNoZWNrIGF1dG9tYXRpY2FsbHkuIDop
Cj4KPiBJIGhhdmUgc29tZXRoaW5nIGxpa2UgdGhhdCB3aGljaCBhZGRzIGEgc2NoZW1hIGZvciBl
eGFtcGxlcyBvbmx5LiBJCj4gdGhpbmsgdGhlcmUgd2VyZSBzb21lIGNvcm5lciBjYXNlcy4gSSds
bCB0YWtlIGEgZnJlc2ggbG9vayBhdCBpdC4KCkkgZ290IG15IGNoZWNrIHdvcmtpbmcgYWdhaW4u
IGkyYy9pMmMtZGVtdXgtcGluY3RybC55YW1sIGlzIHRoZQpwcm9ibGVtYXRpYyBvbmUuIE5vdCBz
dXJlIHdoYXQgdG8gZG8gdGhlcmUuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
