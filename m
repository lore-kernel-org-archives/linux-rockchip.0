Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 709FBC27C77
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgCulwP6WxdEyPAQlR5Zp6sOQtP1QiUR4JKqaVgnkH4=; b=s8hY3VD1lru/KW
	vzL9rRCRpoqakivTBE4xAu8HsyUPvAcaKP6zcrPTyW+W9GPaJGoyOl00wHPc8nzQyITcAi8O5Eg85
	KY7Uy8NaL3EZ3Ik3cgf8whBOLg1MAla7TxZiOCVxtJuozN+1S6bVXMLZFoQOD1XmJt4HWNPH8E/dt
	CLflWRDZIoe91uG3cG1cpbcwPoj4/XDdOjmamPZL5lTXQyMQU5iCO1MW899Dy4M8SX/7VeaeWmzhy
	ixBGPiajdEwao27sLDCHzkCCVfGJQYz8TkQ+5GPPafuVOHUilXWUcMssskPXQ0g3fBOmumRtXnCQ6
	xJ6U9RjD/+8CTJVIRzAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNrg-0000000Chsa-00a4;
	Wed, 12 Jun 2024 13:18:12 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNrc-0000000Chrr-0OVI;
	Wed, 12 Jun 2024 13:18:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F3836CE20FD;
	Wed, 12 Jun 2024 13:18:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A69FC4AF48;
	Wed, 12 Jun 2024 13:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718198285;
	bh=EAhhAkJSPT8m5ngR46DhDWBeRyQ+o42ANBwH3ptZVhg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OApSNVQ9rxCDt78BplPKCVq47aEVD9f7bvXL595EXGUxakoQ5fNWgPRq+nw8FUdDB
	 48+kmtTH+mDChhpxU9+TXo90WaGNshAaVz8EAdHmGQ8prHcI5l8gAAYoicWRbcugKs
	 Fm4nbnlyjSaqcBUoghULX27RFQE5Qy5Op8b44vj8atRLQBvD63HHk5fUNWc9CQEfWo
	 vgLuWdQUbCwrdVKv7d/DtFUwtutQCY+Tdx7lmUHRvad9/jbd95ikcEmisJp8jz5lVL
	 xDrbvgdK7PNtYZ8L9fOwZ0LUVeyloZ8sttX/xFMnM4ZbPG4GsVj4crSSySPlW69pYQ
	 zkrMyQBbPJ9MA==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52bc035a7ccso2586942e87.2;
        Wed, 12 Jun 2024 06:18:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW+CFHAY8RuZ7Ypn0NV8/rerevQQoZbZuKdb1rhtcfSt4TaWi14LZ4uDOcscHtPjmVAstHfDBgCHEjgzBuwNzGXftvyCp+AFkyOfphxOwJn5psBIQCABDsifr7qQ9Hdn/ULHucjQFd1dHCcY6ABRD9klfEAf5687Qc=
X-Gm-Message-State: AOJu0YzBXD38icyRkePe6ft5SggvDthTNJ13kdNvDts2QC2e6AVGfLQo
	EPyrXgOrOqbY86JZwF8IUQ0dXAkYcY6mu0AY3V35i9FlQmDPeI7n2exkK0i/KSbJFaF60udfYdC
	hcJwT8mPewTQeVTwihbqgW0Ej1g==
X-Google-Smtp-Source: AGHT+IGRdGHPsMkRPpbZiPDo0vVmCHDqtl0Psn5HUImt9EEAE0lx3tPjGwXY5tKVUkqpNnOVIiW4L3JmK8xPdWvgy8M=
X-Received: by 2002:a05:6512:3d1f:b0:52b:d48e:32e8 with SMTP id
 2adb3069b0e04-52c9a3fd878mr1250484e87.45.1718198283584; Wed, 12 Jun 2024
 06:18:03 -0700 (PDT)
