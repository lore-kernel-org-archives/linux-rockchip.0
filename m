Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D758ECCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 16:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGjv8Bgt0NIbjMbfTWVlU8S+Wwg96FtcOZh+nphGXVg=; b=XBQ5ocq/Yh8qkB
	adlG2+JmlK3zGfhbORgfZDLHol/VhqqS6xkoI6z2Ls32TfMLJsyf1gd8mTfqAHhWl4zXortnYiSN9
	/5bowQXKuW1f8b82SQ8EMsZhlyxPZqZDrqXlIU1YU0ae5OtUr5es+Qug9WP5N71e/Nq0sBIWdlm8y
	CGVevFZ9z6D67POkRKVKMqz4bP/PZt7UumaUWOL4Eo6YAGnGBYDXICspEGzOw+tL0+vlcPuBVgyef
	WXSXt1dQAxCxn5G9oOXhWHjbFcnxWq+GQPir76fwN8ets3xLRITbrcP3eALDEaAKs3Li1w9B2m/gQ
	EHGNoiagK1AVGtjy4SuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ACc-00000002M0X-0XZ0;
	Tue, 07 Oct 2025 16:06:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6ACZ-00000002Lzu-18mR
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 16:06:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v6ACJ-00072o-Qx; Tue, 07 Oct 2025 18:05:55 +0200
Message-ID: <947409d8-9a92-46f2-a6e7-49f3aa44d74f@pengutronix.de>
Date: Tue, 7 Oct 2025 18:05:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/16] media: rockchip: rga: add rga3 support
To: Krzysztof Kozlowski <krzk@kernel.org>, Jacob Chen
 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
 <20251007-spu-rga3-v1-16-36ad85570402@pengutronix.de>
 <bf989d9f-9e8e-4acc-b502-1674ce215318@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <bf989d9f-9e8e-4acc-b502-1674ce215318@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_090611_303163_76FB93D6 
X-CRM114-Status: GOOD (  22.31  )
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

