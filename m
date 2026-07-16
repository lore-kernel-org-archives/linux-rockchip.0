Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74831C44515
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yg6SKMDP2i3BqaE07tS8qhIEuKIkHNcskJewgPZbDJA=; b=OUyjTpSscq+rd4
	MykBMvJd5C5G4zcBKmB1xXCPJebc1hlliHU3Cjc8Ae3TwjT/jr8e6m3X6pnP+wsRn/61qufa+P5jN
	tw8BwR3L2uljfYu92KqezVkWphP8KAu4zUvFvuqlEO5DaL0Qi+keby37uK0c9J54v8UxBZnkxr0n0
	8pGy/ymLI2oe830zENMTGCPnHgUwIiAJJUa5hNViAaunav8JsaezYNXHztzd/cA+525fUKVqogCsg
	PxiMod9pmNWN0bIvDNJRQkdrLjc+HAPU7P9hQ5Uq0v/hoFteeUcJzx7JvQZt38e8P8MyBRip4UaES
	1d74JrZuO7Q/UTKYsy2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQll-00000000NaP-3odL;
	Thu, 16 Jul 2026 18:25:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQlh-00000000NZ7-2nDH;
	Thu, 16 Jul 2026 18:25:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=98SE4CKBkuC1U0dGD2ygGl2gM94/pCkblmzMnYwDQqk=; b=OuKGsbpn2os34BAQ6UizSxnUQW
	SiErxKki31XrzsoUiRG3NMh9rHPSwrQ8mzySswVcqMfO5xJJlHcLJtxpz1zuZxFdIUb57XwcLsoqu
	Qghoy1B3sQPtxT/G/pUs1+GYPI+eI2UyyMwHFwJmxQMq1CVarNqPBg0Jluz+9BJOkO7xHl4s5sDd+
	TpCBQo0w205KAOpL3XH4RgQP1cugrlx1g3YYlG0D9hzYq49l+gF/gDygDf5AByXWbAwKq7fFtCLSn
	mgeoQGnfJEYVqJgRLfk/zbUj0uzs/5zEJWg08CFB0xgYfHfiq8eAvGi4aigZjwboVwSq5Z7BM/u9N
	ANA5vnhA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>,
 Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 jonas@kwiboo.se
Subject: Re: [PATCH v3 03/12] arm64: dts: rockchip: rk3588s-nanopi-r6: fix missing
 pcie rst pinctrl
Date: Thu, 16 Jul 2026 20:25:02 +0200
Message-ID: <2204997.bB369e8A3T@phil>
In-Reply-To: <CAPSPb=tTbdzBZFq9NE0PCiD8+7pbWhErauhOfjjkp0DnhDwvRA@mail.gmail.com>
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
 <DJYBBXE6SAG2.20OEJI5K6JIVM@cknow-tech.com>
 <CAPSPb=tTbdzBZFq9NE0PCiD8+7pbWhErauhOfjjkp0DnhDwvRA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_112509_708056_152D5AF0 
X-CRM114-Status: GOOD (  18.88  )
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

