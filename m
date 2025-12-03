Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1538D15D88
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFKpUERKM0ESTcTn12fmMoHVehCD2bbXTENiECZtdpI=; b=Qez5+Q2UdHsV0C
	UgLQwtxGg0KMTm9flg1ZuA+DMXVzf/SyvVwBlMSi+nQg3ggx4y6VQlxY6E0lEoCscFCv88B/gHydc
	y16TuldCCTMYLlDkh3Tybn8Yms0Gb+JldOVY9KNJhNVJBzFPIEy0e6jxaE0j0kJg/PLwlDeFB322n
	o9Ih1niv0s897ZE5sGUPjkXbzZZdk7nRM07sPZgiZAV/nfOrP+sAPrCa+qMKojJBCp2EBet+7U3pw
	xtqDSQfjD7f/w799QxDZjXub6WDzSZJMVD95zsFV7xw9uKRRxRQN9zAKfFUdbY12YusUQFekdnk8M
	AOIyPUyipJVIqCo3hoDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBP-00000006k84-2JP2;
	Wed, 03 Dec 2025 15:54:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBE-00000006jnx-2taE
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 15:54:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAc-0007dW-S2; Wed, 03 Dec 2025 16:53:34 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:26 +0100
Subject: [PATCH v2 04/22] media: rockchip: rga: use clk_bulk api
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-4-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251203_075412_857015_7256A0C4 
X-CRM114-Status: GOOD (  12.80  )
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
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCA0M2Y2YThkOTkzODExLi5lZjU2OGIzNzU4Mzgw
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwor
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpAQCAtNjk4LDQ4
ICs2OTgsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2aWRlb19kZXZpY2UgcmdhX3ZpZGVvZGV2
ID0gewogCS5kZXZpY2VfY2FwcyA9IFY0TDJfQ0FQX1ZJREVPX00yTV9NUExBTkUgfCBWNEwyX0NB
UF9TVFJFQU1JTkcsCiB9OwogCi1zdGF0aWMgaW50IHJnYV9lbmFibGVfY2xvY2tzKHN0cnVjdCBy
b2NrY2hpcF9yZ2EgKnJnYSkKLXsKLQlpbnQgcmV0OwotCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5h
YmxlKHJnYS0+c2Nsayk7Ci0JaWYgKHJldCkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAiQ2Fubm90
IGVuYWJsZSByZ2Egc2NsazogJWRcbiIsIHJldCk7Ci0JCXJldHVybiByZXQ7Ci0JfQotCi0JcmV0
ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHJnYS0+YWNsayk7Ci0JaWYgKHJldCkgewotCQlkZXZfZXJy
KHJnYS0+ZGV2LCAiQ2Fubm90IGVuYWJsZSByZ2EgYWNsazogJWRcbiIsIHJldCk7Ci0JCWdvdG8g
ZXJyX2Rpc2FibGVfc2NsazsKLQl9Ci0KLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocmdhLT5o
Y2xrKTsKLQlpZiAocmV0KSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICJDYW5ub3QgZW5hYmxlIHJn
YSBoY2xrOiAlZFxuIiwgcmV0KTsKLQkJZ290byBlcnJfZGlzYWJsZV9hY2xrOwotCX0KLQotCXJl
dHVybiAwOwotCi1lcnJfZGlzYWJsZV9hY2xrOgotCWNsa19kaXNhYmxlX3VucHJlcGFyZShyZ2Et
PmFjbGspOwotZXJyX2Rpc2FibGVfc2NsazoKLQljbGtfZGlzYWJsZV91bnByZXBhcmUocmdhLT5z
Y2xrKTsKLQotCXJldHVybiByZXQ7Ci19Ci0KLXN0YXRpYyB2b2lkIHJnYV9kaXNhYmxlX2Nsb2Nr
cyhzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EpCi17Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJn
YS0+c2Nsayk7Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJnYS0+aGNsayk7Ci0JY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKHJnYS0+YWNsayk7Ci19Ci0KIHN0YXRpYyBpbnQgcmdhX3BhcnNlX2R0KHN0
cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSkKIHsKIAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqY29yZV9y
c3QsICpheGlfcnN0LCAqYWhiX3JzdDsKKwlpbnQgcmV0OwogCiAJY29yZV9yc3QgPSBkZXZtX3Jl
c2V0X2NvbnRyb2xfZ2V0KHJnYS0+ZGV2LCAiY29yZSIpOwogCWlmIChJU19FUlIoY29yZV9yc3Qp
KSB7CkBAIC03NzEsMjIgKzczMywxMCBAQCBzdGF0aWMgaW50IHJnYV9wYXJzZV9kdChzdHJ1Y3Qg
cm9ja2NoaXBfcmdhICpyZ2EpCiAJdWRlbGF5KDEpOwogCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQo
YWhiX3JzdCk7CiAKLQlyZ2EtPnNjbGsgPSBkZXZtX2Nsa19nZXQocmdhLT5kZXYsICJzY2xrIik7
Ci0JaWYgKElTX0VSUihyZ2EtPnNjbGspKSB7Ci0JCWRldl9lcnIocmdhLT5kZXYsICJmYWlsZWQg
dG8gZ2V0IHNjbGsgY2xvY2tcbiIpOwotCQlyZXR1cm4gUFRSX0VSUihyZ2EtPnNjbGspOwotCX0K
LQotCXJnYS0+YWNsayA9IGRldm1fY2xrX2dldChyZ2EtPmRldiwgImFjbGsiKTsKLQlpZiAoSVNf
RVJSKHJnYS0+YWNsaykpIHsKLQkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byBnZXQgYWNs
ayBjbG9ja1xuIik7Ci0JCXJldHVybiBQVFJfRVJSKHJnYS0+YWNsayk7Ci0JfQotCi0JcmdhLT5o
Y2xrID0gZGV2bV9jbGtfZ2V0KHJnYS0+ZGV2LCAiaGNsayIpOwotCWlmIChJU19FUlIocmdhLT5o
Y2xrKSkgewotCQlkZXZfZXJyKHJnYS0+ZGV2LCAiZmFpbGVkIHRvIGdldCBoY2xrIGNsb2NrXG4i
KTsKLQkJcmV0dXJuIFBUUl9FUlIocmdhLT5oY2xrKTsKKwlyZXQgPSBkZXZtX2Nsa19idWxrX2dl
dChyZ2EtPmRldiwgQVJSQVlfU0laRShyZ2EtPmNsa3MpLCByZ2EtPmNsa3MpOworCWlmIChyZXQp
IHsKKwkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byBnZXQgY2xvY2tzXG4iKTsKKwkJcmV0
dXJuIHJldDsKIAl9CiAKIAlyZXR1cm4gMDsKQEAgLTkzNSw3ICs4ODUsNyBAQCBzdGF0aWMgaW50
IF9fbWF5YmVfdW51c2VkIHJnYV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQog
ewogCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCi0J
cmdhX2Rpc2FibGVfY2xvY2tzKHJnYSk7CisJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUoQVJS
QVlfU0laRShyZ2EtPmNsa3MpLCByZ2EtPmNsa3MpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC05NDQs
NyArODk0LDcgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByZ2FfcnVudGltZV9yZXN1bWUo
c3RydWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOwogCi0JcmV0dXJuIHJnYV9lbmFibGVfY2xvY2tzKHJnYSk7CisJcmV0
dXJuIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKEFSUkFZX1NJWkUocmdhLT5jbGtzKSwgcmdhLT5j
bGtzKTsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJnYV9wbSA9IHsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXggNzJhMjhiMTIwZmFi
Zi4uYTkyMmZhYzBjMDFhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLmgKQEAgLTYsNiArNiw3IEBACiAjaWZuZGVmIF9fUkdBX0hfXwogI2RlZmluZSBfX1JHQV9I
X18KIAorI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgogI2luY2x1ZGUgPG1lZGlhL3ZpZGVvYnVmMi12NGwyLmg+CiAjaW5jbHVkZSA8bWVk
aWEvdjRsMi1jdHJscy5oPgpAQCAtODEsOSArODIsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdhIHsK
IAlzdHJ1Y3QgZGV2aWNlICpkZXY7CiAJc3RydWN0IHJlZ21hcCAqZ3JmOwogCXZvaWQgX19pb21l
bSAqcmVnczsKLQlzdHJ1Y3QgY2xrICpzY2xrOwotCXN0cnVjdCBjbGsgKmFjbGs7Ci0Jc3RydWN0
IGNsayAqaGNsazsKKwlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSBjbGtzWzNdOwogCXN0cnVjdCByb2Nr
Y2hpcF9yZ2FfdmVyc2lvbiB2ZXJzaW9uOwogCiAJLyogdmZkIGxvY2sgKi8KCi0tIAoyLjUyLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
