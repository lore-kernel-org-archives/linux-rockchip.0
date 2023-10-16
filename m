Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF9ACDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 14:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLOLCBbtfaQds//TQs7xePBxFNY3d8V9Uy6upmJkKxs=; b=YRZaDtTB6k9khx
	VczOiQgo+vHn2r6cFmZC2VSVfHLAekFtb9dHJO09ARcRp0rTcVcuGWeinRbcvX/yd19CeKVEcnlEG
	1NPOaradaYMgxo7LbGmqHOpeIXC3ZFGFmhJKAQ1OHnZN4F4TGFy8RBAyOrftli6ZMd5OCgf+gYioU
	0eNdwPmJIAGJ3DoahWxTy7CYYyYh1YpdUvUCe8iTjpwulUtYTDYsqzRUABqmCIXGDI7j6LnrJUI5W
	63waOHCAok2Af8NhRooIxzjVUxPBAQ6wSnBSoKsK/tWThos155x9/glUCe3UdKOVpw6ceAf5rU/Je
	6OT7AHVVmGgGpQsThKlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOeo-009sPW-2K;
	Mon, 16 Oct 2023 14:33:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOei-009sNl-0p;
	Mon, 16 Oct 2023 14:33:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id B0A15B8164C;
	Mon, 16 Oct 2023 14:33:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 364EBC433C8;
	Mon, 16 Oct 2023 14:33:11 +0000 (UTC)
Message-ID: <953e9c30-0060-45b7-b6e3-8f03d331b6b8@xs4all.nl>
Date: Mon, 16 Oct 2023 16:33:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 45/56] media: test-drivers: vivid: Increase max
 supported buffers for capture queues
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231012114642.19040-1-benjamin.gaignard@collabora.com>
 <20231012114642.19040-46-benjamin.gaignard@collabora.com>
 <0ca82921-b71a-4d87-a1f1-6a6158f07c8c@xs4all.nl>
 <b689e7d2-ff87-499e-a165-d227b1865488@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <b689e7d2-ff87-499e-a165-d227b1865488@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_073316_461196_67B5E1B6 
X-CRM114-Status: GOOD (  14.54  )
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

