Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB022CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9lqZceoBQhITJqy8LZgtu9Zn0H/cqFowOxtib6f+i0=; b=E2PhL1TUjod1ej
	IakCB0b7ihhXFygggu3yT0MqFlo8ijsrJKlqx1heXL3ODIHWJUk5BhBJm3eE4yV7Yu/KlwzpvYw/Z
	wDIyrnxkiEYhTnIOBeC9F/KvjbkAk0ew63CuUlAYSPsFs7WFQGKJamyOtSBZ+c+a+RkvSCJIX2PgA
	SC2kL+B4ayoaP/3qFr4IjSnI0SXfdBus5Ex4d7rRwldHnbRZ0WKvSxQwDzjoGgOIEKnFlrLLz7Krl
	r/qhkghVw9f2H5gfVd4xcgR1hY3GCAlycyct55aEIcIaTpTGmmvPi2RfNAtmoEKpU31uZAWJF/JPu
	A1LpzOagRWJ3bA9O6MMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4Z6-000000086eB-3g9f;
	Thu, 21 May 2026 14:40:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4Z2-000000086bx-0N4f
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:39:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Ys-0002Y8-Hi; Thu, 21 May 2026 16:39:46 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Yq-0017VH-2e;
	Thu, 21 May 2026 16:39:45 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wQ4Yr-00000004XAS-171E;
	Thu, 21 May 2026 16:39:45 +0200
Date: Thu, 21 May 2026 16:39:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sven =?utf-8?Q?P=C3=BCschel?= <s.pueschel@pengutronix.de>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	nicolas@ndufresne.ca, sebastian.reichel@collabora.com,
	p.zabel@pengutronix.de
Subject: Re: [PATCH v7 16/28] media: rockchip: rga: reuse cmdbuf contents
Message-ID: <ag8ZMXSBpkdNc2xM@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Sven =?utf-8?Q?P=C3=BCschel?= <s.pueschel@pengutronix.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	nicolas@ndufresne.ca, sebastian.reichel@collabora.com,
	p.zabel@pengutronix.de
References: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
 <20260521-spu-rga3-v7-16-3f33e8c7145f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-spu-rga3-v7-16-3f33e8c7145f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_073956_287012_E42B536A 
