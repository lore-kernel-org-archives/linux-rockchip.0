Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30F38CD4F4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeTYjEf92MxXbmTV3QHEearV9RR52XkS6MmSJJx3gug=; b=fUj9+DHy7+uQL/
	qv8MkHK3BfdIg9OrMViPvBsJ0A6bsCrrlQ+IbULVfbb6ILQPvwDydw8KJHwI5Vja63tiDqAZ0jRgb
	da547rdaP3JaKIoKr+SmfsiQQaiuQBbIkFik1Q1aWlDRQ3zNm57ZthWdmHJwLU/s0qImSSvq1d1RW
	cJaimDu2TjnslfQM7nbzAO/m/Z8hnta8HPlUnOmJCyKEJcup5qO/CF8IKt2ink27kxEMqyp1qaS8S
	HC4SI+j4I3jjNBBe7C1ETOc1RnSTBLQNUPs2qN6ZR2+sBUMoYCzKxQpDMCvM/x2Vdd8q9ED/ajLrf
	oSy1W9w0hVq3Aj/XofIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXf-00000008itQ-09Zu;
	Fri, 15 May 2026 15:33:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXW-00000008id8-0PKI
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuXL-0005OF-Sr; Fri, 15 May 2026 17:33:15 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:52 +0200
Subject: [PATCH v6 26/28] media: rockchip: rga: disable multi-core support
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-26-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
In-Reply-To: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_083326_184342_E38BDAAB 
X-CRM114-Status: GOOD (  16.43  )
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

