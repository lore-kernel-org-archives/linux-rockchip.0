Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18092C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3H4A43lKW8gwAET9iMm8LqGn8fcKGoHIuU8N8BsRws=; b=CvB6fhfRF3CYMv
	8oAkraGeSRHgbgcPASCz1d5+1EEGkFs6IKBhp4b9pYE0zKj9TzmoK4WJDfx4AXmuPbwr1jaV3mBFg
	V61IZ3F0eLqbsgqTtcFcpiXJrZY96OFCWKVQhunlxFAiF8Y1Ald+/1/0bxVZvYssQ4FGmqAwv41mj
	nEoi5EzTUW8Q4+oBnR+glzNuEk9BO3LNUcbJhYr2nMeAEkHO34y5EjMy0gNOTtTZGWyDabpYYLqxh
	XcsHay6Ux0efs/hG9s9vlmBzUEk/YinSCl3njtUTmG4U8ON2+LhxfyKQ5hGaRCOoek1Fb/X7Q3im+
	bmTrorVvFnyiuXiN8qig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFxK-007P4a-9R; Tue, 10 Jan 2023 14:50:26 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFxH-007P2F-CK
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 14:50:25 +0000
Received: from [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9] (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 333C76602D2B;
	Tue, 10 Jan 2023 14:50:20 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673362220;
	bh=PuiPwo9HwFOEDukFjeBEsAsNhLoAsOISooyAzQZgE/w=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=UivahFaqCKHK7Q4kYjRZ0yMLGxV6O43ZLqbqa963ojOEkNEB00rZgasESwe0l2Yly
	 agYPc543Wp1sa0jIwBe4BxXlXGHhhD4xouGAZkfnF0uoy83jcy+UJ6QQrYPljyA8A9
	 GDt73mfiVhgocAEv/1rD30/SaT3QWBl43/pSQMXLmEOSXLsurpEw9X3tmC0kxGNMut
	 KhQ1woUZVdY9zEDahM92UaQ076g8q6MnGLwLgt16OKCyWbBuxR+hnhD1dnbbm9H8y3
	 IOjnSmv0h+2rLVVXJoSLArvVme9SsqJGkFc4cZ7SIug/VkbEkT+e6q7r6orOwlJu8X
	 Sl2MxGQHm8uEw==
Message-ID: <996e39448350d4f6318f7ff59c6a2ca249fb30a7.camel@collabora.com>
Subject: Re: [PATCHv8 7/7] arm64: dts: rockchip: Add rock-5b board
From: Christopher Obbard <chris.obbard@collabora.com>
To: Jagan Teki <jagan@edgeble.ai>, Sebastian Reichel
	 <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier
 <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, Michael Riesch
 <michael.riesch@wolfvision.net>
Date: Tue, 10 Jan 2023 14:50:17 +0000
In-Reply-To: <CA+VMnFxb1P4tP5sef5ME3jCcCq2Y3rD-0bpv1B0TsUZ3RXXuqg@mail.gmail.com>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com>
	 <20230109155801.51642-8-sebastian.reichel@collabora.com>
	 <CA+VMnFxb1P4tP5sef5ME3jCcCq2Y3rD-0bpv1B0TsUZ3RXXuqg@mail.gmail.com>
User-Agent: Evolution 3.46.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_065023_601033_87B04E8C 
X-CRM114-Status: GOOD (  19.89  )
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

T24gVHVlLCAyMDIzLTAxLTEwIGF0IDE5OjMwICswNTMwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE9u
IE1vbiwgOSBKYW4gMjAyMyBhdCAyMToyOCwgU2ViYXN0aWFuIFJlaWNoZWwKPiA8c2ViYXN0aWFu
LnJlaWNoZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IEZyb206IENocmlzdG9waGVy
IE9iYmFyZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiAKPiA+IEFkZCBib2FyZCBm
aWxlIGZvciB0aGUgUkszNTg4IFJvY2sgNUIgYm9hcmQuIFRoaXMgaXMgYSBiYXNpYwo+ID4gaW1w
bGVtZW50YXRpb24gd2hpY2gganVzdCBicmluZ3MgdXAgdGhlIGVNTUMgYW5kIFVBUlQgd2hpY2gg
aXMKPiA+IGVub3VnaCB0byBzdWNjZXNzZnVsbHkgYm9vdCBMaW51eC4KPiA+IAo+ID4gVGhlIGV0
aGVybmV0IGNvbnRyb2xsZXIgaXMgY29ubmVjdGVkIHZpYSBQQ0llIHNvIHN1cHBvcnQgd2lsbAo+
ID4gY29tZSBpbiBhIGZvbGxvdy11cCBwYXRjaC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hy
aXN0b3BoZXIgT2JiYXJkIDxjaHJpcy5vYmJhcmRAY29sbGFib3JhLmNvbT4KPiA+IFJldmlld2Vk
LWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAd29sZnZpc2lvbi5uZXQ+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KPiA+IC0tLQo+ID4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2Vm
aWxlwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSArCj4gPiDCoC4uLi9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtcm9jay01Yi5kdHPCoMKgwqDCoMKgIHwgNDQKPiA+ICsrKysrKysrKysrKysrKysrKysK
PiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspCj4gPiDCoGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmls
ZQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPiBpbmRleCA4
N2E4NTM0MzUxNDIuLmM1YmRkMDE3NmNlMCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvTWFrZWZpbGUKPiA+IEBAIC04Myw0ICs4Myw1IEBAIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1NjgtZXZiMS0KPiA+IHYxMC5kdGIKPiA+IMKgZHRiLSQoQ09ORklHX0FS
Q0hfUk9DS0NISVApICs9IHJrMzU2OC1vZHJvaWQtbTEuZHRiCj4gPiDCoGR0Yi0kKENPTkZJR19B
UkNIX1JPQ0tDSElQKSArPSByazM1Njgtcm9jay0zYS5kdGIKPiA+IMKgZHRiLSQoQ09ORklHX0FS
Q0hfUk9DS0NISVApICs9IHJrMzU4OC1ldmIxLXYxMC5kdGIKPiA+ICtkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTg4LXJvY2stNWIuZHRiCj4gPiDCoGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazM1ODhzLXJvY2stNWEuZHRiCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmQyZjFlOTYzY2UwNgo+ID4gLS0tIC9kZXYv
bnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01
Yi5kdHMKPiA+IEBAIC0wLDAgKzEsNDQgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogKEdQTC0yLjArIE9SIE1JVCkKPiA+ICsKPiA+ICsvZHRzLXYxLzsKPiA+ICsKPiA+ICsjaW5j
bHVkZSAicmszNTg4LmR0c2kiCj4gPiArCj4gPiArLyB7Cj4gPiArwqDCoMKgwqDCoMKgIG1vZGVs
ID0gIlJhZHhhIFJPQ0sgNSBNb2RlbCBCIjsKPiA+ICvCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9
ICJyYWR4YSxyb2NrLTViIiwgInJvY2tjaGlwLHJrMzU4OCI7Cj4gPiArCj4gPiArwqDCoMKgwqDC
oMKgIGFsaWFzZXMgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW1jMSA9ICZz
ZGhjaTsKPiAKPiBJIHRoaW5rIHNkaGNpIC0gZW1tYyBoYXMgdG8gYmUgbW1jMCBkdWUgdG8gYm9v
dCBwcmlvcml0eS4KCkhpIEphZ2FuLAoKV2Uga2VwdCBlTU1DIGFzIG1tYzEgZm9yIGJvdGggUk9D
SyA1IE1vZGVsIEEgYW5kIEIgdG8ga2VlcApjb21wYXRpYmlsaXR5IHdpdGggdmVuZG9yIGtlcm5l
bDoKaHR0cHM6Ly9naXRodWIuY29tL3JhZHhhL2tlcm5lbC9ibG9iL3N0YWJsZS01LjEwLXJvY2s1
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzI0wzMQoKQnV0
IEkgYW0gaGFwcHkgdG8gY2hhbmdlIHRoZSBhbGlhcyB0byBtbWMwLCBAU2ViYXN0aWFuIHdoYXQg
ZG8geW91CnRoaW5rPwoKVGhhbmtzCkNocmlzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
