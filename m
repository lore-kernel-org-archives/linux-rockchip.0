Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37798C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 10:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCbiUGec0G7lfSfFv0aVculI+cpPj7ovUtuPYB/TqE0=; b=LWIDDrOqWb0Dda
	fys7tuIsVKAOFA3I6mIib95dXxHHV4q1pX6tgtoG/MNeJYx1c7PNL5FekAJoiJmwZSt+N4zgN1/ex
	Tw1iE9v9KaG0G3JyAo7Hwob6/7vkx6hhnN2M+4zBqsdrCIvXqLOUazh0ZSFd9E5JRiCuKyFPoZvBW
	AkBzEwzG5VRi6xGDu9WiOQRldUETYL12q0nInPzHW/loIt3NAaetUJAzWbvjKvaaKtg59Nr4NPHmI
	KVYnnvaFReFGldGOxJ4WlZaaqtQzcOr6c7AiM///HoJ7Z9aUummpMmSyj9XjHi9LUzYzqYQZm+e0D
	2fggrxNSozoR+VIZ6dAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEo6K-007SDa-17;
	Sun, 17 Dec 2023 10:10:24 +0000
Received: from uvw.ixypsilon.net ([81.223.58.118])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEo6G-007SD2-0o;
	Sun, 17 Dec 2023 10:10:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ixypsilon.net; s=20210903; h=Content-Transfer-Encoding:MIME-Version:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=I5qCWbnHdT3J6I/2pNx1YRFPO8CuYS6nTizw89enV14=; t=1702807816; x=1704017416; 
	b=mY8UANoJpUwy4wWRbOO7hIwtJJEH1D9enX20f7eDNYHyL+3d7hUzEqhnrIfePWntlB9fSIq/lPO
	oNuuv+nZsblO9PXqBWxTovDl5loCn8iVVVvhgRYaZEsJka//6jKxB3kTI5UIJY+h8Y4RVhvrS4nGK
	k9VfSkEg/3Ae/BEBqVqbUfnFvrW+/MQZr7ZqzbyRkipUk8krw5haB7uxIjpPseYsvuzDKUjvHQ7/6
	6HLvmdtHZm4LlZ0Co8w/RLgw/46AwQi2Cx4VBnNR+LLcSdS2tmGXosl8HDDydfEOrTlcZrr24TsVp
	Y4XA4mtiKfGfuVreF/BDqGVmawEbbydiMpKg==;
Received: from [192.168.0.1] (helo=[192.168.0.12])
	by uvw.ixypsilon.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <stefan.nagy@ixypsilon.net>)
	id 1rEo64-0000o9-1I;
	Sun, 17 Dec 2023 11:10:10 +0100
Message-ID: <2f5e3bacaedb979748417dff77364530f3fb7a62.camel@ixypsilon.net>
Subject: Re: [PATCH] arm64: dts: rockchip: Increase maximum frequency of SPI
 flash for ROCK Pi 4A/B/C
From: Stefan Nagy <stefan.nagy@ixypsilon.net>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Sun, 17 Dec 2023 11:10:08 +0100
In-Reply-To: <4fce0de996d6cc3056d972cd3fc3fb93@manjaro.org>
References: <20231215122848.59534-1-stefan.nagy@ixypsilon.net>
	 <33e632c38fa57053585c0016652ed8c8@manjaro.org>
	 <4fce0de996d6cc3056d972cd3fc3fb93@manjaro.org>
User-Agent: Evolution 3.38.3-1+deb11u2 
MIME-Version: 1.0
X-Spam_score: -1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_021020_591448_5BAF005B 
X-CRM114-Status: GOOD (  25.46  )
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

