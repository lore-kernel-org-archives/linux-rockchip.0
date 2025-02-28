Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 251AEC282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 17:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2R/jEKGkUl+o/2l0saw+isGn4f8FREyHH7foPV71xQ=; b=rkgdEltTkyMaM4
	uXIr/1msEYDO+Q+0WG8qNvpuiAW1p0EVU/q96TTvcJKP9cP/pNEYyyI5R01JWUQ42ETHvBpBEMlmQ
	kEESJFkXvAh2qYwPZNVagLVuXtIk/0b+N5ezTEhpkIN9HUY/gc7j1HbxRv1Ku6Iav+LX9z+BBmZHY
	Y9sW6nlaVAqSqU3Pl1Bwm63jMbhTPKHfvTzbL5mRFmXjt+yWNub14CRqP/wT4WXV/Wio6pxuugzCH
	M1C+vHGvVF1If9DDwDswJGdcqY6aVtp1PXLsvrIZ1+lqmlhv9Exn4dY5wQkPfbjQYaotkwINXNMRO
	AqaPAFyUKcROo+SfcBpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to47u-0000000Bx6h-0fJ3;
	Fri, 28 Feb 2025 17:26:18 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to46J-0000000Bwhj-2Mjl;
	Fri, 28 Feb 2025 17:24:41 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B205A44293;
	Fri, 28 Feb 2025 17:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1740763476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lGJ4IMk/2S17LDkhvq63xf3GveG7JHLPRsDkZ58UWfU=;
	b=ZjHYKfuReiCginek0gxRtQpQEORyx0FtOFMEQHOOGYi5/rLgqlO2nBEWF2MPHmLLDJf67q
	doZ39uHef9kpzhrR07JLduVxaUly0YgJVndRcmHGl9wVHS5oezVNffdfBI2eOj9jatCRM3
	fppR4sBcN8+RCWtfldFGmCF3cUt4+ZApNx9qlWs0Br/yG67bntPHFsKy5F4wR3Hug2+BA9
	5qImyp03z9QovpbndR6K9UKlOlPC9JCSJueFHqftlrraGU02psiazdb3ign77W+G7KV2gu
	s4DfRorOuC8ghThvxbt4rHMR1A1lYdJcpfW7DbdDZXhI27GKP5eKgoVvsuk0ZQ==
Message-ID: <249cb614-5b4d-4bf2-b3ee-58534f4d7852@bootlin.com>
Date: Fri, 28 Feb 2025 18:24:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Describe the cameras in the PinePhone Pro dts
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, oren@taumoda.com, Ondrej Jirman <megi@xff.cz>
References: <20250228-camera-v1-0-c51869f94e97@bootlin.com>
 <0338826971bfdd5b771bc1c6ada795eb@manjaro.org>
Content-Language: en-US
From: Olivier Benjamin <olivier.benjamin@bootlin.com>
In-Reply-To: <0338826971bfdd5b771bc1c6ada795eb@manjaro.org>
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeltdellecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefqlhhivhhivghruceuvghnjhgrmhhinhcuoeholhhivhhivghrrdgsvghnjhgrmhhinhessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepveeijeeiheffvefgleetjeehudfgvdejiedvtdegveeljeevheejkeekvefhudeunecuffhomhgrihhnpegtohguvggsvghrghdrohhrghdpkhgvrhhnvghlrdhorhhgpdgsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehiedphhgvlhhopeglkffrggeimedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehiegnpdhmrghilhhfrhhomhepohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeduvddprhgtphhtthhopegushhim
 hhitgesmhgrnhhjrghrohdrohhrghdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehhvghikhhosehsnhhtvggthhdruggvpdhrtghpthhtohepthhhohhmrghsrdhpvghtrgiiiihonhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhg
