Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 055D0D25931
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsnL6+YHLXXMyon9MbwD/dj3oS6HMMYAT2I5KsMPEHE=; b=3SlQ08gnmRsnww
	hMGsKnPN6Fs1MBqfz/gB6OE2NesHLuuCy+1D3YDwxVSuQs+AXPrLbPmUtjYNb/JZtFFxRgdYb6xBP
	XX/gUusQweaWwoKpGmqDssC/pbIQq7SuVSqsARf0nQnt+eZSAB2EKHd7VEOIb/BUSHng611j1erEV
	LUzlOoTyr9un+5UEhfc+R/1vs1z1VgixyeCZKuMRVXhvKR/n2Z04J0Zqtl0G73318z+bkGVLJEdD8
	ObLswcVG7l7LEV7b5TXEidv9KqsgfK7TZ9Bukv8haBw2gt5EWNf1RQvtLb0/Tpi6vbIY0kM0DuR/5
	mkvqflP2lZTpnEXLF1Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkEu-0000000EPuw-2rVa;
	Tue, 27 Jan 2026 14:40:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkEq-0000000EPrL-2KTS
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:40:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkEg-0007YT-BX; Tue, 27 Jan 2026 15:40:06 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:15 +0100
Subject: [PATCH v3 06/27] media: rockchip: rga: use clk_bulk api
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-6-77b273067beb@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260127_064018_274686_D612ED1C 
X-CRM114-Status: GOOD (  14.35  )
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

