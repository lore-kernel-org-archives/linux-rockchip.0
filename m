Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57A28E93710
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 13:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXbqfV2duU9XiMz/SMx0dKPvO0Y9CuKyUPk3rAw6lYk=; b=M3Rp8E/OyCNgXc
	f0ODkAvtLr1iP/coL3sKgWnFhZJTGSQIkl108Ok3PmcO7+uwcT2niA9TnATyaiBoLOdJ+RtpbA/qF
	bH/Pv43RxKKFlC+87b1M8ouCc65Vmq0n7C97FT29eargn8lSuKv00AWV1qeKk2ir2if4FxxXugJ5f
	Hwg+0TVcKRix+SQeQlnAMAzYKnp9wEWiaXDNN9rXMUMRhQfDXsU3tJRGY9EP2CBbmPpo8bk0vCZfp
	U9HbVNi2A5gP/1PonylIqq6KqW72lmgSKexJCZjLjefg1jLaGm0Zgt1GXcLAnVgEYxFUzvold4HQQ
	b8Ee/08wA/VG61aEuCUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoOoD-003dW3-19;
	Thu, 05 Oct 2023 13:54:33 +0000
Received: from forward103c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d103])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoOo9-003dUo-0G;
	Thu, 05 Oct 2023 13:54:30 +0000
Received: from mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net [IPv6:2a02:6b8:c14:6e01:0:640:627f:0])
	by forward103c.mail.yandex.net (Yandex) with ESMTP id 4C57E60118;
	Thu,  5 Oct 2023 16:54:17 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 5sYS4WpDR8c0-c59Uhkbc;
	Thu, 05 Oct 2023 16:54:16 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1696514056; bh=djv/zTCmEEO0N9ZJ0kPB68viw9nxhWIGHqi+5kw6/nk=;
	h=Cc:Message-ID:References:Date:In-Reply-To:Subject:To:From;
	b=mxjIvrbWDeQZsZfQoZxIAayHgrDIZBpf/35k7buCmGNqzgA1wms/0ZYX33Ym9XHmP
	 TYWEQzWj9cfX6nPeiV05eP2L6h263aubX3vkAPPjLbCCyb5l5GR4fMWGml3EujhLZm
	 iMN34tW9If/TvZtdJMXz4R80jSIM4Rq43htSKp0w=
Authentication-Results: mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: d-gole@ti.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	efectn@6tel.net,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	megi@xff.cz,
	robh+dt@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add Orange Pi 5
Date: Thu,  5 Oct 2023 16:54:04 +0300
Message-ID: <20231005135405.257495-1-efectn@6tel.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230928105137.5ljhuoxjc7et5thw@dhruva>
References: <20230928105137.5ljhuoxjc7et5thw@dhruva>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_065429_353747_5A6CA821 
X-CRM114-Status: GOOD (  23.86  )
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

