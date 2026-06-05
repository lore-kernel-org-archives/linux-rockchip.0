Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9325DCD8C88
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8IQd+2qFvMmo2Dpxtmyuxx0trp6ehbs5FTYQYx7phQ=; b=0R6EYZbaf5Y03+
	y64VhuBnUgY6/7WxY4x4SwV/+5Tl3wNwWafO8yRnD0CAS9sjVwAZJ7uxt3lgCy2q8CAcprDp6KqJf
	X9rsQWmc6eUvUfe4NgWXuauBeSPCYgjKxG4mKUxLAyUqwcTnZPrIJaEIX4TJZZsZtxkbtxQUfiJPu
	SATVQl28CzA39MVqz3C7eoKxfkVOIt/F5gnbbj38nm9dKh9vx+D4NcKoEtrtq8Ir1iS9EC1odc0KM
	Tb8LfZkXpVeYqiaQYRrUzr/iKDqnqeKLAJi1ffMotiM/OGbR+wNgVIIhft8DW5QbGA7+G0IsmyNPe
	5JxaUOmzFBDiEqpgmvYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciK-00000001ELn-107t;
	Fri, 05 Jun 2026 22:08:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciH-00000001EDH-0wEF
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVciC-0000LW-G9; Sat, 06 Jun 2026 00:08:20 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:59 +0200
Subject: [PATCH 13/17] media: rockchip: rga: bind all cores to the master
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-13-3ec2b15675f7@pengutronix.de>
References: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
In-Reply-To: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_150825_260282_CF205B7F 
X-CRM114-Status: GOOD (  19.04  )
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

