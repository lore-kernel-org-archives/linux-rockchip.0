Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51025C982C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDALVIJOqvW1X7yFZmzzvLH/cPiGiMlBiLKEYp6rt4Y=; b=3x48ERn5v/AQvh
	8th2BiywWUWHFB/cB0DaQz/gRai/6MfA1c0oOkC1Q6swxr7Nj6yPdUSeK987kkt7lG5V0IVQy52IT
	cavYzw5CkF33HfrUGcmA/UEl0Molt5iia14/3KWm7eLYZmBafK+0AMLPuh9HRMXU6FEfvax8p/AYL
	+QNG2Vb0lwhyQg5MfwAxpGPpb1Wdkr8s2ejp/OGDEcn0W2I0+dFnzAxbWN3JLouhQGk+ZIvGPTWhR
	67VEHlasc3HwhQP448JbfGixNh1O8rXDWxPO3DA63GpTnY+E6Hcp3xE/9738i0pP6wtjGyNoJox8q
	extinF+8Nn07gcLysO8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rHQ-00000009WHu-1dYI;
	Wed, 16 Sep 2026 15:10:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rGn-00000009VsR-2rB1;
	Wed, 16 Sep 2026 15:09:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=bSNpnl3YoGJtc9BnTit8G19EBus5Id7TAijalgyO3vc=; b=bl8KL755RX0Mj5lcHBrtp/MSDD
	LNmkz9t6rBAmLKNLsYI5cIhO6CsS2OYSlEHzSEMh+H4Dx+J70i72xOWVdznGWPZsaItOm+/RL7G7E
	j+sHTAm2bveBCkAWN99122kbBoSiR4aBV3DDcU+CZ33uW8YfmPK2N/XoBROtTJq2Avb81n5xfv/lE
	P6aZP8TdnYf/MZ0PIKrphf4ztSCCS6/jXjeGKX0f6xADFO7JFimjgy/jE8Hppl85WqT7pWN5T4Xod
	aBjjDSsWhqG4VzWtz6gOVQtFepo2m1Fis8zofC/nOA1+nKj0a3E8Qa6e+inmp33e0EylzZg0At/io
	PRYneUCA==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6rGk-000000081KS-1FzW;
	Wed, 16 Sep 2026 15:09:56 +0000
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
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2277C2059FA;
	Wed, 16 Sep 2026 17:09:52 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGi-001Fsx-01;
	Wed, 16 Sep 2026 17:09:52 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:49 +0200
Subject: [PATCH v2 08/17] media: rockchip: rga: move power handling to
 device_run
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-8-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260916_160954_537399_071D9FDE 
X-CRM114-Status: GOOD (  17.18  )
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

