Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25B7BD15DAA
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIAhLehuuH2mFA5gV7bT4HdTGTPKj37KrvaBdoBDS3Y=; b=QYdBxjPxb1MeGY
	nr38W0rz633TYfHBorbXma2Gs9vEGck9uoU78PUqaJs6RdE4L3DwND6MZxMc3VhLWDdmEOKX/2fC1
	rLZ4LuRkmB1FX0RBdESzuaVtqTrwTqe4oaEHb1f4TQp0bM98aEhQyZM1HE0yNBT5CKBZRXIf3Q+gb
	WuyUbzvb5NByc2vrZz0HV1lYEmYIHD+E9F2I9i/R9J2h+E8bpgQSUxBRW9GAQVk/HRjzoRqyiPFpL
	F3YROZ7jOrYWTKoZNecU+IqNzJDS1/7ILrwWqDc6EV7AAi7r9rwQDmbjWJVjQ5Ka9VG/P7vtTu9ji
	P4ILnrYOOYLftRIP/1/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBb-00000006kPa-2HlJ;
	Wed, 03 Dec 2025 15:54:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBO-00000006k58-33or
	for linux-rockchip@bombadil.infradead.org;
	Wed, 03 Dec 2025 15:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=eXlCYLKytt6bMVYsvejN+JhApYIAXXIKxDqbVuzdt8A=; b=VMjIrG3U1+wARBw7qSgUM9Yo3v
	ZqekFxn9q6Y/UrEPvhQilZ/2lrP24i9oznVC4PQyLP6djxZdZr4z9nXVcUdkRs+/DSxvIJmPJGBOh
	X0ufe8U0OYVhQCsiNgfHfibx4RyCK7InSW8UZjH3TUlCNdOVGHjNOvE6c0LUbejl+k2SMtXaVy3Ux
	MMPKlCcmRMNXVBdHodqelF3WHvzMXZPKLBeZbiBwA72D9T48faC53ON6s7b3BrJwtlzrf7LK5ViK9
	gVeeCRBhwhcqqO6F6aE9AEgIp1vkiU7PW4NYeOaOVX6/rNNyPbAw6xr4sr0e3XWHt5jN5EpggUEuZ
	5cdB88yw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoJn-00000002TMS-1MVg
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 14:59:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAe-0007dW-9P; Wed, 03 Dec 2025 16:53:36 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:38 +0100
Subject: [PATCH v2 16/22] media: rockchip: rga: remove size from rga_frame
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-16-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
In-Reply-To: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251203_145859_372836_6523F496 
X-CRM114-Status: GOOD (  14.16  )
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
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKaW5kZXggZThkMWUyZTU3OTE0MC4uOGRlNmI5
YzNmZDYxNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLWJ1Zi5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1i
dWYuYwpAQCAtNzksOSArNzksMTMgQEAgc3RhdGljIGludCByZ2FfYnVmX2luaXQoc3RydWN0IHZi
Ml9idWZmZXIgKnZiKQogCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGN0eC0+cmdhOwogCXN0
cnVjdCByZ2FfZnJhbWUgKmYgPSByZ2FfZ2V0X2ZyYW1lKGN0eCwgdmItPnZiMl9xdWV1ZS0+dHlw
ZSk7CiAJc2l6ZV90IG5fZGVzYyA9IDA7CisJdTMyIHNpemUgPSAwOworCXU4IGk7CiAKIAlpZiAo
cmdhX2hhc19pbnRlcm5hbF9pb21tdShyZ2EpKSB7Ci0JCW5fZGVzYyA9IERJVl9ST1VORF9VUChm
LT5zaXplLCBQQUdFX1NJWkUpOworCQlmb3IgKGkgPSAwOyBpIDwgZi0+cGl4Lm51bV9wbGFuZXM7
IGkrKykKKwkJCXNpemUgKz0gZi0+cGl4LnBsYW5lX2ZtdFtpXS5zaXplaW1hZ2U7CisJCW5fZGVz
YyA9IERJVl9ST1VORF9VUChzaXplLCBQQUdFX1NJWkUpOwogCiAJCXJidWYtPm5fZGVzYyA9IG5f
ZGVzYzsKIAkJcmJ1Zi0+ZG1hX2Rlc2MgPSBkbWFfYWxsb2NfY29oZXJlbnQocmdhLT5kZXYsCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IDFiZmM0MDIxZjRh
N2IuLjBkN2IwYmNhYzk1MGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jCkBAIC0yMjEsNyArMjIxLDYgQEAgc3RhdGljIGludCByZ2Ffb3BlbihzdHJ1Y3QgZmls
ZSAqZmlsZSkKIAl9OwogCiAJZGVmX2ZyYW1lLnN0cmlkZSA9IChkZWZfd2lkdGggKiBkZWZfZnJh
bWUuZm10LT5kZXB0aCkgPj4gMzsKLQlkZWZfZnJhbWUuc2l6ZSA9IGRlZl9mcmFtZS5zdHJpZGUg
KiBkZWZfaGVpZ2h0OwogCiAJY3R4ID0ga3phbGxvYyhzaXplb2YoKmN0eCksIEdGUF9LRVJORUwp
OwogCWlmICghY3R4KQpAQCAtNDI4LDkgKzQyNyw2IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3NfZm10
KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYpCiAJ
ZnJtID0gcmdhX2dldF9mcmFtZShjdHgsIGYtPnR5cGUpOwogCWlmIChJU19FUlIoZnJtKSkKIAkJ
cmV0dXJuIFBUUl9FUlIoZnJtKTsKLQlmcm0tPnNpemUgPSAwOwotCWZvciAoaSA9IDA7IGkgPCBw
aXhfZm10LT5udW1fcGxhbmVzOyBpKyspCi0JCWZybS0+c2l6ZSArPSBwaXhfZm10LT5wbGFuZV9m
bXRbaV0uc2l6ZWltYWdlOwogCWZybS0+Zm10ID0gcmdhX2ZtdF9maW5kKHJnYSwgcGl4X2ZtdC0+
cGl4ZWxmb3JtYXQpOwogCWZybS0+c3RyaWRlID0gcGl4X2ZtdC0+cGxhbmVfZm10WzBdLmJ5dGVz
cGVybGluZTsKIApAQCAtNDQzLDEwICs0MzksMTAgQEAgc3RhdGljIGludCB2aWRpb2Nfc19mbXQo
c3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAlm
cm0tPnBpeCA9ICpwaXhfZm10OwogCiAJdjRsMl9kYmcoZGVidWcsIDEsICZyZ2EtPnY0bDJfZGV2
LAotCQkgIlslc10gZm10IC0gJXA0Y2MgJWR4JWQgKHN0cmlkZSAlZCwgc2l6ZWltYWdlICVkKVxu
IiwKKwkJICJbJXNdIGZtdCAtICVwNGNjICVkeCVkIChzdHJpZGUgJWQpXG4iLAogCQkgIFY0TDJf
VFlQRV9JU19PVVRQVVQoZi0+dHlwZSkgPyAiT1VUUFVUIiA6ICJDQVBUVVJFIiwKIAkJICAmZnJt
LT5mbXQtPmZvdXJjYywgcGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQtPmhlaWdodCwKLQkJICBmcm0t
PnN0cmlkZSwgZnJtLT5zaXplKTsKKwkJICBmcm0tPnN0cmlkZSk7CiAKIAlmb3IgKGkgPSAwOyBp
IDwgcGl4X2ZtdC0+bnVtX3BsYW5lczsgaSsrKSB7CiAJCXY0bDJfZGJnKGRlYnVnLCAxLCAmcmdh
LT52NGwyX2RldiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5k
ZXggZmM4MWJjNTU2Mjc5Mi4uNDY2ZDU2OGI5ZTYxNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmgKQEAgLTM3LDcgKzM3LDYgQEAgc3RydWN0IHJnYV9mcmFtZSB7
CiAKIAkvKiBWYXJpYWJsZXMgdGhhdCBjYW4gY2FsY3VsYXRlZCBvbmNlIGFuZCByZXVzZWQgKi8K
IAl1MzIgc3RyaWRlOwotCXUzMiBzaXplOwogfTsKIAogc3RydWN0IHJnYV9kbWFfZGVzYyB7Cgot
LSAKMi41Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