SGVsbG8sCgpPbiAyOC4wOS4yMDIzIDEzOjUxLCBEaHJ1dmEgR29sZSB3cm90ZToKPiBIaSwKPiAK
PiBPbiBBdWcgMjEsIDIwMjMgYXQgMTg6NDc6NTkgKzAzMDAsIE11aGFtbWVkIEVmZSBDZXRpbiB3
cm90ZToKPj4gQWRkIGluaXRpYWwgc3VwcG9ydCBmb3IgT1BpNSB0aGF0IGluY2x1ZGVzIHN1cHBv
cnQgZm9yIFVTQjIsIFBDSWUyLCBTYXRhLAo+PiBTZG1tYywgU1BJIEZsYXNoLCBQTUlDLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBNdWhhbW1lZCBFZmUgQ2V0aW4gPGVmZWN0bkA2dGVsLm5ldD4KPj4g
UmV2aWV3ZWQtYnk6IE9uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4gLS0tCj4+ICAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPj4gICAu
Li4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LmR0cyAgfCA2NzMgKysrKysr
KysrKysrKysrKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2NzQgaW5zZXJ0aW9ucygrKQo+PiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMt
b3JhbmdlcGktNS5kdHMKPj4KPiAuLi4KPiAKPiBDYW4geW91IHByb3ZpZGUgc29tZSBzb3J0IG9m
IGRvY3VtZW50YXRpb24gb24gaG93IEkgY2FuIGJ1aWxkIGFuZCBib290Cj4gdGhlIGtlcm5lbCBv
biB0aGlzIGJvYXJkPyBJIHdhcyB1bmFibGUgdG8gdXNlIHRoZSB1cHN0cmVhbSBhcm02NAo+IGRl
ZmNvbmZpZyB3aXRoIHRoaXMgZXhhY3Qgc2VyaWVzIGFwcGxpZWQgdG8gYm9vdCB0aGUgYm9hcmQu
CgpXaGF0IHdhcyB3cm9uZyB3aGVuIHlvdSB0cmllZCB0byBjb21waWxlICYgYm9vdCB0aGUgYm9h
cmQ/IENhbiB5b3UgcHJvdmlkZSBzb21lIGxvZ3M/Cgo+IAo+PiArCj4+ICsmaTJjNiB7Cj4+ICsJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JmkyYzZtM194ZmVy
PjsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICsKPj4gKwloeW04NTYzOiBydGNANTEgewo+PiAr
CQljb21wYXRpYmxlID0gImhhb3l1LGh5bTg1NjMiOwo+PiArCQlyZWcgPSA8MHg1MT47Cj4+ICsJ
CSNjbG9jay1jZWxscyA9IDwwPjsKPj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gImh5bTg1NjMi
Owo+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8Jmh5
bTg1NjNfaW50PjsKPj4gKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzA+Owo+PiArCQlpbnRl
cnJ1cHRzID0gPFJLX1BCMCBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+PiArCQl3YWtldXAtc291cmNl
Owo+IAo+IEFyZSB5b3UgYWJsZSB0byBhY3R1YWxseSB1c2UgcnRjIGFzIGEgd2FrZXVwIHNvdXJj
ZT8gSSB0cmllZCB0aGlzCj4gb24gYSBkb3duc3RyZWFtIGtlcm5lbCB0aGF0IEkgbWVudGlvbiBi
ZWxvdy4uCj4gCj4gcnRjd2FrZSAtcyAxMCAtbSBtZW0KPiAKPiBkaWRuJ3QgYWN0dWFsbHkgc2Vl
bSB0byB3YWtlIHRoZSBkZXZpY2UgZnJvbSBkZWVwc2xlZXAgYWZ0ZXIgMTAgc2Vjb25kcy4KPiBE
byB5b3Uga25vdyB3aGF0IG90aGVyIHBpbnMgSSBjYW4gdXNlIGFzIHdha2V1cCBzb3VyY2VzPwoK
Tm8sIGkndmUgbm90IHRyaWVkIGl0IGJlZm9yZS4KCj4gCj4+ICsJfTsKPj4gK307Cj4+ICsKPj4g
KyZtZGlvMSB7Cj4+ICsJcmdtaWlfcGh5MTogZXRoZXJuZXQtcGh5QDEgewo+PiArCQljb21wYXRp
YmxlID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKPiAKPiBKdXN0IHdvbmRlcmluZywg
Y2FuIHlvdSBwbGVhc2UgZ2l2ZSBzb21lIGxvZ3Mgb2YgdGhlIGJvYXJkIHdpdGggZXRoCj4gd29y
a2luZz8gVGhlIGltYWdlIHRoYXQgSSBoYXZlIGZyb20gb3BpIHNlZW1zIHRvIGZhaWwgZXRoPyBB
cyBpbiBJIGFtCj4gbm90IGFibGUgdG8gc2VlIGFueSBpcCBhZGRyZXNzLiBoZXJlIGFyZSB0aGUg
bG9nczoKPiAKPiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9EaHJ1dmFHMjAwMC9lZGEyNzYyZTM1
MDEzYzhkNWFjOWYzN2U4MTgxMDNhMwoKVW5mb3J0dW5hdGVseSB0aGUgYm9hcmQgaXMgbm90IG5l
YXIgbWUgY3VycmVudGx5LiBIb3dldmVyLCBpIHdhcyBhYmxlIHRvIHVzZSBHTUFDIGV0aGVybmV0
IGluIGJvdGggdGhlIHVwc3RyZXJhbSBhbmQgZG93bnN0cmVhbSBrZXJuZWxzLiBEaWQgeW91IHRy
eSBhbnkgaW1hZ2VzIG90aGVyIHRoYW4gT3JhbmdlIFBpIG9uZXM/Cgo+IAo+IC4uLgo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
