Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9370D2F03E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lapZFq7s07PIMs1S3oaJ6z5WHMT+COf2jthHwfYenQ0=; b=sRTY4OOgLctCad
	KHKUIqYR4oTDcb9z+60+EPlLOiIEnTLNLsRHnCC5ABaEx+dWomb/yW1JY4mKrGHVIrUeEWbcFuCBU
	/gX1iglB8b98Mz9lXRNuJEKTzbBb01mpiKSj9hBn6BwtpTX9vnlHGndjZVOSyfSfTql6jYrBoMobs
	PBdfgx4455BAx9vJBw+gM6VR8oRcSIqQgW3jrrmBEUircELcBbp5Er1aZTvAVVbrJwU5Ai4MYIvFW
	mVroamEwtt9lT4f8hjHEOhOhbPd7yf+sN5ybh0gfABft2qjAhv7ZhivqydIv5pCnSX2TEKrlJ0tyc
	Dc5uxR2LRpEro5JN4Sug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkGx-0000000ERgF-1WWU;
	Tue, 27 Jan 2026 14:42:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkFS-0000000EQQx-0J4A
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:40:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkFI-0007YT-GJ; Tue, 27 Jan 2026 15:40:44 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:30 +0100
Subject: [PATCH v3 21/27] media: rockchip: rga: remove size from rga_frame
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-21-77b273067beb@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260127_064054_188651_02C9B51C 
X-CRM114-Status: GOOD (  14.39  )
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