T24gMTYvMTAvMjAyMyAxNjoyMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMTYv
MTAvMjAyMyDDoCAxMjozMiwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDEyLzEwLzIw
MjMgMTM6NDYsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gQ2hhbmdlIHRoZSBtYXhpbXVt
IG51bWJlciBvZiBidWZmZXJzIG9mIHNvbWUgY2FwdHVyZSBxdWV1ZXMgaW4gb3JkZXIKPj4+IHRv
IHRlc3QgbWF4X251bV9idWZmZXJzIGZpZWxkLgo+Pj4KPj4+IEFsbG93IHRvIGFsbG9jYXRlIHVw
IHRvOgo+Pj4gLSA2NCBidWZmZXJzIGZvciB2aWRlbyBjYXB0dXJlIHF1ZXVlLgo+Pj4gLSAxMDI0
IGJ1ZmZlcnMgZm9yIHNkciBjYXB0dXJlIHF1ZXVlLgo+Pj4gLSAzMjc2OCBidWZmZXJzIGZvciB2
YmkgY2FwdHVyZSBxdWV1ZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFy
ZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVy
cy9tZWRpYS90ZXN0LWRyaXZlcnMvdml2aWQvdml2aWQtY29yZS5jIHwgNyArKysrKysrCj4+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpdmlkL3ZpdmlkLWNvcmUuYyBiL2RyaXZlcnMvbWVk
aWEvdGVzdC1kcml2ZXJzL3ZpdmlkL3ZpdmlkLWNvcmUuYwo+Pj4gaW5kZXggMzk0YzlmODFlYTcy
Li5iNTY1NjMzMDU3OGQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVy
cy92aXZpZC92aXZpZC1jb3JlLmMKPj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJz
L3ZpdmlkL3ZpdmlkLWNvcmUuYwo+Pj4gQEAgLTg3Niw2ICs4NzYsMTMgQEAgc3RhdGljIGludCB2
aXZpZF9jcmVhdGVfcXVldWUoc3RydWN0IHZpdmlkX2RldiAqZGV2LAo+Pj4gwqDCoMKgwqDCoCBx
LT50eXBlID0gYnVmX3R5cGU7Cj4+PiDCoMKgwqDCoMKgIHEtPmlvX21vZGVzID0gVkIyX01NQVAg
fCBWQjJfRE1BQlVGOwo+Pj4gwqDCoMKgwqDCoCBxLT5pb19tb2RlcyB8PSBWNEwyX1RZUEVfSVNf
T1VUUFVUKGJ1Zl90eXBlKSA/wqAgVkIyX1dSSVRFIDogVkIyX1JFQUQ7Cj4+PiArwqDCoMKgIGlm
IChidWZfdHlwZSA9PSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkUpCj4+PiArwqDCoMKgwqDC
oMKgwqAgcS0+bWF4X251bV9idWZmZXJzID0gNjQ7Cj4+PiArwqDCoMKgIGlmIChidWZfdHlwZSA9
PSBWNEwyX0JVRl9UWVBFX1NEUl9DQVBUVVJFKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHEtPm1heF9u
dW1fYnVmZmVycyA9IDEwMjQ7Cj4+PiArwqDCoMKgIGlmIChidWZfdHlwZSA9PSBWNEwyX0JVRl9U
WVBFX1ZCSV9DQVBUVVJFKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHEtPm1heF9udW1fYnVmZmVycyA9
IDMyNzY4Owo+PiBUaGlzIHNob3VsZCB1c2UgdGhlIHNhbWUgY2FsY3VsYXRpb24gYXMgTUFYX0JV
RkZFUl9JTkRFWC4KPj4KPj4gSSB3b25kZXIgaWYgdGhvc2UgZGVmaW5lcyBzaG91bGQgbW92ZSB0
byB2aWRlb2J1ZjItY29yZS5oIGluc3RlYWQuCj4gCj4gSSdtIG5vdCBzdXJlIGFib3V0IHdoYXQg
eW91IHdhbnQgaGVyZSwgcS0+bWF4X251bV9idWZmZXJzIGlzIGNsYW1wZWQgaW4gdmIyX2NvcmVf
cXVldWVfaW5pdCgpOgo+IAo+IC8qIFRoZSBtYXhpbXVtIGlzIGxpbWl0ZWQgYnkgb2Zmc2V0IGNv
b2tpZSBlbmNvZGluZyBwYXR0ZXJuICovCj4gcS0+bWF4X251bV9idWZmZXJzID0gbWluX3QodW5z
aWduZWQgaW50LCBxLT5tYXhfbnVtX2J1ZmZlcnMsIE1BWF9CVUZGRVJfSU5ERVgpOwo+IAo+IERv
IHlvdSB3YW50IHRvIHJldXNlIE1BWF9CVUZGRVJfSU5ERVggZm9yIHRoZXNlIGRyaXZlcnMgPwoK
QWgsIEkgZm9yZ290IGFib3V0IHRoZSBjbGFtcGluZy4KCkFkZCBhIGNvbW1lbnQgbGlrZSB0aGlz
OgoKLyoKICogVGhlIG1heGltdW0gbnVtYmVyIG9mIGJ1ZmZlcnMgaXMgMzI3NjggaWYgUEFHRV9T
SElGVCA9PSAxMiwKICogc2VlIGFsc28gTUFYX0JVRkZFUl9JTkRFWCBpbiB2aWRlb2J1ZjItY29y
ZS5jLiBJdCB3aWxsIGJlIGxlc3MgaWYKICogUEFHRV9TSElGVCA+IDEyLCBidXQgdGhlbiBtYXhf
bnVtX2J1ZmZlcnMgd2lsbCBiZSBjbGFtcGVkIGJ5CiAqIHZpZGVvYnVmMi1jb3JlLmMgdG8gTUFY
X0JVRkZFUl9JTkRFWC4KICovCgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4gUmVnYXJkcywKPiBCZW5q
YW1pbgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiDCoMKgwqDCoEhhbnMKPj4KPj4+ICsKPj4+IMKg
wqDCoMKgwqAgaWYgKGFsbG9jYXRvcnNbZGV2LT5pbnN0XSAhPSAxKQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgIHEtPmlvX21vZGVzIHw9IFZCMl9VU0VSUFRSOwo+Pj4gwqDCoMKgwqDCoCBxLT5kcnZf
cHJpdiA9IGRldjsKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
