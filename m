Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE508C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 12:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNb+eNV+aK9+AVParPsviJl3nwDNFqDJamIk2ekMaIQ=; b=3hOB2+Gt4JEUKP
	PGZxDx711aU9IQ3Ddhx56w+BipZ3ESNVlkc8OLOM6MZYT7bTYGnRpxAtl0kWdYuZLSIGPTxBmM17N
	UvVbmutdnR7CEe+SmScEgaHrjuCQWoYdzyyfH19clnmsxD07un1lGSxI8TrtMQ2XyjJOkw0ZVG3i0
	gtj1mCiBGN/RBhmgqngbGu7w86V8vbrCs2Lut/xL7BKV1T1ufIjKBW6L1v3eEkAKnx/99tTE1rctt
	vKgZu0jYKuF84CphESR3y1ovkOHJhD2ugMWsiCJ5pTuAF5PmDaTd2zSY87oRlkDHjNh0JqgfANezw
	B8hzwYV/C1Map1ybR4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyuTh-00D0ST-Qc; Wed, 08 Jun 2022 12:08:01 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyuTT-00D0EB-6q; Wed, 08 Jun 2022 12:07:48 +0000
Received: from beast.luon.net (simons.connected.by.freedominter.net [45.83.240.172])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 23F1D66016DA;
	Wed,  8 Jun 2022 13:07:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654690056;
	bh=SAA45Wwt3uaDm0ZJ5x04iCq7I8InT0nlAWWoIWFAytY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=ME12UARi3FG0G953d5PihyQN/LdIrK0dI2blOg41AqhsrMNT2hI+WiLUM2tx/isQI
	 jxJcFEZdq1spx5dWQDppOLkq/o4wG7bMAKPrboKZy/OT14HVDQwvi88sp1jhuNrNMb
	 Olqv3k43SvEigtH3APEc95MpusGBbLGcmAO3PLhRwMw06dC5MVrlGlEViAuoPOSZvI
	 6yWSTyGtr1HwzWryPh3BLn5yHY26ARHWr/n26QQfSjsZp5/O02/WsHYiPNN0bMJ+Ex
	 54havYHPkEoqym8g8QC3QOj5fLL2IUaEhw9MWNBRpmg9Npco21CQOk6TAbZrd/S76l
	 UwUg2o+mPf/Dg==
Received: by beast.luon.net (Postfix, from userid 1000)
	id EA63740C28C7; Wed,  8 Jun 2022 14:07:33 +0200 (CEST)
Message-ID: <3576f2af98a0d9e7128568777d85af3bfbab801d.camel@collabora.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-s add more peripherals
From: Sjoerd Simons <sjoerd@collabora.com>
To: Michael Riesch <michael.riesch@wolfvision.net>, 
	linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, Akash Gajjar <akash@openedev.com>, Heiko Stuebner
 <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
  Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Wed, 08 Jun 2022 14:07:33 +0200
In-Reply-To: <4731d47f-ef02-d512-c599-274f8208f845@wolfvision.net>
References: <20220606082629.79682-1-sjoerd@collabora.com>
	 <20220606082629.79682-3-sjoerd@collabora.com>
	 <4731d47f-ef02-d512-c599-274f8208f845@wolfvision.net>
Organization: Collabora Ltd.
User-Agent: Evolution 3.44.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_050747_530946_D4690DDA 
X-CRM114-Status: GOOD (  12.03  )
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