SGnCoEtyenlzenRvZiwKCk9uIDEwLzcvMjUgMTA6MzkgQU0sIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6Cj4gT24gMDcvMTAvMjAyNSAxNzozMiwgU3ZlbiBQw7xzY2hlbCB3cm90ZToKPj4gQWRk
IHN1cHBvcnQgZm9yIHRoZSBSR0EzIHVuaXQgY29udGFpbmVkIGluIHRoZSBSSzM1ODguCj4+Cj4+
IE9ubHkgYSBiYXNpYyBmZWF0dXJlIHNldCBjb25zaXN0aW5nIG9mIHNjYWxpbmcgYW5kIGNvbG9y
IGNvbnZlcnNpb24gaXMKPj4gaW1wbGVtZW50ZWQuIEFkdmFuY2VkIGZlYXR1cmVzIGxpa2Ugcm90
YXRpb24gYW5kIGNyb3BwaW5nIHdpbGwganVzdCBiZQo+PiBpZ25vcmVkLiBBbHNvIHRoZSBCVDYw
MUYgY29sb3Igc3BhY2UgY29udmVyc2lvbiBpcyBjdXJyZW50bHkgaGFyZCBjb2RlZC4KPj4KPj4g
VGhlIHJlZ2lzdGVyIGFkZHJlc3MgZGVmaW5lcyB3ZXJlIGNvcGllZCBmcm9tIHRoZQo+PiB2ZW5k
b3IgUm9ja2NoaXAga2VybmVsIHNvdXJjZXMgYW5kIHNsaWdodGx5IGFkanVzdGVkIHRvIG5vdCBz
dGFydCBhdCAwCj4+IGFnYWluIGZvciB0aGUgY21kIHJlZ2lzdGVycy4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KPj4gLS0tCj4+
ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvTWFrZWZpbGUgIHwgICAyICst
Cj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgIHwgICA0
ICsKPj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCAgICAgfCAg
IDIgKy0KPj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EzLWh3LmMg
fCA0OTAgKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EzLWh3LmggfCAxODYgKysrKysrKysrKwo+PiAgIDUgZmlsZXMg
Y2hhbmdlZCwgNjgyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gWW91ciBvcmRlciBv
ZiBwYXRjaGVzIGlzIGEgbWVzcy4gRFRTIGNhbm5vdCBiZSBpbiB0aGUgbWlkZGxlLiBJbiBmYWN0
LAo+IERUUyBzaG91bGQgbm90IGJlIGV2ZW4gaW4gdGhpcyBwYXRjaHNldCwgYmVjYXVzZSB5b3Ug
YXJlIHRhcmdldGluZyBtZWRpYS4KCnNvcnJ5IHRvIGJvdGhlciB5b3UsIGJ1dCBjb3VsZCB5b3Ug
Z28gaW50byBhIGJpdCBtb3JlIGRldGFpbCBvbiBob3cgaXQgCnNob3VsZCBiZSBkb25lIGNvcnJl
Y3RseT8KCkkgZ3Vlc3MgdGhhdCB5b3VyIG1lc3NhZ2UgcmVmZXJzIHRvICI3LiBbLi4uXcKgSWYg
YSBkcml2ZXIgc3Vic3lzdGVtIAptYWludGFpbmVyIHByZWZlcnMgdG8gYXBwbHkgZW50aXJlIHNl
dCwgaW5zdGVhZCBvZiB0aGVpciByZWxldmFudCAKcG9ydGlvbiBvZiBwYXRjaHNldCwgcGxlYXNl
IHNwbGl0IHRoZSBEVFMgcGF0Y2hlcyBpbnRvIHNlcGFyYXRlIHBhdGNoc2V0IAp3aXRoIGEgcmVm
ZXJlbmNlIGluIGNoYW5nZWxvZyBvciBjb3ZlciBsZXR0ZXIgdG8gdGhlIGJpbmRpbmdzIHN1Ym1p
c3Npb24gCm9uIHRoZSBtYWlsaW5nIGxpc3QuIiBbMV0uwqBJZiB0aGlzIGlzIHRoZSBjYXNlLCBp
cyB0aGVyZSBhIGdlbmVyYWwgcnVsZSAKdG8gZGV0ZXJtaW5lIGlmIGEgc2VwYXJhdGUgcGF0Y2hz
ZXQgaXMgbmVjZXNzYXJ5PyAoSSd2ZSBhbHNvIG5vdGljZWQsIAp0aGF0IEkndmUgd3JvbmdseSBh
c3N1bWVkIHRvIGtlZXAgdGhlIERvY3VtZW50YXRpb24gYW5kIGR0c2kgY29tbWl0IAp0b2dldGhl
ciBhbmQgc2hvdWxkJ3ZlIG1vdmVkIHRoZSBkdHNpIGNvbW1pdCB0byB0aGUgZW5kIG9mIHRoZSBw
YXRjaHNldCkKCkFuZCBkbyBJIHVuZGVyc3RhbmQgaXQgY29ycmVjdGx5LCB0aGF0IHRoZSBEb2N1
bWVudGF0aW9uLyBjaGFuZ2UgaXMgYXQgCnRoZSBjb3JyZWN0IHBvc2l0aW9uIChvbmx5IHRoZSBk
dHNpIGNvbW1pdHMgYmVpbmcgcHJvYmxlbWF0aWMpPyBCYXNlZCBvbiAKbXkgdW5kZXJzdGFuZGlu
ZyBvZiAiNS7CoFRoZSBEb2N1bWVudGF0aW9uLyBwb3J0aW9uIG9mIHRoZSBwYXRjaCBzaG91bGQg
CmNvbWUgaW4gdGhlIHNlcmllcyBiZWZvcmUgdGhlIGNvZGUgaW1wbGVtZW50aW5nIHRoZSBiaW5k
aW5nIiBbMV0gdGhpcyAKc2hvdWxkIGJlIHJpZ2h0IGJlZm9yZSB0aGUgYWN0dWFsIGltcGxlbWVu
dGF0aW9uIChhZnRlciBhbGwgY2xlYW51cCBhbmQgCnByZXBhcmF0aW9uIGNvbW1pdHMpLgoKClNp
bmNlcmVseQogwqAgwqAgU3ZlbgoKClsxXSAKaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRt
bC9sYXRlc3QvZGV2aWNldHJlZS9iaW5kaW5ncy9zdWJtaXR0aW5nLXBhdGNoZXMuaHRtbAoKPgo+
IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