QW0gRG9ubmVyc3RhZywgMTYuIEp1bGkgMjAyNiwgMTE6MDI6NDcgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBKb2FjaGltIEVhc3R3b29kOgo+IEhpIERpZWRlcmlrLAo+IAo+
IE9uIFR1ZSwgMTQgSnVsIDIwMjYgYXQgMTU6MDIsIERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlr
QGNrbm93LXRlY2guY29tPiB3cm90ZToKPiA+Cj4gPiBIaSBKb2FjaGltLAo+ID4KPiA+IE9uIE1v
biBKdWwgMTMsIDIwMjYgYXQgMTA6MzAgUE0gQ0VTVCwgSm9hY2hpbSBFYXN0d29vZCB2aWEgQjQg
UmVsYXkgd3JvdGU6Cj4gPiA+IEZyb206IEpvYWNoaW0gRWFzdHdvb2QgPGpvYWNoaW0uZWFzdHdv
b2RAZ21haWwuY29tPgo+ID4gPgo+ID4gPiBUaGUgcGlucyBhcmUgdXNlZCBhcyByZXNldC1ncGlv
cyBidXQgbm90IHJlc2VydmVkIHRocm91Z2ggcGluY3RybC4KPiA+ID4KPiA+ID4gRml4ZXM6IGYz
YzY1MjZkNmZiMiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBDb252ZXJ0IGR0cyBmaWxlcyB1c2Vk
IGFzIHBhcmVudHMgdG8gZHRzaSBmaWxlcyIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWNoaW0g
RWFzdHdvb2QgPGpvYWNoaW0uZWFzdHdvb2RAZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1uYW5vcGktcjYuZHRzaSB8IDE0ICsr
KysrKysrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+ID4g
Pgo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LW5hbm9waS1yNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5h
bm9waS1yNi5kdHNpCj4gPiA+IGluZGV4IDY3ZTI4NGExNWMzNS4uOGRmNmUxYTIxMTgwIDEwMDY0
NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3Bp
LXI2LmR0c2kKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LW5hbm9waS1yNi5kdHNpCj4gPiA+IEBAIC0zNjAsMTIgKzM2MCwxNiBAQCByZ21paV9waHkxOiBl
dGhlcm5ldC1waHlAMSB7Cj4gPiA+ICB9Owo+ID4gPgo+ID4gPiAgJnBjaWUyeDFsMSB7Cj4gPiA+
ICsgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiA+ICsgICAgIHBpbmN0cmwtMCA9
IDwmcGNpZTJfMV9yc3Q+Owo+ID4gPiAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzEgUktfUEE3
IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiAgICAgICB2cGNpZTN2My1zdXBwbHkgPSA8JnZjY18z
djNfcGNpZTIwPjsKPiA+ID4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiAgfTsKPiA+ID4K
PiA+ID4gICZwY2llMngxbDIgewo+ID4gPiArICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+ID4gPiArICAgICBwaW5jdHJsLTAgPSA8JnBjaWUyXzJfcnN0PjsKPiA+ID4gICAgICAgcmVz
ZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BEMSBHUElPX0FDVElWRV9ISUdIPjsKPiA+ID4gICAgICAg
dnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2NfM3YzX3BjaWUyMD47Cj4gPiA+ICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiA+ID4gQEAgLTQyMCw2ICs0MjQsMTYgQEAgcnRjX2ludDogcnRjLWludCB7Cj4g
PiA+ICAgICAgICAgICAgICAgfTsKPiA+ID4gICAgICAgfTsKPiA+ID4KPiA+ID4gKyAgICAgcGNp
ZSB7Cj4gPiA+ICsgICAgICAgICAgICAgcGNpZTJfMV9yc3Q6IHBjaWUyLTEtcnN0IHsKPiA+Cj4g
PiBgYHBjaWUyMHgxXzFfcGVyc3RuX20yYGAgdG8gbWF0Y2ggdGhlIHNjaGVtYXRpYyBuYW1lPwo+
ID4KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8MSBSS19QQTcg
UktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gPiA+ICsgICAgICAgICAgICAgfTsKPiA+
ID4gKwo+ID4gPiArICAgICAgICAgICAgIHBjaWUyXzJfcnN0OiBwY2llMi0yLXJzdCB7Cj4gPgo+
ID4gQW5kIGBgcGNpZTIweDFfMl9wZXJzdG5fbTBgYCBoZXJlPwo+IAo+IENhbiBkby4KPiBJIHNl
ZSB0aGlzIHVzZWQgb24gYSBjb3VwbGUgb2Ygb3RoZXIgYm9hcmRzIGFzIHdlbGwuCgpJdCdzIGFs
d2F5cyBhIHBlci1ib2FyZCB0aGluZy4gTWF0Y2hpbmcgcGluLW5hbWVzIHRvIHNjaGVtYXRpYwpz
dHJpbmdzIG1ha2VzIGl0IGp1c3QgZWFzaWVyIHRvIHJlZmVyZW5jZSBmcm9tIG9uZSB0byB0aGUg
b3RoZXIuCgpTbyB5ZWFoLCBpdCdzIHZlcnkgbGlrZWx5IHRoYXQgc2NoZW1hdGljcyBtaWdodCBi
ZSBzaW1pbGFyLCBidXQgdGhvc2UKYm9hcmQgZGVzaWduZXJzIHNvbWV0aW1lcyBhbHNvIGdldCB3
YWFhYWF5IGNyZWF0aXZlIGluIHRoZWlyIG5hbWluZyA6LSkuCgoKSGVpa28KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