QmluZCBhbGwgY29yZSBjb21wb25lbnRzIHRvIHRoZSBtYXN0ZXIgY29tcG9uZW50LiBQcmV2aW91
c2x5IG9ubHkgdGhlCmZpcnN0IGNvcmUgaGFzIGJlZW4gYWRkZWQgdG8gdGhlIG1hc3RlciBkZXZp
Y2UgdG8gYXZvaWQgY3JlYXRpbmcKbXVsdGlwbGUgdmlkZW8gZGV2aWNlcy4gQXMgdGhlIHZpZGVv
IGRldmljZSBjcmVhdGlvbiBoYXMgYmVlbiBtb3ZlZCB0bwp0aGUgbWFzdGVyIGNvbXBvbmVudCwg
aXQgYWxsb3dzIHVzIHRvIGJpbmQgYWxsIGNvcmVzIHdpdGhvdXQgY3JlYXRpbmcKYWRkaXRpb25h
bCB2aWRlbyBkZXZpY2VzLgoKV2UgZXhwZWN0IHRoYXQgYWxsIGNvcmVzIHRvIHJlcG9ydCB0aGUg
c2FtZSB2ZXJzaW9uIG51bWJlciwgYXMgd2Ugb25seQphZGQgY29yZXMgd2l0aCB0aGUgc2FtZSBj
b21wYXRpYmxlIHZhbHVlLiBUaGlzIGlzIGltcG9ydGFudCwgYXMgIHdlCnNldHVwIHRoZSBjb21t
YW5kIGJ1ZmZlciBiZWZvcmUgYWN0dWFsbHkgc2NoZWR1bGluZyB0aGUgd29yayB0byBhCnNwZWNp
ZmljIGNvcmUuIFRoZXJlZm9yZSBhZGp1c3RpbmcgY29tbWFuZCBidWZmZXJzIGRlcGVuZGluZyBv
biB0aGUKdmVyc2lvbiByZWdpc3RlciBvbmx5IHdvcmtzIHdoZW4gYWxsIGNvcmVzIGhhdmUgdGhl
IHNhbWUgdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBl
bmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jIHwgMjIgKysrKysrKysrKystLS0tLS0tLS0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLmMKaW5kZXggMDQxM2I4NTE4ZGZjOC4uNmFkZDZjNTEwYzEyNyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTc0Miw2ICs3NDIsNyBAQCBzdGF0aWMg
aW50IHJnYV9jb3JlX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0
ZXIsIHZvaWQgKmRhdGEpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gZGF0YTsKIAlz
dHJ1Y3QgcmdhX2NvcmUgKmNvcmUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlzdHJ1Y3Qgcm9j
a2NoaXBfcmdhX3ZlcnNpb24gdmVyc2lvbjsKIAlpbnQgcmV0ID0gMDsKIAogCWNvcmUtPnJnYSA9
IHJnYTsKQEAgLTc1MCwxNCArNzUxLDIxIEBAIHN0YXRpYyBpbnQgcmdhX2NvcmVfYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkKIAlpZiAo
cmV0IDwgMCkKIAkJcmV0dXJuIHJldDsKIAotCXJnYS0+dmVyc2lvbiA9IHJnYS0+aHctPmdldF92
ZXJzaW9uKGNvcmUpOworCXZlcnNpb24gPSByZ2EtPmh3LT5nZXRfdmVyc2lvbihjb3JlKTsKIAog
CXY0bDJfaW5mbygmcmdhLT52NGwyX2RldiwgIkhXIFZlcnNpb246IDB4JTAyeC4lMDJ4XG4iLAot
CQkgIHJnYS0+dmVyc2lvbi5tYWpvciwgcmdhLT52ZXJzaW9uLm1pbm9yKTsKKwkJICB2ZXJzaW9u
Lm1ham9yLCB2ZXJzaW9uLm1pbm9yKTsKKworCWlmIChyZ2EtPm51bV9jb3JlcykgeworCQkvKiB3
ZSBhcmUgbm90IHRoZSBmaXJzdCBjb3JlLCBleHBlY3QgdGhhdCB3ZSBoYXZlIHRoZSBzYW1lIHZl
cnNpb24gKi8KKwkJaWYgKHJnYS0+dmVyc2lvbi5tYWpvciAhPSB2ZXJzaW9uLm1ham9yIHx8IHJn
YS0+dmVyc2lvbi5taW5vciAhPSB2ZXJzaW9uLm1pbm9yKQorCQkJdjRsMl93YXJuKCZyZ2EtPnY0
bDJfZGV2LCAiRGV0ZWN0ZWQgbXVsdGktY29yZSBzZXR1cCB3aXRoIGRpZmZlcmVudCBjb3JlIHZl
cnNpb25zIVxuIik7CisJfSBlbHNlCisJCXJnYS0+dmVyc2lvbiA9IHZlcnNpb247CiAKIAlwbV9y
dW50aW1lX3B1dChjb3JlLT5kZXYpOwogCi0JcmdhLT5jb3Jlc1swXSA9IGNvcmU7CisJcmdhLT5j
b3Jlc1tyZ2EtPm51bV9jb3JlcysrXSA9IGNvcmU7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTk4Mywx
NCArOTkxLDYgQEAgc3RhdGljIGludCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIAkJY29tcG9uZW50X21hdGNoX2FkZF9yZWxlYXNlKGRldiwgJm1hdGNoLCBjb21wb25l
bnRfcmVsZWFzZV9vZiwKIAkJCQkJICAgIGNvbXBvbmVudF9jb21wYXJlX29mLCBjb3JlX25vZGUp
OwogCQludW1fY29yZXMrKzsKLQotCQkvKgotCQkgKiBBcyBtdWx0aSBjb3JlIGlzIG5vdCBpbXBs
ZW1lbnRlZCB5ZXQsCi0JCSAqIGJyZWFrIG91dCBvZiB0aGUgbG9vcCB0byBvbmx5IGhhdmUgb25l
IGNvcmUgcGVyIHJvY2tjaGlwX3JnYSBzdHJ1Y3QuCi0JCSAqIEFsc28gcHV0IHRoZSBub2RlLCB3
aGljaCBvdGhlcndpc2Ugd291bGQndmUgYmVlbiBkb25lIGJ5IHRoZSBsb29wIGl0ZXJhdGlvbi4K
LQkJICovCi0JCW9mX25vZGVfcHV0KGNvcmVfbm9kZSk7Ci0JCWJyZWFrOwogCX0KIAogCWlmICgh
bWF0Y2gpCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCmluZGV4IGZj
ZjFlZjdkMjAyOWYuLjYyMzc0MzZiOTg0ZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS5oCkBAIC04OCw2ICs4OCw3IEBAIHN0cnVjdCByb2NrY2hpcF9yZ2Egewog
CiAJY29uc3Qgc3RydWN0IHJnYV9odyAqaHc7CiAKKwl1OCBudW1fY29yZXM7CiAJc3RydWN0IHJn
YV9jb3JlICpjb3Jlc1tdOwogfTsKIAoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
