Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80CF0C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFgiSRW4eBl3Qb/tR4FBhm/JatRrNTcg6c7dtHvdnN0=; b=qUIpxU6x4dBEC/
	aSuN+v6FdwHnVnfbHmab0LZXsbevdLy/NPjypRBD12sBKz1JDx72TxI3baplZnZ1ywtYCY79RDGD+
	sakI3U1jdRm9xk0ZGAJNrV6K2803DYacBTNnGVgCJBsQdrlFj6yFYiLcVYI84BwBsPbKof/GZ/REq
	tw/lK0e6MP/lHQqzP8HKL5Se9TdiOSF8MNRD6J4vxh1QuxzSrF5GiUTB3yssQro0LEQiGf5ni9/AD
	h9HmYyIfFZalh3F1pcUJsvmhnwqjVXYVDVD6hb7QYnQUjfPoeYD0Q8rmYudS9ItZDUwbZwuJO83xE
	bPvGB+Jp/yC7BHIvWSvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzJb6-002baK-Ga; Thu, 09 Jun 2022 14:57:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzJaq-002bRm-4V; Thu, 09 Jun 2022 14:57:06 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1nzJad-0006x1-AP; Thu, 09 Jun 2022 16:56:51 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Maya Matuszczyk <maccraft123mc@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree <devicetree@vger.kernel.org>, arm-mail-list <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 32/48] arm64: dts: rockchip: align gpio-key node names with dtschema
Date: Thu, 09 Jun 2022 16:56:50 +0200
Message-ID: <2126178.C4sosBPzcN@diego>
In-Reply-To: <e0f7146d-3ccc-a194-bb1e-c3475ca8c29e@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org> <CAO_MupKxvaXRQvMyEUZMThBZ9033OeJec+BtBndjs5oZ3etTEQ@mail.gmail.com> <e0f7146d-3ccc-a194-bb1e-c3475ca8c29e@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_075704_264442_00AD8063 
X-CRM114-Status: GOOD (  24.14  )
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

