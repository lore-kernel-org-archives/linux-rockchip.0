Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 781B1CCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Jtj5PDfiZwXdA2Ti83+CsOskWIuRnIBC6I1AJiEJUc=; b=sKaRlwTQ5HJynk
	eSGOZ9beoBSfiICrgVTqjpnjKN8xVd8ZYdzdKeDvHx6OfAiYnlrbqiCakK7gijhssclmZFz5PZqsV
	VXzHkzS5NJLL48C8fSX+Bil1naxeWIsJTnMqseVlVDpX9WoW5zpBV/Y7kSThue0AdNBxIgfKKTdIA
	zzdQUfSDCsLfOSGqu9OhiChnwuTgbCUFasr7kxmilAIEUueXnxtJCXiLK5zifOTYJu2I//J7xkGAF
	P3jtC/xOqEOQqSO6J3fZrPSkEhUHvUBPsTgkobj3tTIE8d/2VSnbuW+h46WJ6bHZi3U1mQnKM1iUQ
	R9BLRVBlFJq0Vgun7zWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63EJ-00000001cCr-10eo;
	Tue, 07 Oct 2025 08:39:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63EH-00000001cBl-2svz;
	Tue, 07 Oct 2025 08:39:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2142261276;
	Tue,  7 Oct 2025 08:39:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 300C7C4CEF1;
	Tue,  7 Oct 2025 08:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759826368;
	bh=/C23iB6hG80aHSfbPIQHZRkbT6oo4Wb0yA1Motn9ZLs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nWk74onezSRqVhn/e/QYXHPDyxYB/VWAQovtpleU5X2n9VagrwVRQrFoxNOiivo2e
	 0pqv3P4zT5BDxklaTYuroG+FZLUVzh6Nuqos5nzsoO4q1tv7OEMN0nUdKjy6E9L+By
	 vYHoSkGnt2q451tFuw5I/zcklckq+JuFA8bW/h+6LTGtu7Q8+hC3zsbB0SIFJnwrYl
	 hunsIadsv8Euwg2X7gG5BxHWNb40Jnm11r+pa6Wh4CqGplizr5WRLwQuLxtJPzTDWY
	 eEtA7HIFZmCcqdb+MQ2lMivUjwbwOb1a9sta+ARtZn6UFkjk63sbxsQNdio82V436J
	 Uj0cRk4/gvyKw==
Message-ID: <15c23554-b51e-4656-81bc-a890c8c989a9@kernel.org>
Date: Tue, 7 Oct 2025 17:39:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] arm64: dts: rockchip: increase rga3 clock speed
To: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
 <20251007-spu-rga3-v1-15-36ad85570402@pengutronix.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20251007-spu-rga3-v1-15-36ad85570402@pengutronix.de>
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

T24gMDcvMTAvMjAyNSAxNzozMiwgU3ZlbiBQw7xzY2hlbCB3cm90ZToKPiBJbmNyZWFzZSB0aGUg
UkdBMyBjbG9jayBzcGVlZCB0byBnZXQgdGhlIG1heGltYWwgcG9zc2libGUgZnJhbWVzCj4gcGVy
IHNlY29uZC4gQnkgZGVmYXVsdCB0aGUgY29yZSBhbmQgYXhpIGNsb2NrIGlzIHNldCB0byAzNzVN
aHouCj4gCj4gU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRy
b25peC5kZT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFz
ZS5kdHNpIHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4gaW5kZXgg
MDg4ODVkOWMxOWUwYzEwNGFiMGY3MjNlYzE2MWI4Mzk5OGNmYjljNy4uNTdlMzIwMjY3YmI2Mjk4
OTNiYjg4NGJmNGU4ZDZiYmMyMmY4ZDYyOCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPiBAQCAtMTE3OSw2ICsxMTc5LDggQEAgcmdhM19j
b3JlMDogcmdhQGZkYjYwMDAwIHsKPiAgCQlpbnRlcnJ1cHQtbmFtZXMgPSAicmdhM19jb3JlMF9p
cnEiOwo+ICAJCWNsb2NrcyA9IDwmY3J1IEFDTEtfUkdBM18wPiwgPCZjcnUgSENMS19SR0EzXzA+
LCA8JmNydSBDTEtfUkdBM18wX0NPUkU+Owo+ICAJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNs
ayIsICJzY2xrIjsKPiArCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBDTEtfUkdBM18wX0NPUkU+
LCA8JmNydSBBQ0xLX1JHQTNfMD47Cj4gKwkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8ODAwMDAw
MDAwPiwgPDgwMDAwMDAwMD47CgpZb3UganVzdCBhZGRlZCB0aGVzZSBub2Rlcywgc28gdGhpcyBt
dXN0IGJlIHNxdWFzaGVkLiBEbyBub3QgYWRkCmluY29tcGxldGUgY29kZSB3aGljaCBpbW1lZGlh
dGVseSB5b3UgZml4LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