QW0gRnJlaXRhZywgZGVtIDE1LjEyLjIwMjMgdW0gMTk6MjAgKzAxMDAgc2NocmllYiBEcmFnYW4g
U2ltaWM6Cj4gT24gMjAyMy0xMi0xNSAxOToxNSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+ID4gT24g
MjAyMy0xMi0xNSAxMzoyOCwgU3RlZmFuIE5hZ3kgd3JvdGU6Cj4gPiA+IFRoZSBST0NLIFBpIDRB
L0IvQyBib2FyZHMgY29tZSB3aXRoIGEgMzIgTWJpdCBTUEkgTk9SIGZsYXNoIGNoaXAKPiA+ID4g
KFhUWCBUZWNobm9sb2d5IExpbWl0ZWQgWFQyNUYzMikgd2hpY2ggaGFzIGEgbWF4aW11bSBjbG9j
awo+ID4gPiBmcmVxdWVuY3kgb2YgMTA4IE1Iei4gSG93ZXZlciwgdGhlIFJvY2tjaGlwIFNQSSBj
b250cm9sbGVyIGRyaXZlcgo+ID4gPiBsaW1pdHMgdGhlIG1heGltdW0gU1BJIGNsb2NrIGZyZXF1
ZW5jeSB0byA1MCBNSHouIFVzZSB0aGlzIGxpbWl0Cj4gPiA+IGZvciBzcGktbWF4LWZyZXEuCj4g
PiA+IAo+ID4gPiBUaGlzIHBhdGNoIGhhcyBiZWVuIHRlc3RlZCBvbiBST0NLIFBpIDRBLgo+ID4g
PiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIE5hZ3kgPHN0ZWZhbi5uYWd5QGl4eXBzaWxv
bi5uZXQ+Cj4gPiA+IC0tLQo+ID4gPiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LXJvY2stcGktNGEuZHRzIHwgMiArLQo+ID4gPiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2stcGktNGIuZHRzIHwgMiArLQo+ID4gPiDCoGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNGMuZHRzIHwgMiArLQo+ID4gPiDCoDMgZmls
ZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGkt
NGEuZHRzCj4gPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1w
aS00YS5kdHMKPiA+ID4gaW5kZXggZDVkZjg5MzlhLi4zMGU2M2U2MmEgMTAwNjQ0Cj4gPiA+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNGEuZHRzCj4g
PiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNGEu
ZHRzCj4gPiA+IEBAIC0xOSw2ICsxOSw2IEBAICZzcGkxIHsKPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oGZsYXNoQDAgewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGli
bGUgPSAiamVkZWMsc3BpLW5vciI7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmVnID0gPDA+Owo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3BpLW1h
eC1mcmVxdWVuY3kgPSA8MTAwMDAwMDA+Owo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc3BpLW1heC1mcmVxdWVuY3kgPSA8NTAwMDAwMDA+Owo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgfTsKPiA+ID4gwqB9Owo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9jay1waS00Yi5kdHMKPiA+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTRiLmR0cwo+ID4gPiBpbmRleCBiZWU2ZDc1ODguLjcx
MjJiZjZjMCAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9jay1waS00Yi5kdHMKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jay1waS00Yi5kdHMKPiA+ID4gQEAgLTM3LDcgKzM3LDcgQEAgJnNwaTEg
ewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgZmxhc2hAMCB7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsKPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MD47Cj4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBzcGktbWF4LWZyZXF1ZW5jeSA9IDwxMDAwMDAwMD47Cj4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzcGktbWF4LWZyZXF1ZW5jeSA9IDw1MDAwMDAw
MD47Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gPiDCoH07Cj4gPiA+IAo+ID4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00Yy5k
dHMKPiA+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTRj
LmR0cwo+ID4gPiBpbmRleCBkZTJlYmU0Y2IuLjhhZjc1YmM3YyAxMDA2NDQKPiA+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00Yy5kdHMKPiA+ID4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00Yy5kdHMK
PiA+ID4gQEAgLTQ5LDcgKzQ5LDcgQEAgJnNwaTEgewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgZmxh
c2hAMCB7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9
ICJqZWRlYyxzcGktbm9yIjsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZWcgPSA8MD47Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzcGktbWF4LWZy
ZXF1ZW5jeSA9IDwxMDAwMDAwMD47Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBzcGktbWF4LWZyZXF1ZW5jeSA9IDw1MDAwMDAwMD47Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB9
Owo+ID4gPiDCoH07Cj4gPiAKPiA+IEl0IHdvdWxkIGJlIGJldHRlciB0byB1cHN0cmVhbSB0aGVz
ZSBjaGFuZ2VzIHRvIHRoZSBMaW51eCBrZXJuZWwKPiA+IGZpcnN0LCBhbmQgdGhlbiBzeW5jIHRo
ZW0gYmFjayB0byBVLUJvb3QuCj4gCj4gT29wcywgbXkgYmFkLCBzb3JyeSwgSSBnb3QgY29uZnVz
ZWQgd2l0aCB5b3VyIG90aGVyIHBhdGNoIG9uIHRoZSBVLQo+IEJvb3QgbWFpbGluZyBsaXN0Lgo+
IAo+IFJlZ2FyZGluZyB0aGUgbmV3IHNwaS1tYXgtZnJlcXVlbmN5IHZhbHVlLCBpdCBzaG91bGQg
YmUgYmV0dGVyIHRvCj4gaGF2ZSBpdCBzZXQgdG8gd2hhdCB0aGUgU1BJIGNoaXAgYWN0dWFsbHkg
c3VwcG9ydHMsIGFuZCBsZXQgdGhlIFNQSQo+IGRyaXZlciBkbyBpdHMgdGhpbmcuCgpPSywgSSBh
Z3JlZS4gSSdsbCBzZW5kIGEgdjIgb2YgdGhpcyBwYXRjaCB3aXRoIGEgbmV3IHNwaS1tYXgtZnJl
cXVlbmN5Cm9mIDEwOCBNSHouCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