SGV5IE1pY2hhZWwsCgpPbiBNb24sIDIwMjItMDYtMDYgYXQgMTQ6MDAgKzAyMDAsIE1pY2hhZWwg
Umllc2NoIHdyb3RlOgo+IAo+ID4gK8KgwqDCoMKgwqDCoMKgYWxpYXNlcyB7Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZXRoZXJuZXQwID0gJmdtYWM7Cj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgbW1jMCA9ICZlbW1jOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoG1tYzEgPSAmc2RtbWM7Cj4gCj4gU3VyZT8gZW1tYyBpcyBhdCBhZGRyZXNz
IGZmNDkwMDAgd2hpY2ggaXMgbGFyZ2VyIHRoYW4gc2RtbWMncyBhZGRyZXNzCj4gZmY0ODAwMDAu
IEkgYmVsaWV2ZSB0aGUgYWxpYXNlcyBzaG91bGQgYmUgc29ydGVkIHcuci50LiBhZGRyZXNzZXMu
CgpEbyB5b3UgaGF2ZSBhIHJlZmVyZW5jZSBhYm91dCB0aGlzIHNvcnRpbmcgcmVxdWlyZW1lbnQ/
wqAKCkFsc28gZG8geW91IG1lYW4gdGhhdCBtbWMwIHNob3VsZCBiZSAmc2RtbWMgKm9yKiB0aGF0
IHRoZSBhbGlhc2VzCnNob3VsZCBoYXZlIG1tYzEgbGlzdGVkIGZpcnN0LgoKRm9yIHJlZmVyZW5j
ZSB0aGUgcmVhc29uIGlzIHRoYXQgbW1jMCBpcyBlbW1jIGlzIGJlY2F1c2UgaXQgc2VlbXMgbW9y
ZQpsb2dpY2FsIHRvIGhhdmUgdGhlIGJ1aWx0aW4gZGV2aWNlcyBjb21lIGZpcnN0IChlLmcuIGFz
IG1tY2JsazApIAoKCj4gQmVzdCByZWdhcmRzLAo+IE1pY2hhZWwKPiAKPiA+ICvCoMKgwqDCoMKg
wqDCoH07Cj4gPiArCj4gPiDCoMKgwqDCoMKgwqDCoMKgY2hvc2VuIHsKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxNTAwMDAwbjgiOwo+
ID4gwqDCoMKgwqDCoMKgwqDCoH07Cj4gPiBAQCAtMTMyLDYgKzEzOCwxNSBAQCAmZW1tYyB7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gwqB9Owo+ID4gwqAKPiA+ICsm
Z21hYyB7Cj4gPiArwqDCoMKgwqDCoMKgwqBjbG9ja19pbl9vdXQgPSAib3V0cHV0IjsKPiA+ICvC
oMKgwqDCoMKgwqDCoHBoeS1zdXBwbHkgPSA8JnZjY19pbz47Cj4gPiArwqDCoMKgwqDCoMKgwqBz
bnBzLHJlc2V0LWdwaW8gPSA8JmdwaW8wIFJLX1BBNyBHUElPX0FDVElWRV9MT1c+Owo+ID4gK8Kg
wqDCoMKgwqDCoMKgc25wcyxyZXNldC1hY3RpdmUtbG93Owo+ID4gK8KgwqDCoMKgwqDCoMKgc25w
cyxyZXNldC1kZWxheXMtdXMgPSA8MCA1MDAwMCA1MDAwMD47Cj4gPiArwqDCoMKgwqDCoMKgwqBz
dGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+IMKgJmkyYzEgewo+ID4gwqDCoMKgwqDC
oMKgwqDCoHN0YXR1cyA9ICJva2F5IjsKPiA+IMKgfTsKPiA+IEBAIC0xOTUsMTAgKzIxMCw0NyBA
QCAmc2RtbWMgewo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJva2F5IjsKPiA+IMKgfTsK
PiA+IMKgCj4gPiArJnUycGh5IHsKPiA+ICvCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJva2F5IjsK
PiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoHUycGh5X2hvc3Q6IGhvc3QtcG9ydCB7Cj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGh5LXN1cHBseSA9IDwmdmNjNXYwX290Zz47Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoHUycGh5X290Zzogb3RnLXBv
cnQgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBoeS1zdXBwbHkgPSA8JnZj
YzV2MF9vdGc+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJv
a2F5IjsKPiA+ICvCoMKgwqDCoMKgwqDCoH07Cj4gPiArfTsKPiA+ICsKPiA+IMKgJnVhcnQwIHsK
PiA+IMKgwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiDCoH07Cj4gPiDCoAo+ID4g
wqAmdWFydDQgewo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJva2F5IjsKPiA+ICsKPiA+
ICvCoMKgwqDCoMKgwqDCoGJsdWV0b290aCB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0bDg3MjNicy1idCI7Cj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2aWNlLXdha2UtZ3Bpb3MgPSA8JmdwaW80IFJLX1BCMwo+
ID4gR1BJT19BQ1RJVkVfSElHSD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aG9zdC13YWtlLWdwaW9zID0gPCZncGlvNCBSS19QQjQgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiAr
wqDCoMKgwqDCoMKgwqB9Owo+ID4gK307Cj4gPiArCj4gPiArJnVzYl9ob3N0X2VoY2kgewo+ID4g
K8KgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnVzYl9o
b3N0X29oY2kgewo+ID4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4g
PiArCj4gPiArJnVzYjIwX290ZyB7Cj4gPiArwqDCoMKgwqDCoMKgwqBkcl9tb2RlID0gInBlcmlw
aGVyYWwiOwo+ID4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiAr
Cj4gPiArJndkdCB7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiDCoH07
CgotLSAKU2pvZXJkIFNpbW9ucwpDb2xsYWJvcmEgTHRkLgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
