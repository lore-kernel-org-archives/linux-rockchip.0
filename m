Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C593ECD6E6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGvuMsIzNTwCpW+yisu44xv6UviRpax3udJGDzTkQ9E=; b=qGG/MIfpgUSLXl
	1wU7+T+CiqHjlAtX3YZ90QHnuqa7p8r5DNq+5Lc6ix/3K7Apo3JYtQfziQoH8rWnlHKlWbhs6WN+7
	HaRq2KC4JaweeHgD9rjShbk55gWxjdIVUxnLEqJsooh8Qt5sWee+QUREwP/9KKvGW4nlZTcvch/YB
	TlHSr7k5t5U5SnRXzfJVFOGrn49VdWl7jUlRPiqaiv7LRseapcoi2nIxFmgY0gdvxkSQsnNgunQNk
	X6YAXRpdyoUKGRFvv+oN8Mg8hkQIJ7IPfYGzbh9GNxB+GH7FzAeTyF6/usWPPpPU0Me1+6aVUcmFF
	DIqY8t/N6CgauImL62XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcii-00000001FKx-2ChF;
	Fri, 05 Jun 2026 22:08:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciW-00000001Elo-0epc
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVciG-0000LW-Mz; Sat, 06 Jun 2026 00:08:24 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:07:03 +0200
Subject: [PATCH 17/17] iommu/rockchip: disable fetch dte time limit
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-17-3ec2b15675f7@pengutronix.de>
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
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Simon Xue <xxm@rock-chips.com>, Joerg Roedel <joerg.roedel@amd.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_150840_211686_578E4C0C 
X-CRM114-Status: GOOD (  13.47  )
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

RnJvbTogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+CgpEaXNhYmxlIHRoZSBCaXQgMzEg
b2YgdGhlIEFVVE9fR0FUSU5HIGlvbW11IHJlZ2lzdGVyLCBhcyBpdCBjYXVzZXMKaGFuZ3VwcyB3
aXRoIHRoZSBSR0EzIChSYXN0ZXIgR3JhcGhpY3MgQWNjZWxlcmF0aW9uIDMpIHBlcmlwaGVyYWwu
ClRoZSBSR0EzIHJlZ2lzdGVyIGRlc2NyaXB0aW9uIG9mIHRoZSBUUk0gYWxyZWFkeSBzdGF0ZXMg
dGhhdCB0aGUgYml0Cm11c3QgYmUgc2V0IHRvIDEuIFRoZSB2ZW5kb3Iga2VybmVsIHNldHMgdGhl
IGJpdCB1bmNvbmRpdGlvbmFsbHkgdG8KMSB0byBmaXggVk9QIChWaWRlbyBPdXRwdXQgUHJvY2Vz
c29yKSBzY3JlZW4gYmxhY2sgaXNzdWVzLiBUaGlzIHBhdGNoCnNxdWFzaGVzIHRoZSAyIHZlbmRv
ciBrZXJuZWwgY29tbWl0cyB3aXRoIHRoZSBmb2xsb3dpbmcgY29tbWl0IG1lc3NhZ2VzOgoKTWFz
dGVyIGZldGNoIGRhdGEgYW5kIGNwdSB1cGRhdGUgcGFnZSB0YWJsZSBtYXkgd29yayBpbiBwYXJh
bGxlbCwgbWF5CmhhdmUgdGhlIGZvbGxvd2luZyBwcm9jZWR1cmU6CgoJbWFzdGVyICAgICAgICAg
ICAgICAgICAgY3B1CglmZXRjaCBkdGUgICAgICAgICAgICAgICB1cGRhdGUgcGFnZSB0YWJsCgkg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgIHwKCShtYWtlIGR0ZSBpbnZhbGlkKSAgPC0g
IHphcCBpb3RsYiBlbnRyeQoJICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICB8CglmZXRj
aCBkdGUgYWdhaW4KCShtYWtlIGR0ZSBpbnZhbGlkKSAgPC0gIHphcCBpb3RsYiBlbnRyeQoJICAg
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICB8CglmZXRjaCBkdGUgYWdhaW4KCShtYWtlIGR0
ZSBpbnZhbGlkKSAgPC0gIHphcCBpb3RsYiBlbnRyeQoJICAgICAgICB8ICAgICAgICAgICAgICAg
ICAgICAgICB8CglmZXRjaCBkdGUgYWdhaW4KCShtYWtlIGlvbW11IGJsb2NrKSAgPC0gIHphcCBp
b3RsYiBlbnRyeQoKTmV3IGlvbW11IHZlcnNpb24gaGFzIHRoZSBhYm92ZSBidWcsIGlmIGZldGNo
IGR0ZSBjb25zZWN1dGl2ZWx5IGZvdXIKdGltZXMsIHRoZW4gaXQgd2lsbCBiZSBibG9ja2VkLiBG
b3J0dW5hdGVseSwgd2UgY2FuIHNldCBiaXQgMzEgb2YKcmVnaXN0ZXIgTU1VX0FVVE9fR0FUSU5H
IHRvIDEgdG8gbWFrZSBpdCB3b3JrIGFzIG9sZCB2ZXJzaW9uIHdoaWNoIGRvZXMKbm90IGhhdmUg
dGhpcyBpc3N1ZS4KClRoaXMgaXNzdWUgb25seSBhcHBlYXJzIG9uIFJWMTEyNiBzbyBmYXIsIHNv
IG1ha2UgYSB3b3JrYXJvdW5kIGRlZGljYXRlZAp0byAicm9ja2NoaXAscnYxMTI2IiBtYWNoaW5l
IHR5cGUuCgppb21tdS9yb2NrY2hpcDogZml4IHZvcCBibG9ja2VkIGFuZCBzY3JlZW4gYmxhY2sg
b24gUkszNTZYIGFuZCBSSzM1ODgKClJLMzU2OCBhbmQgUkszNTg4IGhhcyB0aGUgc2FtZSBpc3N1
ZSBhcyBSVjExMjYvUlYxMTA5IHRoYXQgY2F1c2VkIGJ5CmR0ZSBmZXRjaCB0aW1lIGxpbWl0LCBT
byB3ZSBjYW4gc2V0IEJJVCgzMSkgb2YgcmVnaXN0ZXIgMHgyNCBkZWZhdWx0CnRvIDEgYXMgYSB3
b3JrYXJvdW5kLgoKU2lnbmVkLW9mZi1ieTogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+
ClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+
CkFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgpTaWduZWQtb2ZmLWJ5
OiBKb2VyZyBSb2VkZWwgPGpvZXJnLnJvZWRlbEBhbWQuY29tPgotLS0KKGNoZXJyeSBwaWNrZWQg
ZnJvbSBjb21taXQgOGQ0MzQ2ZWNkNDk1MGFlMDhjYzc2YTZkZTMyN2MyNjRlODQ2NzU4YykKCnBp
Y2tlZCBmcm9tIHRoZSBuZXh0IGJyYW5jaCBvZgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9pb21tdS9saW51eC5naXQKZm9yIGEgY29udmVuaWVudCB1c2Fn
ZSBvZiB0aGUgcGF0Y2hlcy4KLS0tCiBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgfCA4
ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIGIvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1p
b21tdS5jCmluZGV4IDAwMTNjZjE5NmM1NzMuLjg3YWUwMzZkNjQxNDUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYworKysgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlw
LWlvbW11LmMKQEAgLTc2LDYgKzc2LDggQEAKICNkZWZpbmUgU1BBR0VfT1JERVIgMTIKICNkZWZp
bmUgU1BBR0VfU0laRSAoMSA8PCBTUEFHRV9PUkRFUikKIAorI2RlZmluZSBESVNBQkxFX0ZFVENI
X0RURV9USU1FX0xJTUlUIEJJVCgzMSkKKwogIC8qCiAgICogU3VwcG9ydCBtYXBwaW5nIGFueSBz
aXplIHRoYXQgZml0cyBpbiBvbmUgcGFnZSB0YWJsZToKICAgKiAgIDQgS2lCIHRvIDQgTWlCCkBA
IC05MzAsNiArOTMyLDcgQEAgc3RhdGljIGludCBya19pb21tdV9lbmFibGUoc3RydWN0IHJrX2lv
bW11ICppb21tdSkKIAlzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4gPSBpb21tdS0+ZG9tYWlu
OwogCXN0cnVjdCBya19pb21tdV9kb21haW4gKnJrX2RvbWFpbiA9IHRvX3JrX2RvbWFpbihkb21h
aW4pOwogCWludCByZXQsIGk7CisJdTMyIGF1dG9fZ2F0ZTsKIAogCXJldCA9IGNsa19idWxrX2Vu
YWJsZShpb21tdS0+bnVtX2Nsb2NrcywgaW9tbXUtPmNsb2Nrcyk7CiAJaWYgKHJldCkKQEAgLTk0
OCw2ICs5NTEsMTEgQEAgc3RhdGljIGludCBya19pb21tdV9lbmFibGUoc3RydWN0IHJrX2lvbW11
ICppb21tdSkKIAkJCSAgICAgICBya19vcHMtPm1rX2R0ZW50cmllcyhya19kb21haW4tPmR0X2Rt
YSkpOwogCQlya19pb21tdV9iYXNlX2NvbW1hbmQoaW9tbXUtPmJhc2VzW2ldLCBSS19NTVVfQ01E
X1pBUF9DQUNIRSk7CiAJCXJrX2lvbW11X3dyaXRlKGlvbW11LT5iYXNlc1tpXSwgUktfTU1VX0lO
VF9NQVNLLCBSS19NTVVfSVJRX01BU0spOworCisJCS8qIFdvcmthcm91bmQgZm9yIGlvbW11IGJs
b2NrZWQsIEJJVCgzMSkgZGVmYXVsdCB0byAxICovCisJCWF1dG9fZ2F0ZSA9IHJrX2lvbW11X3Jl
YWQoaW9tbXUtPmJhc2VzW2ldLCBSS19NTVVfQVVUT19HQVRJTkcpOworCQlhdXRvX2dhdGUgfD0g
RElTQUJMRV9GRVRDSF9EVEVfVElNRV9MSU1JVDsKKwkJcmtfaW9tbXVfd3JpdGUoaW9tbXUtPmJh
c2VzW2ldLCBSS19NTVVfQVVUT19HQVRJTkcsIGF1dG9fZ2F0ZSk7CiAJfQogCiAJcmV0ID0gcmtf
aW9tbXVfZW5hYmxlX3BhZ2luZyhpb21tdSk7CgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
