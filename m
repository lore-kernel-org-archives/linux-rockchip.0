Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4140B109C02F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 14:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FePVDBCteGypD+dOpbWApi+pwUt39Jx3z0kNcb9dsJw=; b=M5m2Flo3xTij2/
	FRRuZMR0sCtPAZh9FIfmBEA9zUF3c/PDTHPHCz9NSN4LC8Y0oRXvpB7ZWNt1M2V20H28DYUXpWQAy
	Oji3mPMLbYaYIK3nlRwfEZLyDxYPc1V5RLm8pyUmlAZjw6nUcfB6oqRrsOPit1rSwPu+16WCncJpt
	zkJFTC15QgqRP7aXBu/g14UhxomZLDdvehjRIOsDn1Ud0yThGV2yyiGWu3t2dKBRykTqbIkCa4tWu
	BrJu9BvfD5cfanFtL8ORFXBLhPj+90KwVXfZcizst3yhxkJEJ6xIQZ9grcYWAbENDR0K42l1Fyzbk
	Qu2gvdWzEYklji/RLx3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PaG-00000003ghU-3pcC;
	Wed, 25 Mar 2026 14:51:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZh-00000003fcm-03uT
	for linux-rockchip@bombadil.infradead.org;
	Wed, 25 Mar 2026 14:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=1NCmTrgFGYyMjZ4MVAhFwTEYw9Un6zve3+Ketg2tq+I=; b=QPY0YVvlHVnd4o1snvSPTfTzxl
	CsnKGjzNYlzR5EG8hV1CJp/d7NmxdvSZ7EU7SZot2DDj6wK6O/5wemoI1BvIuO4afWdX8zntdV6B1
	duLNamAXx9Kvax0P9n6NIIjDO9G6dgznLywsiGWmZG60f01YeSPFOxFf5CvEecm8zjYd+1HoFqDQr
	P3fdsbg77rf9fL9pecRSHPfg0pM4FzNjgbC9sHVtZY1gWda/SL7ooi3ipB3k4FCOxmWW5lCQtk+zx
	bdqLQNyynvMfKpcBT3lkNmgEnpSkbdaVLQEByezGok3lvksQLSCSpbTw8AvmncjEgYe7BaQ/NWCcr
	4zsLtxJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZa-00000006OXc-3Rr6
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 14:51:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1w5PZW-00050C-UM; Wed, 25 Mar 2026 15:51:02 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 25 Mar 2026 15:50:56 +0100
Subject: [PATCH v4 25/27] media: rockchip: rga: disable multi-core support
MIME-Version: 1.0
Message-Id: <20260325-spu-rga3-v4-25-e90ec1c61354@pengutronix.de>
References: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
In-Reply-To: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_145106_979443_70A62628 
X-CRM114-Status: GOOD (  16.77  )
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
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggYjBjODhhZDY0N2U5Ni4uZmQ5MmVjZjQwOGUw
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMK
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTcwOCw2
ICs3MDgsNDkgQEAgc3RhdGljIGludCByZ2FfcGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX3JnYSAq
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
CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhOwpAQCAtNzE4LDYgKzc2MSwxMCBAQCBzdGF0aWMg
aW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmICghcGRldi0+
ZGV2Lm9mX25vZGUpCiAJCXJldHVybiAtRU5PREVWOwogCisJcmV0ID0gcmdhX2Rpc2FibGVfbXVs
dGljb3JlKCZwZGV2LT5kZXYpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAlyZ2EgPSBk
ZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpyZ2EpLCBHRlBfS0VSTkVMKTsKIAlpZiAo
IXJnYSkKIAkJcmV0dXJuIC1FTk9NRU07CgotLSAKMi41My4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
