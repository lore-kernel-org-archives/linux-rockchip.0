Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE83AD2F03F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RtrpSrY3jp9xRPHUZDZgRgnHFeBzWpjzg2eAuyPieM=; b=IpCgQkls7D4hoC
	DImgVObH1N3fsDIktJb3Kmpck8V+PLhqhuf223TAuew71oJ2/G4u4GdZJacEvgKJweRUVQMZErW0a
	LYg+c1U39UrCKrIKLv9AoXUTHg1wknl8iRfB5lM3VaQs5OgnqKKv9MGjmpTwikzNp8foocO1KBjFZ
	m0Z1smOuySFkxESeqetRdtF02qPREfRwcoILT/23K0eOU9oW3Rn3PKvmM9a/NwDhIKd4tVBDQCZXn
	YG4W7i3CSZ0FIjuTHZ0UKG/GSz9o63xUVM2TQBbaf8iuX30QtkZjB1Lj+m2MJv0SOBY0w2R0XGSkn
	BEgEtUsqKExlHAm4NNzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkHJ-0000000ES3u-2jsp;
	Tue, 27 Jan 2026 14:42:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkFe-0000000EQfV-2Eff
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:41:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkFS-0007YT-EG; Tue, 27 Jan 2026 15:40:54 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:34 +0100
Subject: [PATCH v3 25/27] media: rockchip: rga: disable multi-core support
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-25-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
In-Reply-To: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_064106_627363_3626D3C7 
X-CRM114-Status: GOOD (  16.94  )
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
dGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20vClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwg
PHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMgfCA0NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggNDM2NDQ5OTVjMTUyZS4uZTQ1YjljODUzZDY1OSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTcwOCw2ICs3MDgs
NDkgQEAgc3RhdGljIGludCByZ2FfcGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKQog
CXJldHVybiAwOwogfQogCisvKgorICogU29tZSBTb0NzLCBsaWtlIFJLMzU4OCBoYXZlIG11bHRp
cGxlIGlkZW50aWNhbCBSR0EzIGNvcmVzLCBidXQgdGhlCisgKiBrZXJuZWwgaXMgY3VycmVudGx5
IG1pc3Npbmcgc3VwcG9ydCBmb3IgbXVsdGktY29yZSBoYW5kbGluZy4gRXhwb3NpbmcKKyAqIHNl
cGFyYXRlIGRldmljZXMgZm9yIGVhY2ggY29yZSB0byB1c2Vyc3BhY2UgaXMgYmFkLCBzaW5jZSB0
aGF0IGRvZXMKKyAqIG5vdCBhbGxvdyBzY2hlZHVsaW5nIHRhc2tzIHByb3Blcmx5IChhbmQgY3Jl
YXRlcyBBQkkpLiBXaXRoIHRoaXMgd29ya2Fyb3VuZAorICogdGhlIGRyaXZlciB3aWxsIG9ubHkg
cHJvYmUgZm9yIHRoZSBmaXJzdCBjb3JlIGFuZCBlYXJseSBleGl0IGZvciB0aGUgb3RoZXIKKyAq
IGNvcmVzLiBPbmNlIHRoZSBkcml2ZXIgZ2FpbnMgbXVsdGktY29yZSBzdXBwb3J0LCB0aGUgc2Ft
ZSB0ZWNobmlxdWUKKyAqIGZvciBkZXRlY3RpbmcgdGhlIG1haW4gY29yZSBjYW4gYmUgdXNlZCB0
byBjbHVzdGVyIGFsbCBjb3JlcyB0b2dldGhlci4KKyAqLworc3RhdGljIGludCByZ2FfZGlzYWJs
ZV9tdWx0aWNvcmUoc3RydWN0IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBkZXZpY2Vfbm9kZSAq
bm9kZSA9IE5VTEw7CisJY29uc3QgY2hhciAqY29tcGF0aWJsZTsKKwlib29sIGlzX21haW5fY29y
ZTsKKwlpbnQgcmV0OworCisJLyogSW50ZW50aW9uYWxseSBpZ25vcmVzIHRoZSBmYWxsYmFjayBz
dHJpbmdzICovCisJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmcoZGV2LT5vZl9ub2RlLCAi
Y29tcGF0aWJsZSIsICZjb21wYXRpYmxlKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJ
LyogVGhlIGZpcnN0IGNvbXBhdGlibGUgYW5kIGF2YWlsYWJsZSBub2RlIGZvdW5kIGlzIGNvbnNp
ZGVyZWQgdGhlIG1haW4gY29yZSAqLworCWRvIHsKKwkJbm9kZSA9IG9mX2ZpbmRfY29tcGF0aWJs
ZV9ub2RlKG5vZGUsIE5VTEwsIGNvbXBhdGlibGUpOworCQlpZiAob2ZfZGV2aWNlX2lzX2F2YWls
YWJsZShub2RlKSkKKwkJCWJyZWFrOworCX0gd2hpbGUgKG5vZGUpOworCisJaWYgKCFub2RlKQor
CQlyZXR1cm4gLUVJTlZBTDsKKworCWlzX21haW5fY29yZSA9IChkZXYtPm9mX25vZGUgPT0gbm9k
ZSk7CisKKwlvZl9ub2RlX3B1dChub2RlKTsKKworCWlmICghaXNfbWFpbl9jb3JlKSB7CisJCWRl
dl9pbmZvKGRldiwgIm1pc3NpbmcgbXVsdGktY29yZSBzdXBwb3J0LCBpZ25vcmluZyB0aGlzIGlu
c3RhbmNlXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQorCisJcmV0dXJuIDA7Cit9CisKIHN0
YXRpYyBpbnQgcmdhX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3Ry
dWN0IHJvY2tjaGlwX3JnYSAqcmdhOwpAQCAtNzE4LDYgKzc2MSwxMCBAQCBzdGF0aWMgaW50IHJn
YV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmICghcGRldi0+ZGV2Lm9m
X25vZGUpCiAJCXJldHVybiAtRU5PREVWOwogCisJcmV0ID0gcmdhX2Rpc2FibGVfbXVsdGljb3Jl
KCZwZGV2LT5kZXYpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAlyZ2EgPSBkZXZtX2t6
YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpyZ2EpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXJnYSkK
IAkJcmV0dXJuIC1FTk9NRU07CgotLSAKMi41Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
