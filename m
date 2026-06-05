Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47701CD6E7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXq+Dlt7OTQvHpBmi/K5KUjSmgT2aW8m2jtiu9HlhuY=; b=24XCc/Uk0fCOOF
	vpt98njiYxidKw36hoRwPZF6IC3cTA8fhLpzH3DFfx8Qyk+UJ8h8v4cLO5gWCnEkHsWJD1H0jM1Wa
	8RBcctikMG97uuHgU1E0ANzK4JUKPihLOC0XPqr3917u3TUttHQlq4nyZWr4yCPE2FuxW3pw+Pdwp
	w1JwRsZYpNq6U8uWRUvTvmcRo4a78L3Q77CidNYf7F8BkI9ilbeOOxwUt/+Ix9KJAZsGauidJsZbv
	U70hPqZEpmjNWbIKRFQ9Jqd7tQdNeloIzLYsmjL636AIay/Jftz+TCtzElqJsN2uJGaBS8gaY5ws5
	QOHT3QegaW06FiIouYvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcia-00000001EzV-09hk;
	Fri, 05 Jun 2026 22:08:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciS-00000001EdG-49h4
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVci9-0000LW-EE; Sat, 06 Jun 2026 00:08:17 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:56 +0200
Subject: [PATCH 10/17] media: rockchip: rga: move rockchip_rga allocation
 to master probe
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-10-3ec2b15675f7@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260605_150837_067730_FBF970AC 
X-CRM114-Status: GOOD (  15.31  )
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
bS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggMTc4ZjQ1YjhkYTk0MC4uMTE5MTJiZjViNjkwNiAx
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
X0tFUk5FTCk7CiAJY29yZS0+cmdhID0gcmdhOwogCWNvcmUtPmRldiA9ICZwZGV2LT5kZXY7CkBA
IC05NDcsOSArOTM2LDEwIEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJnYV9jb3Jl
X3BkcnYgPSB7CiAKIHN0YXRpYyBpbnQgcmdhX2JpbmQoc3RydWN0IGRldmljZSAqZGV2KQogewor
CXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCWludCBy
ZXQ7CiAKLQlyZXQgPSBjb21wb25lbnRfYmluZF9hbGwoZGV2LCBOVUxMKTsKKwlyZXQgPSBjb21w
b25lbnRfYmluZF9hbGwoZGV2LCByZ2EpOwogCWlmIChyZXQpIHsKIAkJZGV2X2VycihkZXYsICJj
b21wb25lbnQgYmluZCBmYWlsZWRcbiIpOwogCQlyZXR1cm4gcmV0OwpAQCAtOTc0LDYgKzk2NCw4
IEBAIHN0YXRpYyBpbnQgcmdhX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
c3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKIAlzdHJ1Y3QgY29tcG9uZW50X21hdGNo
ICptYXRjaCA9IE5VTEw7CiAJc3RydWN0IGRldmljZV9ub2RlICpjb3JlX25vZGU7CisJc3RydWN0
IHJvY2tjaGlwX3JnYSAqcmdhOworCXU4IG51bV9jb3JlcyA9IDA7CiAKIAlpZiAoIW1hdGNoX2Rl
c2MpCiAJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgLUVOT0RFViwgIm1pc3NpbmcgcGxhdGZv
cm0gZGF0YVxuIik7CkBAIC05ODUsNiArOTc3LDcgQEAgc3RhdGljIGludCByZ2FfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJb2Zfbm9kZV9nZXQoY29yZV9ub2RlKTsKIAkJ
Y29tcG9uZW50X21hdGNoX2FkZF9yZWxlYXNlKGRldiwgJm1hdGNoLCBjb21wb25lbnRfcmVsZWFz
ZV9vZiwKIAkJCQkJICAgIGNvbXBvbmVudF9jb21wYXJlX29mLCBjb3JlX25vZGUpOworCQludW1f
Y29yZXMrKzsKIAogCQkvKgogCQkgKiBBcyBtdWx0aSBjb3JlIGlzIG5vdCBpbXBsZW1lbnRlZCB5
ZXQsCkBAIC0xMDAwLDYgKzk5MywxOSBAQCBzdGF0aWMgaW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCQkJZGV2LCAtRU5PREVWLAogCQkJIm5vIG1hdGNoaW5nIGF2
YWlsYWJsZSBjb21wb25lbnQgZGV2aWNlcyBmb3VuZFxuIik7CiAKKwlyZ2EgPSBkZXZtX2t6YWxs
b2MoZGV2LCBzaXplb2YoKnJnYSkgKyBudW1fY29yZXMgKiBzaXplb2YoKnJnYS0+Y29yZXMpLCBH
RlBfS0VSTkVMKTsKKwlpZiAoIXJnYSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlyZ2EtPmh3ID0g
bWF0Y2hfZGVzYy0+ZGF0YTsKKwlpZiAoIXJnYS0+aHcpCisJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgLUVOT0RFViwgImZhaWxlZCB0byBnZXQgbWF0Y2ggZGF0YVxuIik7CisKKwlzcGluX2xv
Y2tfaW5pdCgmcmdhLT5jdHJsX2xvY2spOworCW11dGV4X2luaXQoJnJnYS0+bXV0ZXgpOworCisJ
ZGV2X3NldF9kcnZkYXRhKGRldiwgcmdhKTsKKwogCXJldHVybiBjb21wb25lbnRfbWFzdGVyX2Fk
ZF93aXRoX21hdGNoKGRldiwgJnJnYV9tYXN0ZXJfb3BzLCBtYXRjaCk7CiB9CiAKCi0tIAoyLjU0
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