MIME-Version: 1.0
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
 <20240611-dev-mule-i2c-mux-v3-2-08d26a28e001@cherry.de> <171811272875.1782775.2673232019553624734.robh@kernel.org>
In-Reply-To: <171811272875.1782775.2673232019553624734.robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 12 Jun 2024 07:17:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ83sz5-MZN+Cv6=AbLXWxAaYayw=k0_X=F2AAxU1j2Gg@mail.gmail.com>
Message-ID: <CAL_JsqJ83sz5-MZN+Cv6=AbLXWxAaYayw=k0_X=F2AAxU1j2Gg@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: i2c: mux: mule: add dt-bindings for
 mule i2c multiplexer
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Peter Rosin <peda@axentia.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_061808_590774_1435F61B 
X-CRM114-Status: GOOD (  16.76  )
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

T24gVHVlLCBKdW4gMTEsIDIwMjQgYXQgNzozMuKAr0FNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBUdWUsIDExIEp1biAyMDI0IDEzOjQzOjUzICsw
MjAwLCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPiA+IE11bGUgaXMgYW4gTUNVIHRoYXQgZW11bGF0
ZXMgYSBzZXQgb2YgSTJDIGRldmljZXMgd2hpY2ggYXJlIHJlYWNoYWJsZQo+ID4gdGhyb3VnaCBh
biBJMkMtbXV4Lgo+ID4KPiA+IFRoZSBlbXVsYXRlZCBkZXZpY2VzIHNoYXJlIGEgc2luZ2xlIEky
QyBhZGRyZXNzIHdpdGggdGhlIG11eCBpdHNlbGYKPiA+IHdoZXJlIHRoZSByZXF1ZXN0ZWQgcmVn
aXN0ZXIgaXMgd2hhdCBkZXRlcm1pbmVzIHdoaWNoIGxvZ2ljIGlzIGV4ZWN1dGVkCj4gPiAobXV4
IGxvZ2ljIG9yIGRldmljZSBsb2dpYykuCj4gPgo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoZSBNdWxl
IEkyQyBtdWx0aXBsZXhlciBiaW5kaW5ncy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBGYXJvdWsg
Qm91YWJpZCA8ZmFyb3VrLmJvdWFiaWRAY2hlcnJ5LmRlPgo+ID4gLS0tCj4gPiAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaTJjL3RzZCxtdWxlLWkyYy1tdXgueWFtbCAgfCA4MCArKysrKysrKysr
KysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDgwIGluc2VydGlvbnMoKykKPiA+Cj4K
PiBNeSBib3QgZm91bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24g
eW91ciBwYXRjaDoKPgo+IHlhbWxsaW50IHdhcm5pbmdzL2Vycm9yczoKPgo+IGR0c2NoZW1hL2R0
YyB3YXJuaW5ncy9lcnJvcnM6Cj4gL2J1aWxkcy9yb2JoZXJyaW5nL2R0LXJldmlldy1jaS9saW51
eC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL3RzZCxtdWxlLWkyYy1tdXgu
ZXhhbXBsZS5kdGI6IGZhbkAxODogJyNjb29saW5nLWNlbGxzJyBkb2VzIG5vdCBtYXRjaCBhbnkg
b2YgdGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTldKycKPiAgICAgICAgIGZyb20gc2NoZW1hICRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvdHJpdmlhbC1kZXZpY2VzLnlhbWwjCgpZ
b3UgY2Fubm90IGFkZCB3YXJuaW5ncy4gUGxlYXNlIGZpeCB0aGlzIG9yIHRoaXMgcGF0Y2ggd2ls
bCBuZXZlciBiZQphY2NlcHRlZC4gRWl0aGVyIGRyb3AgdGhlIHByb3BlcnR5IGZyb20gdGhlIGV4
YW1wbGUgb3IgYWRkIGl0IHRvIHRoZQpiaW5kaW5nIChieSBtb3Zpbmcgb3V0IG9mIHRyaXZpYWwt
ZGV2aWNlcy55YW1sKS4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
