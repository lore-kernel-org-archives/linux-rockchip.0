Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E772C982CA
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r42ZD0HiM+8o5curIJLEil/yGQy7vDZ9f5+iisxPnXU=; b=Rimu/cu3QBkV8k
	EeAwY8SBZFRSP7vA1nvcgeMAuXmg0IVb8q73rORfXD2iAUKZNhd0OkfY42ZaLqV9k3alcSKmZ7iml
	FV5Qm9sDqt8sIwaJKFdbYULRNkIgeedl8QNehk+oASPgOeVtQp7JiLaXO8EYpi8lhKxhTQtUR8Z0d
	JhaJg3NwPB4UOTFQQDLRtrmPW8XaPkoidXxdtyzq281jA5ojattY8XpHfVtEDipuDnM2PiVusTOEV
	zQjHJBkYnZpgOo84vYH06/AYlNr4a3DGOyzLA835zg54mopPnqLXgKv+6zzpz4dL+/QfmrqMkxi5c
	FLZg1I4uUIJnQgkcYs4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLr-00000009Xiu-3ssG;
	Wed, 16 Sep 2026 15:15:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLg-00000009Xc4-2rzG;
	Wed, 16 Sep 2026 15:15:03 +0000
X-PTX-Original-Recipient: ezequiel@vanguardiasur.com.ar
X-PTX-Original-Recipient: jacob-chen@iotwrt.com
X-PTX-Original-Recipient: mchehab@kernel.org
X-PTX-Original-Recipient: detlev.casanova@collabora.com
X-PTX-Original-Recipient: heiko@sntech.de
X-PTX-Original-Recipient: linux-kernel@vger.kernel.org
X-PTX-Original-Recipient: linux-media@vger.kernel.org
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-PTX-Original-Recipient: lgs201920130244@gmail.com
X-PTX-Original-Recipient: p.zabel@pengutronix.de
X-PTX-Original-Recipient: kernel@pengutronix.de
X-PTX-Original-Recipient: s.pueschel@pengutronix.de
X-PTX-Original-Recipient: m.tretter@pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8F694205A02;
	Wed, 16 Sep 2026 17:14:58 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGo-001Fsx-1s;
	Wed, 16 Sep 2026 17:09:58 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:58 +0200
Subject: [PATCH v2 17/17] media: rockchip: rga: schedule jobs to multiple
 cores
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-17-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
In-Reply-To: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Guangshuo Li <lgs201920130244@gmail.com>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_081500_886355_D3987B8D 
X-CRM114-Status: GOOD (  18.44  )
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