VGhlIHNpemUgbWVtYmVyIGlzIG9ubHkgdXNlZCBmb3IgdGhlIG1tdSBwYWdlIHRhYmxlIG1hcHBp
bmcuClRoZXJlZm9yZSBhdm9pZCBzdG9yaW5nIHRoZSB2YWx1ZSBhbmQgaW5zdGVhZCBvbmx5IGNh
bGN1bGF0ZSBpdAppbiBwbGFjZS4gVGhpcyBhbHNvIGF2b2lkcyB0aGUgY2FsY3VsYXRpb24gZW50
aXJlbHkgd2hlbiBhbiBleHRlcm5hbAppb21tdSBpcyB1c2VkLgoKU2lnbmVkLW9mZi1ieTogU3Zl
biBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgfCA2ICsrKysrLQogZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgIHwgOCArKy0tLS0tLQogZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAgIHwgMSAtCiAzIGZpbGVzIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgYi9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKaW5kZXggNGU4MmNhMWE1ZThkOS4uYzBjYzg4
NWJhNThhOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLWJ1Zi5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1i
dWYuYwpAQCAtNzksNiArNzksOCBAQCBzdGF0aWMgaW50IHJnYV9idWZfaW5pdChzdHJ1Y3QgdmIy
X2J1ZmZlciAqdmIpCiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7CiAJc3Ry
dWN0IHJnYV9mcmFtZSAqZiA9IHJnYV9nZXRfZnJhbWUoY3R4LCB2Yi0+dmIyX3F1ZXVlLT50eXBl
KTsKIAlzaXplX3Qgbl9kZXNjID0gMDsKKwl1MzIgc2l6ZSA9IDA7CisJdTggaTsKIAogCWlmIChJ
U19FUlIoZikpCiAJCXJldHVybiBQVFJfRVJSKGYpOwpAQCAtODYsNyArODgsOSBAQCBzdGF0aWMg
aW50IHJnYV9idWZfaW5pdChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCiAJaWYgKCFyZ2FfaGFzX2lu
dGVybmFsX2lvbW11KHJnYSkpCiAJCXJldHVybiAwOwogCi0Jbl9kZXNjID0gRElWX1JPVU5EX1VQ
KGYtPnNpemUsIFBBR0VfU0laRSk7CisJZm9yIChpID0gMDsgaSA8IGYtPnBpeC5udW1fcGxhbmVz
OyBpKyspCisJCXNpemUgKz0gZi0+cGl4LnBsYW5lX2ZtdFtpXS5zaXplaW1hZ2U7CisJbl9kZXNj
ID0gRElWX1JPVU5EX1VQKHNpemUsIFBBR0VfU0laRSk7CiAKIAlyYnVmLT5uX2Rlc2MgPSBuX2Rl
c2M7CiAJcmJ1Zi0+ZG1hX2Rlc2MgPSBkbWFfYWxsb2NfY29oZXJlbnQocmdhLT5kZXYsCmRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGIyZWU1OTIzNWQxZTMu
LjU5NDYzYzdmMjZiNmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jCkBAIC0yMjEsNyArMjIxLDYgQEAgc3RhdGljIGludCByZ2Ffb3BlbihzdHJ1Y3QgZmlsZSAq
ZmlsZSkKIAl9OwogCiAJZGVmX2ZyYW1lLnN0cmlkZSA9IChkZWZfd2lkdGggKiBkZWZfZnJhbWUu
Zm10LT5kZXB0aCkgPj4gMzsKLQlkZWZfZnJhbWUuc2l6ZSA9IGRlZl9mcmFtZS5zdHJpZGUgKiBk
ZWZfaGVpZ2h0OwogCiAJY3R4ID0ga3phbGxvYyhzaXplb2YoKmN0eCksIEdGUF9LRVJORUwpOwog
CWlmICghY3R4KQpAQCAtNDU5LDkgKzQ1OCw2IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3NfZm10KHN0
cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCiAJZnJt
ID0gcmdhX2dldF9mcmFtZShjdHgsIGYtPnR5cGUpOwogCWlmIChJU19FUlIoZnJtKSkKIAkJcmV0
dXJuIFBUUl9FUlIoZnJtKTsKLQlmcm0tPnNpemUgPSAwOwotCWZvciAoaSA9IDA7IGkgPCBwaXhf
Zm10LT5udW1fcGxhbmVzOyBpKyspCi0JCWZybS0+c2l6ZSArPSBwaXhfZm10LT5wbGFuZV9mbXRb
aV0uc2l6ZWltYWdlOwogCWZybS0+Zm10ID0gcmdhX2ZtdF9maW5kKHJnYSwgcGl4X2ZtdC0+cGl4
ZWxmb3JtYXQpOwogCWZybS0+c3RyaWRlID0gcGl4X2ZtdC0+cGxhbmVfZm10WzBdLmJ5dGVzcGVy
bGluZTsKIApAQCAtNDg1LDEwICs0ODEsMTAgQEAgc3RhdGljIGludCB2aWRpb2Nfc19mbXQoc3Ry
dWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAlmcm0t
PnBpeCA9ICpwaXhfZm10OwogCiAJdjRsMl9kYmcoZGVidWcsIDEsICZyZ2EtPnY0bDJfZGV2LAot
CQkgIlslc10gZm10IC0gJXA0Y2MgJWR4JWQgKHN0cmlkZSAlZCwgc2l6ZWltYWdlICVkKVxuIiwK
KwkJICJbJXNdIGZtdCAtICVwNGNjICVkeCVkIChzdHJpZGUgJWQpXG4iLAogCQkgIFY0TDJfVFlQ
RV9JU19PVVRQVVQoZi0+dHlwZSkgPyAiT1VUUFVUIiA6ICJDQVBUVVJFIiwKIAkJICAmZnJtLT5m
bXQtPmZvdXJjYywgcGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQtPmhlaWdodCwKLQkJICBmcm0tPnN0
cmlkZSwgZnJtLT5zaXplKTsKKwkJICBmcm0tPnN0cmlkZSk7CiAKIAlmb3IgKGkgPSAwOyBpIDwg
cGl4X2ZtdC0+bnVtX3BsYW5lczsgaSsrKSB7CiAJCXY0bDJfZGJnKGRlYnVnLCAxLCAmcmdhLT52
NGwyX2RldiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXgg
OTVmYTdmZDFjNTA5YS4uMjgzOGZjNzc4NWY3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmgKQEAgLTM0LDcgKzM0LDYgQEAgc3RydWN0IHJnYV9mcmFtZSB7CiAK
IAkvKiBWYXJpYWJsZXMgdGhhdCBjYW4gY2FsY3VsYXRlZCBvbmNlIGFuZCByZXVzZWQgKi8KIAl1
MzIgc3RyaWRlOwotCXUzMiBzaXplOwogfTsKIAogc3RydWN0IHJnYV9kbWFfZGVzYyB7CgotLSAK
Mi41Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
