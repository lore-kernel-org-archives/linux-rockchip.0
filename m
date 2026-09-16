Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A8EEC982C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jl4MnREvYgPl/hwoDrtVohhNzb9FUMesXWuVwT2CEx0=; b=jeOLU4TnfQOG2J
	nRUtfOY6qbda1+i7twhg1B5D/NkshypKRHfLfH5kfZS8m3EgW3lml8emXVwlm7WlkLfKR8fYqc7Wb
	KcMcfbz4SRYmxp3qO8u1F+ZEzEv+cVyB0vYOzAjmxDgV+cvP8znHGB/Cc8L7eAWFGZqNAHO6ThiDi
	vrv6wjtJymSWyKMBHJQDcjBYdLt723+v4nVoXf5flVrtn8UQKd/phZDoFgdLXbujlnCAmJye5bnIi
	vA/kiVHA/Oe8MQyUIDDq8C15o/FaojxjGu+a3CcCdBNpKZTMouNJeSW6mXEuQunRGLQqMbfRecR2X
	6yu/Cv9Ru/HwqLpbpH+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLs-00000009Xjq-1H56;
	Wed, 16 Sep 2026 15:15:12 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLk-00000009XdY-0k8i;
	Wed, 16 Sep 2026 15:15:05 +0000
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
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D4618205A07;
	Wed, 16 Sep 2026 17:14:58 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGk-001Fsx-2z;
	Wed, 16 Sep 2026 17:09:54 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:53 +0200
Subject: [PATCH v2 12/17] media: rockchip: rga: move rockchip_rga
 allocation to master probe
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-12-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260916_081504_373917_20B5B45C 
X-CRM114-Status: GOOD (  16.33  )
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