VXNlIHRoZSBjbGtfYnVsayBBUEkgdG8gYXZvaWQgY29kZSBkdXBsaWNhdGlvbiBmb3IgZWFjaCBv
ZiB0aGUgdGhyZWUKY2xvY2tzLgoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVz
Y2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EuYyB8IDY1ICsrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIHwgIDYgKy0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDYwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggNDNmNmE4ZDk5MzgxMS4uMzM4Yzc3OTY0OTBi
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMK
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTY5OCw0
OCArNjk4LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdmlkZW9fZGV2aWNlIHJnYV92aWRlb2Rl
diA9IHsKIAkuZGV2aWNlX2NhcHMgPSBWNEwyX0NBUF9WSURFT19NMk1fTVBMQU5FIHwgVjRMMl9D
QVBfU1RSRUFNSU5HLAogfTsKIAotc3RhdGljIGludCByZ2FfZW5hYmxlX2Nsb2NrcyhzdHJ1Y3Qg
cm9ja2NoaXBfcmdhICpyZ2EpCi17Ci0JaW50IHJldDsKLQotCXJldCA9IGNsa19wcmVwYXJlX2Vu
YWJsZShyZ2EtPnNjbGspOwotCWlmIChyZXQpIHsKLQkJZGV2X2VycihyZ2EtPmRldiwgIkNhbm5v
dCBlbmFibGUgcmdhIHNjbGs6ICVkXG4iLCByZXQpOwotCQlyZXR1cm4gcmV0OwotCX0KLQotCXJl
dCA9IGNsa19wcmVwYXJlX2VuYWJsZShyZ2EtPmFjbGspOwotCWlmIChyZXQpIHsKLQkJZGV2X2Vy
cihyZ2EtPmRldiwgIkNhbm5vdCBlbmFibGUgcmdhIGFjbGs6ICVkXG4iLCByZXQpOwotCQlnb3Rv
IGVycl9kaXNhYmxlX3NjbGs7Ci0JfQotCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHJnYS0+
aGNsayk7Ci0JaWYgKHJldCkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAiQ2Fubm90IGVuYWJsZSBy
Z2EgaGNsazogJWRcbiIsIHJldCk7Ci0JCWdvdG8gZXJyX2Rpc2FibGVfYWNsazsKLQl9Ci0KLQly
ZXR1cm4gMDsKLQotZXJyX2Rpc2FibGVfYWNsazoKLQljbGtfZGlzYWJsZV91bnByZXBhcmUocmdh
LT5hY2xrKTsKLWVycl9kaXNhYmxlX3NjbGs6Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJnYS0+
c2Nsayk7Ci0KLQlyZXR1cm4gcmV0OwotfQotCi1zdGF0aWMgdm9pZCByZ2FfZGlzYWJsZV9jbG9j
a3Moc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKQotewotCWNsa19kaXNhYmxlX3VucHJlcGFyZShy
Z2EtPnNjbGspOwotCWNsa19kaXNhYmxlX3VucHJlcGFyZShyZ2EtPmhjbGspOwotCWNsa19kaXNh
YmxlX3VucHJlcGFyZShyZ2EtPmFjbGspOwotfQotCiBzdGF0aWMgaW50IHJnYV9wYXJzZV9kdChz
dHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCiB7CiAJc3RydWN0IHJlc2V0X2NvbnRyb2wgKmNvcmVf
cnN0LCAqYXhpX3JzdCwgKmFoYl9yc3Q7CisJaW50IHJldDsKIAogCWNvcmVfcnN0ID0gZGV2bV9y
ZXNldF9jb250cm9sX2dldChyZ2EtPmRldiwgImNvcmUiKTsKIAlpZiAoSVNfRVJSKGNvcmVfcnN0
KSkgewpAQCAtNzcxLDIzICs3MzMsMTIgQEAgc3RhdGljIGludCByZ2FfcGFyc2VfZHQoc3RydWN0
IHJvY2tjaGlwX3JnYSAqcmdhKQogCXVkZWxheSgxKTsKIAlyZXNldF9jb250cm9sX2RlYXNzZXJ0
KGFoYl9yc3QpOwogCi0JcmdhLT5zY2xrID0gZGV2bV9jbGtfZ2V0KHJnYS0+ZGV2LCAic2NsayIp
OwotCWlmIChJU19FUlIocmdhLT5zY2xrKSkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAiZmFpbGVk
IHRvIGdldCBzY2xrIGNsb2NrXG4iKTsKLQkJcmV0dXJuIFBUUl9FUlIocmdhLT5zY2xrKTsKLQl9
Ci0KLQlyZ2EtPmFjbGsgPSBkZXZtX2Nsa19nZXQocmdhLT5kZXYsICJhY2xrIik7Ci0JaWYgKElT
X0VSUihyZ2EtPmFjbGspKSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICJmYWlsZWQgdG8gZ2V0IGFj
bGsgY2xvY2tcbiIpOwotCQlyZXR1cm4gUFRSX0VSUihyZ2EtPmFjbGspOwotCX0KLQotCXJnYS0+
aGNsayA9IGRldm1fY2xrX2dldChyZ2EtPmRldiwgImhjbGsiKTsKLQlpZiAoSVNfRVJSKHJnYS0+
aGNsaykpIHsKLQkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byBnZXQgaGNsayBjbG9ja1xu
Iik7Ci0JCXJldHVybiBQVFJfRVJSKHJnYS0+aGNsayk7CisJcmV0ID0gZGV2bV9jbGtfYnVsa19n
ZXRfYWxsKHJnYS0+ZGV2LCAmcmdhLT5jbGtzKTsKKwlpZiAocmV0IDwgMCkgeworCQlkZXZfZXJy
KHJnYS0+ZGV2LCAiZmFpbGVkIHRvIGdldCBjbG9ja3NcbiIpOworCQlyZXR1cm4gcmV0OwogCX0K
KwlyZ2EtPm51bV9jbGtzID0gcmV0OwogCiAJcmV0dXJuIDA7CiB9CkBAIC05MzUsNyArODg2LDcg
QEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByZ2FfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBk
ZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBkZXZfZ2V0X2RydmRh
dGEoZGV2KTsKIAotCXJnYV9kaXNhYmxlX2Nsb2NrcyhyZ2EpOworCWNsa19idWxrX2Rpc2FibGVf
dW5wcmVwYXJlKHJnYS0+bnVtX2Nsa3MsIHJnYS0+Y2xrcyk7CiAKIAlyZXR1cm4gMDsKIH0KQEAg
LTk0NCw3ICs4OTUsNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIHJnYV9ydW50aW1lX3Jl
c3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0g
ZGV2X2dldF9kcnZkYXRhKGRldik7CiAKLQlyZXR1cm4gcmdhX2VuYWJsZV9jbG9ja3MocmdhKTsK
KwlyZXR1cm4gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocmdhLT5udW1fY2xrcywgcmdhLT5jbGtz
KTsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJnYV9wbSA9IHsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXggNzJhMjhiMTIwZmFiZi4u
MmRiMTBhY2VjYjQwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LmgKQEAgLTYsNiArNiw3IEBACiAjaWZuZGVmIF9fUkdBX0hfXwogI2RlZmluZSBfX1JHQV9IX18K
IAorI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rldmlj
ZS5oPgogI2luY2x1ZGUgPG1lZGlhL3ZpZGVvYnVmMi12NGwyLmg+CiAjaW5jbHVkZSA8bWVkaWEv
djRsMi1jdHJscy5oPgpAQCAtODEsOSArODIsOCBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdhIHsKIAlz
dHJ1Y3QgZGV2aWNlICpkZXY7CiAJc3RydWN0IHJlZ21hcCAqZ3JmOwogCXZvaWQgX19pb21lbSAq
cmVnczsKLQlzdHJ1Y3QgY2xrICpzY2xrOwotCXN0cnVjdCBjbGsgKmFjbGs7Ci0Jc3RydWN0IGNs
ayAqaGNsazsKKwlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xrczsKKwlpbnQgbnVtX2Nsa3M7CiAJ
c3RydWN0IHJvY2tjaGlwX3JnYV92ZXJzaW9uIHZlcnNpb247CiAKIAkvKiB2ZmQgbG9jayAqLwoK
LS0gCjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