U2NoZWR1bGUgam9icyB0byBtdWx0aXBsZSBjb3JlcyB0byB1dGlsaXplIGFsbCBSR0EgY29yZXMu
IFRvIGF2b2lkIHJhY2UKY29uZGl0aW9ucyB3aGVuIHNlbGVjdGluZyB0aGUgbmV4dCBmcmVlIGNv
cmUgYSBkZWRpY2F0ZWQgc3BpbmxvY2sgaXMgYWRkZWQuCgpOb3RlIHRoYXQgdGhpcyBkb2Vzbid0
IGluY3JlYXNlIHRoZSBtYXggZnJhbWUgcmF0ZSBvZiBhIHNpbmdsZQpzdHJlYW0sIGFzIGEgY29u
dGV4dCB3aWxsIHdhaXQgZm9yIHRoZSBqb2IgdG8gZmluaXNoIGJlZm9yZSBzdGFydGluZwp0aGUg
bmV4dCBkZXZpY2VfcnVuIGNhbGwuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1
ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgoKLS0tCnYyCi0gU2V0IGNvcmUtPmN1cnIgdG8gbnVsbCBm
aXJzdCBpbiBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0IGVycm9yIHBhdGgKICAoaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA2LXNwdS1yZ2EzbXVsdGljb3JlLXYxLTAtM2Vj
MmIxNTY3NWY3JTQwcGVuZ3V0cm9uaXguZGU/cGFydD0xNSkKLSBBbHNvIHByb3RlY3QgYWRkaW5n
L3JlbW92aW5nIGNvcmVzIHdpdGggdGhlIHNwaW5sb2NrIGluIGJpbmQvdW5iaW5kCi0tLQogZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCAzMCArKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggYjJl
ZWFlMGE2MTc3MS4uNjI5NDgyNWVhYWNmZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmMKQEAgLTM4LDEzICszOCwyOSBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfcnVu
KHZvaWQgKnBydikKIHsKIAlzdHJ1Y3QgcmdhX2N0eCAqY3R4ID0gcHJ2OwogCXN0cnVjdCByb2Nr
Y2hpcF9yZ2EgKnJnYSA9IGN0eC0+cmdhOwotCXN0cnVjdCByZ2FfY29yZSAqY29yZSA9IHJnYS0+
Y29yZXNbMF07CisJc3RydWN0IHJnYV9jb3JlICpjb3JlID0gTlVMTDsKIAlzdHJ1Y3QgdmIyX3Y0
bDJfYnVmZmVyICpzcmMsICpkc3Q7CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKIAlpbnQgcmV0Owor
CXVuc2lnbmVkIGludCBpOworCisJc3Bpbl9sb2NrX2lycXNhdmUoJnJnYS0+Y29yZXNfbG9jaywg
ZmxhZ3MpOworCWZvciAoaSA9IDA7IGkgPCByZ2EtPm51bV9jb3JlczsgaSsrKSB7CisJCWlmICgh
cmdhLT5jb3Jlc1tpXS0+Y3VycikgeworCQkJY29yZSA9IHJnYS0+Y29yZXNbaV07CisJCQljb3Jl
LT5jdXJyID0gY3R4OworCQkJYnJlYWs7CisJCX0KKwl9CisJc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmcmdhLT5jb3Jlc19sb2NrLCBmbGFncyk7CisKKwlXQVJOX09OQ0UoIWNvcmUsICJObyBmcmVl
IGNvcmUgYWx0aG91Z2ggbWF4IHBhcmFsbGVsIGpvYnMgbWF0Y2hlcyB0aGUgY29yZSBjb3VudCFc
biIpOworCWlmICghY29yZSkKKwkJcmV0dXJuOwogCiAJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVf
YW5kX2dldChjb3JlLT5kZXYpOwogCWlmIChyZXQgPCAwKSB7CisJCWNvcmUtPmN1cnIgPSBOVUxM
OwogCQl2NGwyX20ybV9idWZfZG9uZV9hbmRfam9iX2ZpbmlzaChyZ2EtPm0ybV9kZXYsIGN0eC0+
ZmgubTJtX2N0eCwKIAkJCQkJCSBWQjJfQlVGX1NUQVRFX0VSUk9SKTsKIAkJcmV0dXJuOwpAQCAt
NTgsOCArNzQsNiBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfcnVuKHZvaWQgKnBydikKIAl9CiAJc3Bp
bl91bmxvY2tfaXJxcmVzdG9yZSgmcmdhLT5jdHJsX2xvY2ssIGZsYWdzKTsKIAotCWNvcmUtPmN1
cnIgPSBjdHg7Ci0KIAlzcmMgPSB2NGwyX20ybV9uZXh0X3NyY19idWYoY3R4LT5maC5tMm1fY3R4
KTsKIAlzcmMtPnNlcXVlbmNlID0gY3R4LT5vc2VxdWVuY2UrKzsKIApAQCAtNzQ4LDYgKzc2Miw3
IEBAIHN0YXRpYyBpbnQgcmdhX2NvcmVfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBk
ZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBk
YXRhOwogCXN0cnVjdCByZ2FfY29yZSAqY29yZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCXN0
cnVjdCByb2NrY2hpcF9yZ2FfdmVyc2lvbiB2ZXJzaW9uOworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7
CiAJaW50IHJldCA9IDA7CiAKIAljb3JlLT5yZ2EgPSByZ2E7CkBAIC03ODUsNyArODAwLDkgQEAg
c3RhdGljIGludCByZ2FfY29yZV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmlj
ZSAqbWFzdGVyLCB2b2lkICpkYXRhKQogCiAJcG1fcnVudGltZV9wdXQoY29yZS0+ZGV2KTsKIAor
CXNwaW5fbG9ja19pcnFzYXZlKCZyZ2EtPmNvcmVzX2xvY2ssIGZsYWdzKTsKIAlyZ2EtPmNvcmVz
W3JnYS0+bnVtX2NvcmVzKytdID0gY29yZTsKKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZyZ2Et
PmNvcmVzX2xvY2ssIGZsYWdzKTsKIAogCXJldHVybiAwOwogfQpAQCAtNzk2LDYgKzgxMyw3IEBA
IHN0YXRpYyB2b2lkIHJnYV9jb3JlX3VuYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBk
ZXZpY2UgKm1hc3RlciwKIAlzdHJ1Y3QgcmdhX2NvcmUgKmNvcmUgPSBkZXZfZ2V0X2RydmRhdGEo
ZGV2KTsKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBjb3JlLT5yZ2E7CiAJdTggaTsKKwl1
bnNpZ25lZCBsb25nIGZsYWdzOwogCiAJLyogUmVtb3ZlIG91ciBjb3JlIGZyb20gdGhlIGxpc3Qg
Ki8KIAlmb3IgKGkgPSAwOyBpIDwgcmdhLT5udW1fY29yZXM7IGkrKykgewpAQCAtODEwLDggKzgy
OCwxMCBAQCBzdGF0aWMgdm9pZCByZ2FfY29yZV91bmJpbmQoc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QgZGV2aWNlICptYXN0ZXIsCiAJCQkJaW9tbXVfZGV0YWNoX2RldmljZShkb21haW4sIGNv
cmUtPmRldik7CiAJCX0KIAorCQlzcGluX2xvY2tfaXJxc2F2ZSgmcmdhLT5jb3Jlc19sb2NrLCBm
bGFncyk7CiAJCXJnYS0+Y29yZXNbaV0gPSByZ2EtPmNvcmVzW3JnYS0+bnVtX2NvcmVzIC0gMV07
CiAJCXJnYS0+bnVtX2NvcmVzLS07CisJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnJnYS0+Y29y
ZXNfbG9jaywgZmxhZ3MpOwogCQlicmVhazsKIAl9CiAKQEAgLTk3Nyw2ICs5OTcsOSBAQCBzdGF0
aWMgaW50IHJnYV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAkJZ290byByZWxfbTJtOwogCX0K
IAorCS8qIGFmdGVyIGJpbmRpbmcgYWxsIGNvcmVzIG51bV9jb3JlcyBoYXMgdGhlIHByb3BlciBu
dW1iZXIgb2YgY29yZXMgKi8KKwl2NGwyX20ybV9zZXRfbWF4X3BhcmFsbGVsX2pvYnMocmdhLT5t
Mm1fZGV2LCByZ2EtPm51bV9jb3Jlcyk7CisKIAl2NGwyX2luZm8oJnJnYS0+djRsMl9kZXYsICJS
ZWdpc3RlcmVkICVzIGFzIC9kZXYvJXNcbiIsCiAJCSAgdmZkLT5uYW1lLCB2aWRlb19kZXZpY2Vf
bm9kZV9uYW1lKHZmZCkpOwogCkBAIC0xMDQ3LDYgKzEwNzAsNyBAQCBzdGF0aWMgaW50IHJnYV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4gZGV2X2Vycl9wcm9i
ZShkZXYsIC1FTk9ERVYsICJmYWlsZWQgdG8gZ2V0IG1hdGNoIGRhdGFcbiIpOwogCiAJc3Bpbl9s
b2NrX2luaXQoJnJnYS0+Y3RybF9sb2NrKTsKKwlzcGluX2xvY2tfaW5pdCgmcmdhLT5jb3Jlc19s
b2NrKTsKIAltdXRleF9pbml0KCZyZ2EtPm11dGV4KTsKIAogCWRldl9zZXRfZHJ2ZGF0YShkZXYs
IHJnYSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCmluZGV4IDUy
MjAyMWMzZTAyNDkuLmIwNDYwODMyNDRiZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS5oCkBAIC04Niw2ICs4Niw3IEBAIHN0cnVjdCByb2NrY2hpcF9yZ2Egewog
CXN0cnVjdCBtdXRleCBtdXRleDsKIAkvKiBjdHJsIHBhcm0gbG9jayAqLwogCXNwaW5sb2NrX3Qg
Y3RybF9sb2NrOworCXNwaW5sb2NrX3QgY29yZXNfbG9jazsKIAogCWNvbnN0IHN0cnVjdCByZ2Ff
aHcgKmh3OwogCgotLSAKMi41NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
