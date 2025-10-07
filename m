Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BB5BCCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn/ZXX8gRUmqCCnPsaOZOL0cF8dp/EtcT9e/ZNb6HpA=; b=ytBjgqFBp4EWzD
	JgxttyvAdSdzr17JYtabav3qSsXYz2L+O5/dMGDka7q3ba2WSHqi2Qxyrh0Sncauon6wqhhW29d6o
	7LPbWwkaj/c6XvnxDYAM0bFl6et1wUv6lFr14o/kE4ILb1uIyzAjLFmtlcTj4NjwkJ0RH0dM+yIDs
	R68VbnMrbtU3r/NmbPv+4rEUR70gl3EKhIJArPYjHTWLwSbDxLSfZU7nCEMq5EtJB/6ATfy1mX1w3
	tz3E5iiNOXBbuOdLVo6oUsTc0Ji5JktEx67ut7+t743P/iAWLcg6Pa4pwh4d2qR328GlzTau27GeL
	nq5fnaqAwrCTAj45E4lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638D-00000001Yld-1nxE;
	Tue, 07 Oct 2025 08:33:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v637x-00000001YQB-3HkJ
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:32:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637o-0002Hb-R4; Tue, 07 Oct 2025 10:32:48 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:31:54 +0200
Subject: [PATCH 01/16] media: rockchip: rga: use clk_bulk api
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-1-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
In-Reply-To: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
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
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_013257_857690_27C6BD02 
X-CRM114-Status: GOOD (  12.67  )
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
L3JnYS9yZ2EuYyB8IDY0ICsrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIHwgIDUgKy0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgNjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCA3NzYwNDZkZTk3OWFhMGRlZDY3MzQyMTZiZjE3
OWMzMmFlOGZlNWE5Li42NDM4MTE5YTZjN2FlZmYxZTg5ZTdhYTk1ZGNkNWQyOTIxZmVmYTA4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYworKysg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpAQCAtNzAyLDQ4ICs3
MDIsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2aWRlb19kZXZpY2UgcmdhX3ZpZGVvZGV2ID0g
ewogCS5kZXZpY2VfY2FwcyA9IFY0TDJfQ0FQX1ZJREVPX00yTV9NUExBTkUgfCBWNEwyX0NBUF9T
VFJFQU1JTkcsCiB9OwogCi1zdGF0aWMgaW50IHJnYV9lbmFibGVfY2xvY2tzKHN0cnVjdCByb2Nr
Y2hpcF9yZ2EgKnJnYSkKLXsKLQlpbnQgcmV0OwotCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxl
KHJnYS0+c2Nsayk7Ci0JaWYgKHJldCkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAiQ2Fubm90IGVu
YWJsZSByZ2Egc2NsazogJWRcbiIsIHJldCk7Ci0JCXJldHVybiByZXQ7Ci0JfQotCi0JcmV0ID0g
Y2xrX3ByZXBhcmVfZW5hYmxlKHJnYS0+YWNsayk7Ci0JaWYgKHJldCkgewotCQlkZXZfZXJyKHJn
YS0+ZGV2LCAiQ2Fubm90IGVuYWJsZSByZ2EgYWNsazogJWRcbiIsIHJldCk7Ci0JCWdvdG8gZXJy
X2Rpc2FibGVfc2NsazsKLQl9Ci0KLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocmdhLT5oY2xr
KTsKLQlpZiAocmV0KSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICJDYW5ub3QgZW5hYmxlIHJnYSBo
Y2xrOiAlZFxuIiwgcmV0KTsKLQkJZ290byBlcnJfZGlzYWJsZV9hY2xrOwotCX0KLQotCXJldHVy
biAwOwotCi1lcnJfZGlzYWJsZV9hY2xrOgotCWNsa19kaXNhYmxlX3VucHJlcGFyZShyZ2EtPmFj
bGspOwotZXJyX2Rpc2FibGVfc2NsazoKLQljbGtfZGlzYWJsZV91bnByZXBhcmUocmdhLT5zY2xr
KTsKLQotCXJldHVybiByZXQ7Ci19Ci0KLXN0YXRpYyB2b2lkIHJnYV9kaXNhYmxlX2Nsb2Nrcyhz
dHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCi17Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJnYS0+
c2Nsayk7Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJnYS0+aGNsayk7Ci0JY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKHJnYS0+YWNsayk7Ci19Ci0KIHN0YXRpYyBpbnQgcmdhX3BhcnNlX2R0KHN0cnVj
dCByb2NrY2hpcF9yZ2EgKnJnYSkKIHsKIAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqY29yZV9yc3Qs
ICpheGlfcnN0LCAqYWhiX3JzdDsKKwlpbnQgcmV0OwogCiAJY29yZV9yc3QgPSBkZXZtX3Jlc2V0
X2NvbnRyb2xfZ2V0KHJnYS0+ZGV2LCAiY29yZSIpOwogCWlmIChJU19FUlIoY29yZV9yc3QpKSB7
CkBAIC03NzUsMjIgKzczNywxMCBAQCBzdGF0aWMgaW50IHJnYV9wYXJzZV9kdChzdHJ1Y3Qgcm9j
a2NoaXBfcmdhICpyZ2EpCiAJdWRlbGF5KDEpOwogCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoYWhi
X3JzdCk7CiAKLQlyZ2EtPnNjbGsgPSBkZXZtX2Nsa19nZXQocmdhLT5kZXYsICJzY2xrIik7Ci0J
aWYgKElTX0VSUihyZ2EtPnNjbGspKSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICJmYWlsZWQgdG8g
Z2V0IHNjbGsgY2xvY2tcbiIpOwotCQlyZXR1cm4gUFRSX0VSUihyZ2EtPnNjbGspOwotCX0KLQot
CXJnYS0+YWNsayA9IGRldm1fY2xrX2dldChyZ2EtPmRldiwgImFjbGsiKTsKLQlpZiAoSVNfRVJS
KHJnYS0+YWNsaykpIHsKLQkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byBnZXQgYWNsayBj
bG9ja1xuIik7Ci0JCXJldHVybiBQVFJfRVJSKHJnYS0+YWNsayk7Ci0JfQotCi0JcmdhLT5oY2xr
ID0gZGV2bV9jbGtfZ2V0KHJnYS0+ZGV2LCAiaGNsayIpOwotCWlmIChJU19FUlIocmdhLT5oY2xr
KSkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAiZmFpbGVkIHRvIGdldCBoY2xrIGNsb2NrXG4iKTsK
LQkJcmV0dXJuIFBUUl9FUlIocmdhLT5oY2xrKTsKKwlyZXQgPSBkZXZtX2Nsa19idWxrX2dldChy
Z2EtPmRldiwgQVJSQVlfU0laRShyZ2EtPmNsa3MpLCByZ2EtPmNsa3MpOworCWlmIChyZXQpIHsK
KwkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byBnZXQgY2xvY2tzXG4iKTsKKwkJcmV0dXJu
IHJldDsKIAl9CiAKIAlyZXR1cm4gMDsKQEAgLTkzOSw3ICs4ODksNyBAQCBzdGF0aWMgaW50IF9f
bWF5YmVfdW51c2VkIHJnYV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogewog
CXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCi0Jcmdh
X2Rpc2FibGVfY2xvY2tzKHJnYSk7CisJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUoQVJSQVlf
U0laRShyZ2EtPmNsa3MpLCByZ2EtPmNsa3MpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC05NDgsNyAr
ODk4LDcgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByZ2FfcnVudGltZV9yZXN1bWUoc3Ry
dWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGRldl9nZXRf
ZHJ2ZGF0YShkZXYpOwogCi0JcmV0dXJuIHJnYV9lbmFibGVfY2xvY2tzKHJnYSk7CisJcmV0dXJu
IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKEFSUkFZX1NJWkUocmdhLT5jbGtzKSwgcmdhLT5jbGtz
KTsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJnYV9wbSA9IHsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXggNzJhMjhiMTIwZmFiZmRj
ZTM5ZTc3NzMzNThkMGM5NTI4MDE5ZTg4Mi4uYTkyMmZhYzBjMDFhMzYyN2Y1MTQ5Yzc4YTE1NjAz
NDE0MjhhNGZjMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
Z2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgK
QEAgLTYsNiArNiw3IEBACiAjaWZuZGVmIF9fUkdBX0hfXwogI2RlZmluZSBfX1JHQV9IX18KIAor
I2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5o
PgogI2luY2x1ZGUgPG1lZGlhL3ZpZGVvYnVmMi12NGwyLmg+CiAjaW5jbHVkZSA8bWVkaWEvdjRs
Mi1jdHJscy5oPgpAQCAtODEsOSArODIsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdhIHsKIAlzdHJ1
Y3QgZGV2aWNlICpkZXY7CiAJc3RydWN0IHJlZ21hcCAqZ3JmOwogCXZvaWQgX19pb21lbSAqcmVn
czsKLQlzdHJ1Y3QgY2xrICpzY2xrOwotCXN0cnVjdCBjbGsgKmFjbGs7Ci0Jc3RydWN0IGNsayAq
aGNsazsKKwlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSBjbGtzWzNdOwogCXN0cnVjdCByb2NrY2hpcF9y
Z2FfdmVyc2lvbiB2ZXJzaW9uOwogCiAJLyogdmZkIGxvY2sgKi8KCi0tIAoyLjUxLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