TW92ZSB0aGUgcm9ja2NoaXBfcmdhIHN0cnVjdCBhbGxvY2F0aW9uIHRvIHRoZSBtYXN0ZXIgY29t
cG9uZW50IHByb2JlCmZ1bmN0aW9uIGluIHByZXBhcmF0aW9uIG9mIGVuYWJsaW5nIGFsbCBjb3Jl
cy4gVGhpcyBhbHNvIGFkanVzdHMgdGhlCmFsbG9jYXRpb24gdG8gdXNlIHRoZSBhY3R1YWwgbnVt
YmVyIG9mIGNvcmVzIGZvdW5kIGluIHRoZSBvZiB0cmVlCmluc3RlYWQgb2YgYmVpbmcgZml4ZWQg
dG8gb25lIGNvcmUuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBl
bmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jIHwgMzIgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggMzY3ZGYwZWU3YjAyZi4uMzdjY2FjNWI0MDZhNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTc0MSw3ICs3
NDEsNyBAQCBzdGF0aWMgaW50IHJnYV9wYXJzZV9kdChzdHJ1Y3QgcmdhX2NvcmUgKmNvcmUpCiBz
dGF0aWMgaW50IHJnYV9jb3JlX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNl
ICptYXN0ZXIsIHZvaWQgKmRhdGEpCiB7CiAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9
IHRvX3BsYXRmb3JtX2RldmljZShkZXYpOwotCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYTsKKwlz
dHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBkYXRhOwogCXN0cnVjdCByZ2FfY29yZSAqY29yZTsK
IAlzdHJ1Y3QgdmlkZW9fZGV2aWNlICp2ZmQ7CiAJaW50IHJldCA9IDA7CkBAIC03NTAsMTcgKzc1
MCw2IEBAIHN0YXRpYyBpbnQgcmdhX2NvcmVfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkKIAlpZiAoIXBkZXYtPmRldi5vZl9ub2RlKQog
CQlyZXR1cm4gLUVOT0RFVjsKIAotCXJnYSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXpl
b2YoKnJnYSkgKyAxICogc2l6ZW9mKCpyZ2EtPmNvcmVzKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFy
Z2EpCi0JCXJldHVybiAtRU5PTUVNOwotCi0JcmdhLT5odyA9IG9mX2RldmljZV9nZXRfbWF0Y2hf
ZGF0YSgmcGRldi0+ZGV2KTsKLQlpZiAoIXJnYS0+aHcpCi0JCXJldHVybiBkZXZfZXJyX3Byb2Jl
KCZwZGV2LT5kZXYsIC1FTk9ERVYsICJmYWlsZWQgdG8gZ2V0IG1hdGNoIGRhdGFcbiIpOwotCi0J
c3Bpbl9sb2NrX2luaXQoJnJnYS0+Y3RybF9sb2NrKTsKLQltdXRleF9pbml0KCZyZ2EtPm11dGV4
KTsKLQogCWNvcmUgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpjb3JlKSwgR0ZQ
X0tFUk5FTCk7CiAJaWYgKCFjb3JlKQogCQlyZXR1cm4gLUVOT01FTTsKQEAgLTk0MSw5ICs5MzAs
MTAgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcmdhX2NvcmVfcGRydiA9IHsKIAog
c3RhdGljIGludCByZ2FfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiB7CisJc3RydWN0IHJvY2tj
aGlwX3JnYSAqcmdhID0gZGV2X2dldF9kcnZkYXRhKGRldik7CiAJaW50IHJldDsKIAotCXJldCA9
IGNvbXBvbmVudF9iaW5kX2FsbChkZXYsIE5VTEwpOworCXJldCA9IGNvbXBvbmVudF9iaW5kX2Fs
bChkZXYsIHJnYSk7CiAJaWYgKHJldCkgewogCQlkZXZfZXJyKGRldiwgImNvbXBvbmVudCBiaW5k
IGZhaWxlZFxuIik7CiAJCXJldHVybiByZXQ7CkBAIC05NjgsNiArOTU4LDggQEAgc3RhdGljIGlu
dCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlzdHJ1Y3QgZGV2aWNl
ICpkZXYgPSAmcGRldi0+ZGV2OwogCXN0cnVjdCBjb21wb25lbnRfbWF0Y2ggKm1hdGNoID0gTlVM
TDsKIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKmNvcmVfbm9kZTsKKwlzdHJ1Y3Qgcm9ja2NoaXBfcmdh
ICpyZ2E7CisJdTggbnVtX2NvcmVzID0gMDsKIAogCWlmICghbWF0Y2hfZGVzYykKIAkJcmV0dXJu
IGRldl9lcnJfcHJvYmUoZGV2LCAtRU5PREVWLCAibWlzc2luZyBwbGF0Zm9ybSBkYXRhXG4iKTsK
QEAgLTk3OSw2ICs5NzEsNyBAQCBzdGF0aWMgaW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogCQlvZl9ub2RlX2dldChjb3JlX25vZGUpOwogCQljb21wb25lbnRfbWF0
Y2hfYWRkX3JlbGVhc2UoZGV2LCAmbWF0Y2gsIGNvbXBvbmVudF9yZWxlYXNlX29mLAogCQkJCQkg
ICAgY29tcG9uZW50X2NvbXBhcmVfb2YsIGNvcmVfbm9kZSk7CisJCW51bV9jb3JlcysrOwogCiAJ
CS8qCiAJCSAqIEFzIG11bHRpIGNvcmUgaXMgbm90IGltcGxlbWVudGVkIHlldCwKQEAgLTk4OSw2
ICs5ODIsMTkgQEAgc3RhdGljIGludCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIAkJYnJlYWs7CiAJfQogCisJcmdhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpy
Z2EpICsgbnVtX2NvcmVzICogc2l6ZW9mKCpyZ2EtPmNvcmVzKSwgR0ZQX0tFUk5FTCk7CisJaWYg
KCFyZ2EpCisJCXJldHVybiAtRU5PTUVNOworCisJcmdhLT5odyA9IG1hdGNoX2Rlc2MtPmRhdGE7
CisJaWYgKCFyZ2EtPmh3KQorCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIC1FTk9ERVYsICJm
YWlsZWQgdG8gZ2V0IG1hdGNoIGRhdGFcbiIpOworCisJc3Bpbl9sb2NrX2luaXQoJnJnYS0+Y3Ry
bF9sb2NrKTsKKwltdXRleF9pbml0KCZyZ2EtPm11dGV4KTsKKworCWRldl9zZXRfZHJ2ZGF0YShk
ZXYsIHJnYSk7CisKIAlyZXR1cm4gY29tcG9uZW50X21hc3Rlcl9hZGRfd2l0aF9tYXRjaChkZXYs
ICZyZ2FfbWFzdGVyX29wcywgbWF0Y2gpOwogfQogCgotLSAKMi41NS4wCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