QW0gRG9ubmVyc3RhZywgOS4gSnVuaSAyMDIyLCAxNjoxNToyNSBDRVNUIHNjaHJpZWIgS3J6eXN6
dG9mIEtvemxvd3NraToKPiBPbiAwOS8wNi8yMDIyIDE1OjU3LCBNYXlhIE1hdHVzemN6eWsgd3Jv
dGU6Cj4gPiBjencuLCA5IGN6ZSAyMDIyIG8gMTM6NTYgS3J6eXN6dG9mIEtvemxvd3NraQo+ID4g
PGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4gPj4KPiA+PiBU
aGUgbm9kZSBuYW1lcyBzaG91bGQgYmUgZ2VuZXJpYyBhbmQgRFQgc2NoZW1hIGV4cGVjdHMgY2Vy
dGFpbiBwYXR0ZXJuCj4gPj4gKGUuZy4gd2l0aCBrZXkvYnV0dG9uL3N3aXRjaCkuCj4gPj4KPiA+
PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tp
QGxpbmFyby5vcmc+Cj4gPj4gLS0tCj4gPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzA4LWV2Yi5kdHMgICB8ICAyICstCj4gPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMz
MjYtb2Ryb2lkLWdvMi5kdHMgICB8IDMyICsrKysrKysrKy0tLS0tLS0tLS0KPiA+PiAgLi4uL2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1uYW5vcGktcjJzLmR0cyAgIHwgIDIgKy0KPiA+PiAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjgtZXZiLmR0c2kgIHwgIDIgKy0KPiA+PiAg
Li4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1nZWVrYm94LmR0cyAgICAgIHwgIDIgKy0KPiA+
PiAgLi4uL2R0cy9yb2NrY2hpcC9yazMzNjgtb3Jpb24tcjY4LW1ldGEuZHRzICAgIHwgIDIgKy0K
PiA+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1weDUtZXZiLmR0cyAgICAgIHwgIDIg
Ky0KPiA+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjgtcjg4LmR0cyAgIHwg
IDIgKy0KPiA+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cyAgICAg
IHwgIDIgKy0KPiA+PiAgLi4uL2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LWNocm9tZWJvb2suZHRz
aSAgIHwgIDIgKy0KPiA+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUta2V2aW4u
ZHRzICAgIHwgIDIgKy0KPiA+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUtc2Nh
cmxldC5kdHNpIHwgIDIgKy0KPiA+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1raGFk
YXMtZWRnZS5kdHNpIHwgIDIgKy0KPiA+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1u
YW5vcGktcjRzLmR0cyAgIHwgIDQgKy0tCj4gPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktbmFub3BpNC5kdHNpICAgICB8ICAyICstCj4gPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktb3JhbmdlcGkuZHRzICAgICB8ICAyICstCj4gPj4gIC4uLi9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcGluZWJvb2stcHJvLmR0cyB8ICA0ICstLQo+ID4+ICAuLi4vYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpICAgICAgfCAgMiArLQo+ID4+ICAuLi4vYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpICAgfCAgMiArLQo+ID4+ICAuLi4vYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXNhcHBoaXJlLmR0c2kgICAgfCAgMiArLQo+ID4+ICAuLi4vYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY2LXBpbmVub3RlLmR0c2kgICAgfCAgMiArLQo+ID4+ICAyMSBm
aWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAzOCBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMwOC1ldmIuZHRz
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDgtZXZiLmR0cwo+ID4+IGluZGV4
IDliNGY4NTVlYTVkNC4uNGI1NDEzYjEyYmZhIDEwMDY0NAo+ID4+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzA4LWV2Yi5kdHMKPiA+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzMwOC1ldmIuZHRzCj4gPj4gQEAgLTc1LDcgKzc1LDcgQEAgZ3Bp
by1rZXlzIHsKPiA+PiAgICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiA+PiAgICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZwd3Jfa2V5PjsKPiA+Pgo+ID4+IC0g
ICAgICAgICAgICAgICBwb3dlciB7Cj4gPj4gKyAgICAgICAgICAgICAgIHBvd2VyLWtleSB7Cgpo
bW0sIGl0IGxvb2tzIGxpa2UgYWxsIHRoZSBvdGhlcnMgYmVsb3cgYXJlIG5hbWVkIGtleS1wb3dl
ciwgd2hpbGUKb25seSB0aGlzIHVzZXMgcG93ZXIta2V5ID8KCgo+ID4+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGdwaW9zID0gPCZncGlvMCBSS19QQTYgR1BJT19BQ1RJVkVfTE9XPjsKPiA+PiAg
ICAgICAgICAgICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEtFWV9QT1dFUj47Cj4gPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiR1BJTyBLZXkgUG93ZXIiOwo+ID4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1vZHJvaWQtZ28yLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI2LW9kcm9pZC1nbzIuZHRzCj4g
Pj4gaW5kZXggZWEwNjk1YjUxZWNkLi43MjMyOGRkOTkzZWUgMTAwNjQ0Cj4gPj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjYtb2Ryb2lkLWdvMi5kdHMKPiA+PiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1vZHJvaWQtZ28yLmR0cwo+ID4+
IEBAIC03MSw4MiArNzEsODIgQEAgZ3Bpby1rZXlzIHsKPiA+PiAgICAgICAgICAgICAgICAgICog
fC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLXwKPiA+PiAg
ICAgICAgICAgICAgICAgICovCj4gPj4KPiA+PiAtICAgICAgICAgICAgICAgc3cxIHsKPiA+PiAr
ICAgICAgICAgICAgICAgc3dpdGNoLTEgewo+ID4gV291bGRuJ3QgaXQgbWFrZSBtb3JlIHNlbnNl
IHRvIHJlbmFtZSB0aGlzIGFuZCBhbGwgb3RoZXIKPiA+IHJlbmFtZWQgbm9kZXMgaW4gdGhpcyBk
dHMgaW50byAiYnV0dG9uLWRwYWQtdXAiIG9yICJidXR0b24tMSIsCj4gPiBhcyBvbiB0aGUgcGh5
c2ljYWwgZGV2aWNlIHRob3NlIGFyZSBidXR0b25zIGFuZCB0aGUgbmFtaW5nCj4gPiBzY2hlbWUg
b2YgInN3IiArIG51bWJlciBzZWVtcyB0byBiZSBhIGNhcnJ5b3ZlciBmcm9tCj4gPiBkb3duc3Ry
ZWFtIHNvdXJjZXMuCgpUaGUgbmFtaW5nIGFjdHVhbGx5IGNhcnJpZXMgb3ZlciBmcm9tIHRoZSBk
ZXZpY2UgaXRzZWxmLgpJbiB0aGUgc2NoZW1hdGljcyB0aGUgcmVsZXZhbnQga2V5cyBhcmUgYWxz
byBuYW1lZCBzdzEsIHN3MiwgZXRjLgoKQW5kIEkgZG8gYmVsaWV2ZSBpdCBpcyB3YXkgbmljZXIg
d2hlbiBkZXZpY2V0cmVlIG5hbWVzIGNvcnJlc3BvbmQgdG8gdGhlCnRoaW5ncyB5b3UgZmluZCBp
biBkZXZpY2Ugc2NoZW1hdGljcyBhbmQgbm90IGJlIG5hbWVkICJhcmJpdGFyaWx5IiB0bwpvbmx5
IGNvbmZvcm0gdG8gc29tZSBzY2hlbWEgOy0pCgpTbyBwZXJzb25hbGx5IEknZCBhY3R1YWxseSBw
cmVmZXIgZ29pbmcgd2l0aCBzd2l0Y2gtc3cxIChvciBidXR0b24tc3cxIGlmCnlvdSBwcmVmZXIp
IGFzIGJlaW5nIGFibGUgdG8ganVzdCB1c2UgdGhlIHNlYXJjaCBmdW5jdGlvbiBpbiBzY2hlbWF0
aWMgcGRmcwppcyBhIGhlbHBmdWwgdG9vbC4KCgpIZWlrbwoKPiBDYW4gYmUgYnV0dG9ucy4gSSBh
c3N1bWVkIFNXIGNvbWVzIGZyb20gc29tZSBraW5kIG9mIHN3aXRjaC4KPiBJIGFzc3VtZSB5b3Ug
bWVhbiBvbmx5IHRoaXMgT2Ryb2lkIEdvMiBEVFMsIGJlY2F1c2Ugc29tZSBvdGhlciBEVFNlcwo+
IChsaWtlIEVWQiBhYm92ZSkgZXhwbGljaXRseSBjYWxsIGl0ICJLZXkgUG93ZXIiLgo+IAo+IAo+
IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