RGlzYWJsZSBtdWx0aS1jb3JlIHN1cHBvcnQgaW4gcHJlcGFyYXRpb24gb2YgdGhlIFJHQTMgYWRk
aXRpb24uIFRoZQpSSzM1ODggU29DIGZlYXR1cmVzIHR3byBlcXVhbCBSR0EzIGNvcmVzLiBUaGlz
IGFsbG93cyBzY2hlZHVsaW5nIG9mIHRoZQp3b3JrIGJldHdlZW4gYm90aCBjb3Jlcywgd2hpY2gg
aXMgbm90IHlldCBpbXBsZW1lbnRlZC4gVW50aWwgaXQgaXMKaW1wbGVtZW50ZWQgYXZvaWQgZXhw
b3NpbmcgYm90aCBjb3JlcyBhcyBpbmRlcGVuZGVudCB2aWRlbyBkZXZpY2VzIHRvCnByZXZlbnQg
YW4gQUJJIGJyZWFrYWdlIHdoZW4gbXVsdGktY29yZSBzdXBwb3J0IGlzIGFkZGVkLgoKVGhpcyBw
YXRjaCBpcyBjb3BpZWQgZnJvbSB0aGUgSGFudHJvIGRyaXZlciBwYXRjaCB0byBkaXNhYmxlIG11
bHRpIGNvcmUKc3VwcG9ydCBieSBTZWJhc3RpYW4gUmVpY2hlbC4gU2VlCmNvbW1pdCBjY2RlYjhk
NTdmN2YgKCJtZWRpYTogaGFudHJvOiBEaXNhYmxlIG11bHRpY29yZSBzdXBwb3J0IikKCkxpbms6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDYxODE4MzgxNi43NzU5Ny00LXNlYmFz
dGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20vClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25l
IDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8
c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCA0NyArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggOGQ2MGU5NGRhMzJkOC4uMDE1MmI4ZWYyZGEy
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMK
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTcxMSw2
ICs3MTEsNDkgQEAgc3RhdGljIGludCByZ2FfcGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX3JnYSAq
cmdhKQogCXJldHVybiAwOwogfQogCisvKgorICogU29tZSBTb0NzLCBsaWtlIFJLMzU4OCBoYXZl
IG11bHRpcGxlIGlkZW50aWNhbCBSR0EzIGNvcmVzLCBidXQgdGhlCisgKiBrZXJuZWwgaXMgY3Vy
cmVudGx5IG1pc3Npbmcgc3VwcG9ydCBmb3IgbXVsdGktY29yZSBoYW5kbGluZy4gRXhwb3NpbmcK
KyAqIHNlcGFyYXRlIGRldmljZXMgZm9yIGVhY2ggY29yZSB0byB1c2Vyc3BhY2UgaXMgYmFkLCBz
aW5jZSB0aGF0IGRvZXMKKyAqIG5vdCBhbGxvdyBzY2hlZHVsaW5nIHRhc2tzIHByb3Blcmx5IChh
bmQgY3JlYXRlcyBBQkkpLiBXaXRoIHRoaXMgd29ya2Fyb3VuZAorICogdGhlIGRyaXZlciB3aWxs
IG9ubHkgcHJvYmUgZm9yIHRoZSBmaXJzdCBjb3JlIGFuZCBlYXJseSBleGl0IGZvciB0aGUgb3Ro
ZXIKKyAqIGNvcmVzLiBPbmNlIHRoZSBkcml2ZXIgZ2FpbnMgbXVsdGktY29yZSBzdXBwb3J0LCB0
aGUgc2FtZSB0ZWNobmlxdWUKKyAqIGZvciBkZXRlY3RpbmcgdGhlIG1haW4gY29yZSBjYW4gYmUg
dXNlZCB0byBjbHVzdGVyIGFsbCBjb3JlcyB0b2dldGhlci4KKyAqLworc3RhdGljIGludCByZ2Ff
ZGlzYWJsZV9tdWx0aWNvcmUoc3RydWN0IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBkZXZpY2Vf
bm9kZSAqbm9kZSA9IE5VTEw7CisJY29uc3QgY2hhciAqY29tcGF0aWJsZTsKKwlib29sIGlzX21h
aW5fY29yZTsKKwlpbnQgcmV0OworCisJLyogSW50ZW50aW9uYWxseSBpZ25vcmVzIHRoZSBmYWxs
YmFjayBzdHJpbmdzICovCisJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmcoZGV2LT5vZl9u
b2RlLCAiY29tcGF0aWJsZSIsICZjb21wYXRpYmxlKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0
OworCisJLyogVGhlIGZpcnN0IGNvbXBhdGlibGUgYW5kIGF2YWlsYWJsZSBub2RlIGZvdW5kIGlz
IGNvbnNpZGVyZWQgdGhlIG1haW4gY29yZSAqLworCWRvIHsKKwkJbm9kZSA9IG9mX2ZpbmRfY29t
cGF0aWJsZV9ub2RlKG5vZGUsIE5VTEwsIGNvbXBhdGlibGUpOworCQlpZiAob2ZfZGV2aWNlX2lz
X2F2YWlsYWJsZShub2RlKSkKKwkJCWJyZWFrOworCX0gd2hpbGUgKG5vZGUpOworCisJaWYgKCFu
b2RlKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlzX21haW5fY29yZSA9IChkZXYtPm9mX25vZGUg
PT0gbm9kZSk7CisKKwlvZl9ub2RlX3B1dChub2RlKTsKKworCWlmICghaXNfbWFpbl9jb3JlKSB7
CisJCWRldl9pbmZvKGRldiwgIm1pc3NpbmcgbXVsdGktY29yZSBzdXBwb3J0LCBpZ25vcmluZyB0
aGlzIGluc3RhbmNlXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQorCisJcmV0dXJuIDA7Cit9
CisKIHN0YXRpYyBpbnQgcmdhX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7
CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhOwpAQCAtNzIxLDYgKzc2NCwxMCBAQCBzdGF0aWMg
aW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmICghcGRldi0+
ZGV2Lm9mX25vZGUpCiAJCXJldHVybiAtRU5PREVWOwogCisJcmV0ID0gcmdhX2Rpc2FibGVfbXVs
dGljb3JlKCZwZGV2LT5kZXYpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAlyZ2EgPSBk
ZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpyZ2EpLCBHRlBfS0VSTkVMKTsKIAlpZiAo
IXJnYSkKIAkJcmV0dXJuIC1FTk9NRU07CgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