TW92ZSB0aGUgcG93ZXIgaGFuZGxpbmcgdG8gdGhlIGRldmljZV9ydW4gZnVuY3Rpb24gaW4gcHJl
cGFyYXRpb24gZm9yCmVuYWJsaW5nIG11bHRpcGxlIGNvcmVzLiBUaGlzIGFsbG93cyB0byBwb3dl
ciB0aGUgb25seSB0aGUgbmVjZXNzYXJ5IGNvcmVzCmluc3RlYWQgb2YgcG93ZXJpbmcgYWxsIGF2
YWlsYWJsZSBjb3Jlcy4KCkFzIHRoZSBkZWNpc2lvbiBvbiB3aGljaCBjb3JlIHRoZSBnaXZlbiBq
b2IgaXMgZXhlY3V0ZWQgd2lsbCBiZSBkb25lIGluCmRldmljZV9ydW4sIHdlIGNhbiBvbmx5IHBv
d2VyIHRvIGNvcnJlY3QgY29yZSB0aGVyZS4KClRvIGF2b2lkIHVucG93ZXJpbmcgdGhlIGNvcmUg
aW4gYSBzdHJlYW1pbmcgc3RhdGUgc3dpdGNoIHRvIGF1dG9zdXNwZW5kLgpUaGlzIGF2b2lkcyBw
b3dlcmluZyBkb3duIHRoZSBjb3JlIHdoZW4gdGhlIG5leHQgZnJhbWUgaXMgc2NoZWR1bGVkIGlu
CnRoZSBuZXh0IDUwbXMuIFRoZSB0aW1lb3V0IG1hcHMgdG8gYSBmcmFtZXJhdGUgb2YgMjBmcHMs
IHdoaWNoIHNob3VsZCBiZQpwcmV0dHkgdW5jb21tb24gaW4gYSBub3JtYWwgdmlkZW8gc3RyZWFt
LgoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5k
ZT4KCi0tLQp2MgotIGFsc28gc2V0IGF1dG9zdXNwZW5kIGZsYWcgd2l0aCBwbV9ydW50aW1lX3Vz
ZV9hdXRvc3VzcGVuZAogIChodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MDYt
c3B1LXJnYTNtdWx0aWNvcmUtdjEtMC0zZWMyYjE1Njc1ZjclNDBwZW5ndXRyb25peC5kZT9wYXJ0
PTYpCi0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jIHwg
MTIgLS0tLS0tLS0tLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Eu
YyAgICAgfCAxMyArKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS1idWYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS1idWYuYwppbmRleCBjMGVhNjAwMzMzNmJmLi4zZjdjM2M2OGUwY2I4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jCkBAIC0yNDIsMTQg
KzI0Miw2IEBAIHN0YXRpYyBpbnQgcmdhX2J1Zl9wcmVwYXJlX3N0cmVhbWluZyhzdHJ1Y3QgdmIy
X3F1ZXVlICpxKQogc3RhdGljIGludCByZ2FfYnVmX3N0YXJ0X3N0cmVhbWluZyhzdHJ1Y3QgdmIy
X3F1ZXVlICpxLCB1bnNpZ25lZCBpbnQgY291bnQpCiB7CiAJc3RydWN0IHJnYV9jdHggKmN0eCA9
IHZiMl9nZXRfZHJ2X3ByaXYocSk7Ci0Jc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5y
Z2E7Ci0JaW50IHJldDsKLQotCXJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQocmdhLT5k
ZXYpOwotCWlmIChyZXQgPCAwKSB7Ci0JCXJnYV9idWZfcmV0dXJuX2J1ZmZlcnMocSwgVkIyX0JV
Rl9TVEFURV9RVUVVRUQpOwotCQlyZXR1cm4gcmV0OwotCX0KIAogCWlmIChWNEwyX1RZUEVfSVNf
T1VUUFVUKHEtPnR5cGUpKQogCQljdHgtPm9zZXF1ZW5jZSA9IDA7CkBAIC0yNjEsMTEgKzI1Myw3
IEBAIHN0YXRpYyBpbnQgcmdhX2J1Zl9zdGFydF9zdHJlYW1pbmcoc3RydWN0IHZiMl9xdWV1ZSAq
cSwgdW5zaWduZWQgaW50IGNvdW50KQogCiBzdGF0aWMgdm9pZCByZ2FfYnVmX3N0b3Bfc3RyZWFt
aW5nKHN0cnVjdCB2YjJfcXVldWUgKnEpCiB7Ci0Jc3RydWN0IHJnYV9jdHggKmN0eCA9IHZiMl9n
ZXRfZHJ2X3ByaXYocSk7Ci0Jc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7Ci0K
IAlyZ2FfYnVmX3JldHVybl9idWZmZXJzKHEsIFZCMl9CVUZfU1RBVEVfRVJST1IpOwotCXBtX3J1
bnRpbWVfcHV0KHJnYS0+ZGV2KTsKIH0KIAogY29uc3Qgc3RydWN0IHZiMl9vcHMgcmdhX3FvcHMg
PSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Eu
YyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGQ3ZjA3
MTIxNzdiNzAuLmMyNGJjOGUyNmI5MWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jCkBAIC0zNyw2ICszNywxNCBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfcnVuKHZv
aWQgKnBydikKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBjdHgtPnJnYTsKIAlzdHJ1Y3Qg
dmIyX3Y0bDJfYnVmZmVyICpzcmMsICpkc3Q7CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKKwlpbnQg
cmV0OworCisJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChyZ2EtPmRldik7CisJaWYg
KHJldCA8IDApIHsKKwkJdjRsMl9tMm1fYnVmX2RvbmVfYW5kX2pvYl9maW5pc2gocmdhLT5tMm1f
ZGV2LCBjdHgtPmZoLm0ybV9jdHgsCisJCQkJCQkgVkIyX0JVRl9TVEFURV9FUlJPUik7CisJCXJl
dHVybjsKKwl9CiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmcmdhLT5jdHJsX2xvY2ssIGZsYWdzKTsK
IAlpZiAoY3R4LT5jbWRidWZfZGlydHkpIHsKQEAgLTgxLDYgKzg5LDggQEAgc3RhdGljIGlycXJl
dHVybl90IHJnYV9pc3IoaW50IGlycSwgdm9pZCAqcHJ2KQogCQl2NGwyX20ybV9idWZfZG9uZShz
cmMsIFZCMl9CVUZfU1RBVEVfRE9ORSk7CiAJCXY0bDJfbTJtX2J1Zl9kb25lKGRzdCwgVkIyX0JV
Rl9TVEFURV9ET05FKTsKIAkJdjRsMl9tMm1fam9iX2ZpbmlzaChyZ2EtPm0ybV9kZXYsIGN0eC0+
ZmgubTJtX2N0eCk7CisKKwkJcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQocmdhLT5kZXYpOwog
CX0KIAogCXJldHVybiBJUlFfSEFORExFRDsKQEAgLTgwMSw2ICs4MTEsOSBAQCBzdGF0aWMgaW50
IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQpCiAJCXJl
dHVybiByZXQ7CiAKKwlwbV9ydW50aW1lX3NldF9hdXRvc3VzcGVuZF9kZWxheShyZ2EtPmRldiwg
NTApOworCXBtX3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKHJnYS0+ZGV2KTsKKwogCXJnYS0+cmVn
cyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKIAlpZiAoSVNfRVJS
KHJnYS0+cmVncykpCiAJCXJldHVybiBQVFJfRVJSKHJnYS0+cmVncyk7CgotLSAKMi41NS4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