X-GND-Sasl: olivier.benjamin@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_092440_054990_54C86F4C 
X-CRM114-Status: GOOD (  16.51  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyLzI4LzI1IDE2OjQ2LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVsbG8gT2xpdmllciwK
PiAKSGVsbG8gRHJhZ2FuLAoKPiBPbiAyMDI1LTAyLTI4IDE2OjE5LCBPbGl2aWVyIEJlbmphbWlu
IHdyb3RlOgo+PiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBQaW5lNjQgUGluZVBo
b25lIFBybydzIHJlYXIgYW5kIGZyb250Cj4+IGNhbWVyYXMgaW4gRGV2aWNlIFRyZWUuCj4+IFRo
aXMgaXMgYmFzZWQgb24gc29tZSBvZiBPbmRyZWogSmlybWFuJ3MgcGF0Y2hlcyBob3N0ZWQgaW4g
aGlzIHRyZWUgYXQKPj4gaHR0cHM6Ly9jb2RlYmVyZy5vcmcvbWVnaS9saW51eCwgYnV0IEkgaGF2
ZSBhbHNvIGZ1bGx5IHJldmlld2VkIGFuZAo+PiByZS13cml0dGVuIHRoZSBjb2RlIGZyb20gdGhl
IFJLMzM5OSBkYXRhc2hlZXQsIHRoZSBQaW5lUGhvbmUgUHJvCj4+IHNjaGVtYXRpYywgYW5kIHRo
ZSBJTVgyNTgtMEFRSDUgc29mdHdhcmUgcmVmZXJlbmNlIG1hbnVhbC4KPj4KPj4gSSBoYXZlIHRl
c3RlZCB0aGVzZSBjaGFuZ2VzIG9uIG15IFBpbmVQaG9uZSBQcm8gYW5kIGFtIGFibGUgdG8gdGFr
ZQo+PiBwaG90b3MgZnJvbSBib3RoIGNhbWVyYXMgdXNpbmcgbGliY2FtZXJhJ3MgY2FtLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVyIEJlbmphbWluIDxvbGl2aWVyLmJlbmphbWluQGJvb3Rs
aW4uY29tPgo+IAo+IEknbSBhZnJhaWQgdGhhdCB5b3UgaGF2ZW4ndCBhZGRyZXNzZWQgdGhlIG5v
dGVzIGZyb20gdGhlIGZlZWRiYWNrCj4geW91IHJlY2VpdmVkIGVhcmxpZXI/IFsqXcKgIEFsc28s
IHRoaXMgc2hvdWxkIGJlIHRoZSB2MiBvZiB0aGUgc2VyaWVzLAo+IHdoaWNoIHNob3VsZCBjb250
YWluICJQQVRDSCB2MiIgaW4gdGhlIHBhdGNoIHN1YmplY3RzLCBhbmQgcHJvdmlkZQo+IGEgc3Vt
bWFyeSBvZiBjaGFuZ2VzIGluIHRoZSBjb3ZlciBsZXR0ZXIuCj4gCj4gT3IsIGRpZCB5b3UganVz
dCByZXNlbmQgdGhlIHYxIGJ5IG1pc3Rha2U/Cj4KSSBzb21laG93IG1pc3NlZCBIZWlrbydzIGZl
ZWRiYWNrIGluIG15IGVtYWlsLCBhbmQgdGhlcmVmb3JlIGludGVuZGVkIHRvIApyZXNlbmQgdjEs
IGJ1dCBiNCB3b3VsZCBub3QgbGV0IG1lIHNpbXBseSByZXNlbmQuCk15IG1vc3Qgc2luY2VyZSBh
cG9sb2dpZXMgZm9yIHRoZSBub2lzZSwgSSdsbCBhZGRyZXNzIHRoZSBmZWVkYmFjayBhbmQgCnNl
bmQgYSB2MiEKCj4gWypdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzUx
Mjc1NDEuMzFyM2VZVVFneEBwaGlsLwo+IAo+PiAtLS0KPj4gT2xpdmllciBCZW5qYW1pbiAoMik6
Cj4+IMKgwqDCoMKgwqAgYXJtNjQ6IGR0czogUGluZVBob25lIFBybzogZGVzY3JpYmUgSTJjIEJ1
cyAxIGFuZCBJTVgyNTggd29ybGQgCj4+IGNhbWVyYQo+PiDCoMKgwqDCoMKgIGFybTY0OiBkdHM6
IFBpbmVQaG9uZSBQcm86IGRlc2NyaWJlIHRoZSBPVjg4NTggdXNlciBjYW1lcmEKPj4KPj4gwqAu
Li4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzwqDCoMKgwqAgfCAx
MzggKysrKysrKysrKysrIAo+PiArKysrKysrKysKPj4gwqAxIGZpbGUgY2hhbmdlZCwgMTM4IGlu
c2VydGlvbnMoKykKPj4gLS0tCgotLSAKT2xpdmllciBCZW5qYW1pbiwgQm9vdGxpbgpFbWJlZGRl
ZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