X-CRM114-Status: GOOD (  30.89  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAwMDo0NDoyMSArMDIwMCwgU3ZlbiBQw7xzY2hlbCB3cm90ZToK
PiBSZXVzZSB0aGUgY29tbWFuZCBidWZmZXIgY29udGVudHMgaW5zdGVhZCBvZiBjb21wbGV0ZWx5
IHdyaXRpbmcgaXQKPiBmb3IgZXZlcnkgZnJhbWUuIFRoZXJlZm9yZSB3ZSBvbmx5IG5lZWQgdG8g
cmVwbGFjZSB0aGUgc291cmNlIGFuZAo+IGRlc3RpbmF0aW9uIGFkZHJlc3NlcyBmb3IgZWFjaCBm
cmFtZS4gVGhpcyByZWR1Y2VzIHRoZSBhbW91bnQgb2YgQ1BVCj4gYW5kIG1lbW9yeSBvcGVyYXRp
b25zIGRvbmUgaW4gZWFjaCBmcmFtZS4gQSBuZXcgY21kYnVmX2RpcnR5IGZsYWcgbm90ZXMKPiBp
ZiB0aGUgY21kYnVmIGhhcyB0byBiZSByZXdyaXR0ZW4gb24gdGhlIG5leHQgZnJhbWUuCj4gCj4g
VGhlIGluaXRpYWwgaWRlYSBvZiBpbml0aWFsaXppbmcgdGhlIGNtZGJ1ZiBvbiBzdHJlYW1vbiBi
cm9rZSB0aGUKPiBhYmlsaXR5IHRvIHVwZGF0ZSBjb250cm9scyB3aGlsZSBzdHJlYW1pbmcgKGUu
Zy4gbWlycm9yaW5nKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNj
aGVsQHBlbmd1dHJvbml4LmRlPgo+IAo+IC0tLQo+IENoYW5nZXMgaW4gdjY6Cj4gLSBSZXdvcmtl
ZCB0aGUgY29tbWl0IHRvIG5vdCBzZXR1cCB0aGUgY21kYnVmIG9uIHN0cmVhbW9uIGJ1dCByYXRo
ZXIKPiAgIHJlLWluaXRpYWxpemUgaXQgb24gdGhlIG5leHQgZnJhbWUgd2hlbiBzb21ldGhpbmcg
Y2hhbmdlZC4KPiAtIFNhc2FoaWtvIGZsYWdnZWQgdGhlIGNtZGJ1ZiBzZXR1cCBhdCBzdHJlYW1v
bjoKPiAgIGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDQyOC1zcHUtcmdhMy12
NS0wLWViN2Y1ZDAxOWQ4NiU0MHBlbmd1dHJvbml4LmRlP3BhcnQ9MTcKPiAtIERyb3BwZWQgUmV2
aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNv
bT4KPiAgIGR1ZSB0byB0aGUgcmV3b3JrZWQgcGF0Y2ggYW5kIGNvbW1pdCBtZXNzYWdlIGNvbnRl
bnRzCj4gCj4gQ2hhbmdlcyBpbiB2NToKPiAtIERvbid0IHNldCB0aGUgZmxpcHBpbmcgYW5kIHJv
dGF0aW9uIHZhbHVlcyBhdCBzdHJlYW1vbiBhbmQgcHJldmVudGluZwo+ICAgdGhlIHVzZXJzcGFj
ZSBmcm9tIGNoYWluZ2luZyB0aGVtIGF0IHJ1bnRpbWUKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgfCAxMyArKysrKysrKystLS0tCj4gIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jICAgIHwgMTEgKysrKysrKysrLS0K
PiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAgfCAgMiArKwo+
ICAzIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKPiBpbmRleCBk
YWMzY2I2YWExN2QzLi41NjdkMzllNThkMzNmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKPiBAQCAtNDE3LDggKzQxNyw2IEBAIHN0YXRpYyB2
b2lkIHJnYV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCj4gIHsKPiAgCXN0cnVjdCByb2Nr
Y2hpcF9yZ2EgKnJnYSA9IGN0eC0+cmdhOwo+ICAKPiAtCW1lbXNldChjdHgtPmNtZGJ1Zl92aXJ0
LCAwLCBSR0FfQ01EQlVGX1NJWkUpOwo+IC0KPiAgCXJnYV9jbWRfc2V0X3NyY19hZGRyKGN0eCwg
c3JjLT5kbWFfZGVzY19wYSk7Cj4gIAkvKgo+ICAJICogRHVlIHRvIGhhcmR3YXJlIGJ1ZywKPiBA
QCAtNDI3LDExICs0MjUsOSBAQCBzdGF0aWMgdm9pZCByZ2FfY21kX3NldChzdHJ1Y3QgcmdhX2N0
eCAqY3R4LAo+ICAJcmdhX2NtZF9zZXRfc3JjMV9hZGRyKGN0eCwgZHN0LT5kbWFfZGVzY19wYSk7
Cj4gIAo+ICAJcmdhX2NtZF9zZXRfZHN0X2FkZHIoY3R4LCBkc3QtPmRtYV9kZXNjX3BhKTsKPiAt
CXJnYV9jbWRfc2V0X21vZGUoY3R4KTsKPiAgCj4gIAlyZ2FfY21kX3NldF9zcmNfaW5mbyhjdHgs
ICZzcmMtPm9mZnNldCk7Cj4gIAlyZ2FfY21kX3NldF9kc3RfaW5mbyhjdHgsICZkc3QtPm9mZnNl
dCk7Cj4gLQlyZ2FfY21kX3NldF90cmFuc19pbmZvKGN0eCk7Cj4gIAo+ICAJcmdhX3dyaXRlKHJn
YSwgUkdBX0NNRF9CQVNFLCBjdHgtPmNtZGJ1Zl9waHkpOwo+ICAKPiBAQCAtNDQwLDYgKzQzNiwx
NCBAQCBzdGF0aWMgdm9pZCByZ2FfY21kX3NldChzdHJ1Y3QgcmdhX2N0eCAqY3R4LAo+ICAJCQkJ
ICAgUEFHRV9TSVpFLCBETUFfQklESVJFQ1RJT05BTCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lk
IHJnYV9od19zZXR1cF9jbWRidWYoc3RydWN0IHJnYV9jdHggKmN0eCkKPiArewo+ICsJbWVtc2V0
KGN0eC0+Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSk7Cj4gKwo+ICsJcmdhX2NtZF9z
ZXRfbW9kZShjdHgpOwo+ICsJcmdhX2NtZF9zZXRfdHJhbnNfaW5mbyhjdHgpOwo+ICt9Cj4gKwo+
ICBzdGF0aWMgdm9pZCByZ2FfaHdfc3RhcnQoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAo+ICAJ
CQkgc3RydWN0IHJnYV92Yl9idWZmZXIgKnNyYywgIHN0cnVjdCByZ2FfdmJfYnVmZmVyICpkc3Qp
Cj4gIHsKPiBAQCAtNTgyLDYgKzU4Niw3IEBAIGNvbnN0IHN0cnVjdCByZ2FfaHcgcmdhMl9odyA9
IHsKPiAgCS5tYXhfaGVpZ2h0ID0gTUFYX0hFSUdIVCwKPiAgCS5zdHJpZGVfYWxpZ25tZW50ID0g
NCwKPiAgCj4gKwkuc2V0dXBfY21kYnVmID0gcmdhX2h3X3NldHVwX2NtZGJ1ZiwKPiAgCS5zdGFy
dCA9IHJnYV9od19zdGFydCwKPiAgCS5oYW5kbGVfaXJxID0gcmdhX2hhbmRsZV9pcnEsCj4gIAku
Z2V0X3ZlcnNpb24gPSByZ2FfZ2V0X3ZlcnNpb24sCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMKPiBpbmRleCBkMDgwY2I2NzI3NDBiLi4zOTRiMTRiOTQ2OWRmIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKPiBAQCAtMzgs
NiArMzgsMTEgQEAgc3RhdGljIHZvaWQgZGV2aWNlX3J1bih2b2lkICpwcnYpCj4gIAl1bnNpZ25l
ZCBsb25nIGZsYWdzOwo+ICAKPiAgCXNwaW5fbG9ja19pcnFzYXZlKCZyZ2EtPmN0cmxfbG9jaywg
ZmxhZ3MpOwo+ICsJaWYgKGN0eC0+Y21kYnVmX2RpcnR5KSB7Cj4gKwkJY3R4LT5jbWRidWZfZGly
dHkgPSBmYWxzZTsKPiArCQlyZ2EtPmh3LT5zZXR1cF9jbWRidWYoY3R4KTsKPiArCX0KPiArCXNw
aW5fdW5sb2NrX2lycXJlc3RvcmUoJnJnYS0+Y3RybF9sb2NrLCBmbGFncyk7Cj4gIAo+ICAJcmdh
LT5jdXJyID0gY3R4Owo+ICAKPiBAQCAtNDcsOCArNTIsNiBAQCBzdGF0aWMgdm9pZCBkZXZpY2Vf
cnVuKHZvaWQgKnBydikKPiAgCWRzdCA9IHY0bDJfbTJtX25leHRfZHN0X2J1ZihjdHgtPmZoLm0y
bV9jdHgpOwo+ICAKPiAgCXJnYS0+aHctPnN0YXJ0KHJnYSwgdmJfdG9fcmdhKHNyYyksIHZiX3Rv
X3JnYShkc3QpKTsKPiAtCj4gLQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZyZ2EtPmN0cmxfbG9j
aywgZmxhZ3MpOwoKSSBndWVzcyB0aGF0IHRoZSB1bmxvY2sgY2FuIGJlIG1vdmVkLCBiZWNhdXNl
IHJlbGV2YW50IGNvbnRlbnQgb2YgdGhlCmNtZGJ1ZiBpcyBub3cgb25seSBjaGFuZ2VkIGluIHRo
ZSBzZXR1cF9jbWQoKSBmdW5jdGlvbiBhbmQgY2hhbmdlcyBkb25lCmJ5IHJnYV9jbWRfc2V0KCkg
ZG9uJ3QgaGF2ZSB0byBiZSBzeW5jaHJvbml6ZWQuCgpJdCB3b3VsZCBiZSBoZWxwZnVsIGlmIHRo
aXMgaXMgZXhwbGFpbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZSBvciBldmVuCm1vdmVkIHRvIGEg
c2VwYXJhdGUgcGF0Y2guCgpNaWNoYWVsCgo+ICB9Cj4gIAo+ICBzdGF0aWMgaXJxcmV0dXJuX3Qg
cmdhX2lzcihpbnQgaXJxLCB2b2lkICpwcnYpCj4gQEAgLTE0MSw2ICsxNDQsNyBAQCBzdGF0aWMg
aW50IHJnYV9zX2N0cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPiAgCQljdHgtPmZpbGxfY29s
b3IgPSBjdHJsLT52YWw7Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gKwljdHgtPmNtZGJ1Zl9kaXJ0eSA9
IHRydWU7Cj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZjdHgtPnJnYS0+Y3RybF9sb2NrLCBm
bGFncyk7Cj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBAIC0yMjgsNiArMjMyLDcgQEAgc3RhdGljIGlu
dCByZ2Ffb3BlbihzdHJ1Y3QgZmlsZSAqZmlsZSkKPiAgCQlyZXQgPSAtRU5PTUVNOwo+ICAJCWdv
dG8gcmVsX2N0eDsKPiAgCX0KPiArCWN0eC0+Y21kYnVmX2RpcnR5ID0gdHJ1ZTsKPiAgCj4gIAlj
dHgtPnJnYSA9IHJnYTsKPiAgCS8qIFNldCBkZWZhdWx0IGZvcm1hdHMgKi8KPiBAQCAtNDQ4LDYg
KzQ1Myw3IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3NfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lk
ICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCj4gIAlmcm0tPmNyb3AuaGVpZ2h0ID0gcGl4
X2ZtdC0+aGVpZ2h0Owo+ICAKPiAgCWZybS0+cGl4ID0gKnBpeF9mbXQ7Cj4gKwljdHgtPmNtZGJ1
Zl9kaXJ0eSA9IHRydWU7Cj4gIAo+ICAJdjRsMl9kYmcoZGVidWcsIDEsICZyZ2EtPnY0bDJfZGV2
LAo+ICAJCSAiWyVzXSBmbXQgLSAlcDRjYyAlZHglZCAoc3RyaWRlICVkLCBzaXplaW1hZ2UgJWQp
XG4iLAo+IEBAIC01NjQsNiArNTcwLDcgQEAgc3RhdGljIGludCB2aWRpb2Nfc19zZWxlY3Rpb24o
c3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsCj4gIAl9Cj4gIAo+ICAJZi0+Y3JvcCA9IHMt
PnI7Cj4gKwljdHgtPmNtZGJ1Zl9kaXJ0eSA9IHRydWU7Cj4gIAo+ICAJcmV0dXJuIHJldDsKPiAg
fQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Eu
aCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCj4gaW5kZXggMzg1
MTgxNDY5MTBhNi4uNTM2MGYwOTJmZWNmMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5oCj4gQEAgLTU1LDYgKzU1LDcgQEAgc3RydWN0IHJnYV9jdHggewo+
ICAKPiAgCXZvaWQgKmNtZGJ1Zl92aXJ0Owo+ICAJZG1hX2FkZHJfdCBjbWRidWZfcGh5Owo+ICsJ
Ym9vbCBjbWRidWZfZGlydHk7Cj4gIAo+ICAJaW50IG9zZXF1ZW5jZTsKPiAgCWludCBjc2VxdWVu
Y2U7Cj4gQEAgLTE1Miw2ICsxNTMsNyBAQCBzdHJ1Y3QgcmdhX2h3IHsKPiAgCXUzMiBtYXhfd2lk
dGgsIG1heF9oZWlnaHQ7Cj4gIAl1OCBzdHJpZGVfYWxpZ25tZW50Owo+ICAKPiArCXZvaWQgKCpz
ZXR1cF9jbWRidWYpKHN0cnVjdCByZ2FfY3R4ICpjdHgpOwo+ICAJdm9pZCAoKnN0YXJ0KShzdHJ1
Y3Qgcm9ja2NoaXBfcmdhICpyZ2EsCj4gIAkJICAgICAgc3RydWN0IHJnYV92Yl9idWZmZXIgKnNy
Yywgc3RydWN0IHJnYV92Yl9idWZmZXIgKmRzdCk7Cj4gIAlib29sICgqaGFuZGxlX2lycSkoc3Ry
dWN0IHJvY2tjaGlwX3JnYSAqcmdhKTsKPiAKPiAtLSAKPiAyLjU0LjAKPiAKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
