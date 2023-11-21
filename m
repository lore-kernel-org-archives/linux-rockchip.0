Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A705C61D94
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Nov 2023 13:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8SPKxqv/qBMA8PiydlrNYk45n7ZE4n/JNjYFixK9KI=; b=SNHFQMs6aKBdmc
	iDPJIasZsJUwN0ICH/k8tYyHqgBtIOWdJBBex1Kv2ZdkaeKqUg87AOfdFaWXbXqXqF73K94NZkdwx
	zi8sDWNEnPvPjmdyinOFtyLp39qwYR93v9yKA2iQo8Oogw9qAos0E9eeiF9ne1WA0EkcHHoWtkfXh
	0zf1a+GKiupApmMDK6mcthzFIfC5JhRRrVgLZ3gh9h0FBi7U2hpEvtvFdfpG9CKng7K3l1JO1G8SO
	EcDCJQwRHabFJCblzVvLvGXWYDYlMOx90mqv1iOT9wbp1TcbDzNBsp7DDtzROYWQSfFvSi8Ile0xE
	d/FPyPKjHU0P+OMY8KVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5RCR-00GwKg-2s;
	Tue, 21 Nov 2023 13:53:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5RAg-00GuSL-1f
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Nov 2023 13:52:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r5RAZ-0006D3-Pm; Tue, 21 Nov 2023 14:52:03 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r5RAX-00Ab1M-CX; Tue, 21 Nov 2023 14:52:01 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r5RAX-004xgB-3I; Tue, 21 Nov 2023 14:52:01 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH v3 080/108] pwm: rockchip: Make use of devm_pwmchip_alloc() function
Date: Tue, 21 Nov 2023 14:50:22 +0100
Message-ID: <20231121134901.208535-81-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0.586.gbc5204569f7d.dirty
In-Reply-To: <20231121134901.208535-1-u.kleine-koenig@pengutronix.de>
References: <20231121134901.208535-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2775; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=p7C89rf0vbSpPBn3dJa5rjkaW4brA6YJX6706l1o+po=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlXLWk3snkBxLfhqkuD47vkpKvOUm0i6jRp6MO7 hHg89dZvPaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZVy1pAAKCRCPgPtYfRL+ TqnqB/4qQJfDzXjETrbQIiy1ywk7gLVAzCtU/Yl60Hd4pmRRmxcM1Y7Sqr56b8Qe7vXLj05UUC8 Sqc74+ExoHhX/GLU7hUGvoydJ4nQlMbbFW8YIjpKeiIQMjMgjl0EKSABmkODc+gdXTZmd14OJOC UlLoLjStkzBSHaG/NnJ9WXcgmG+doJFFj2IbQawBo8PR7uGVVKgy+LkXAnzaG0uP3ZXxjoXf0em +OMHcEhI/7xPWCy4K9yO+bOUZpRkHI/aSe0FinSElf6YLx91FbNagGq2KeDSUkPp14JauC/aAP8 ns9wkRHZ1ubJKDsL7C0PFj5bx9DhFfViPvVQrxRnYebT9qrK
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_055210_592667_58E16783 
X-CRM114-Status: GOOD (  14.96  )
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

VGhpcyBwcmVwYXJlcyB0aGUgcHdtLXJvY2tjaGlwIGRyaXZlciB0byBmdXJ0aGVyIGNoYW5nZXMg
b2YgdGhlIHB3bSBjb3JlCm91dGxpbmVkIGluIHRoZSBjb21taXQgaW50cm9kdWNpbmcgZGV2bV9w
d21jaGlwX2FsbG9jKCkuIFRoZXJlIGlzIG5vCmludGVuZGVkIHNlbWFudGljYWwgY2hhbmdlIGFu
ZCB0aGUgZHJpdmVyIHNob3VsZCBiZWhhdmUgYXMgYmVmb3JlLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyB8IDI0ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlw
LmMKaW5kZXggYTdjNjQ3ZTM3ODM3Li41ZjhkZWM0YTJjNTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cHdtL3B3bS1yb2NrY2hpcC5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCkBAIC0z
MCw3ICszMCw2IEBACiAjZGVmaW5lIFBXTV9MUF9ESVNBQkxFCQkoMCA8PCA4KQogCiBzdHJ1Y3Qg
cm9ja2NoaXBfcHdtX2NoaXAgewotCXN0cnVjdCBwd21fY2hpcCBjaGlwOwogCXN0cnVjdCBjbGsg
KmNsazsKIAlzdHJ1Y3QgY2xrICpwY2xrOwogCWNvbnN0IHN0cnVjdCByb2NrY2hpcF9wd21fZGF0
YSAqZGF0YTsKQEAgLTU0LDcgKzUzLDcgQEAgc3RydWN0IHJvY2tjaGlwX3B3bV9kYXRhIHsKIAog
c3RhdGljIGlubGluZSBzdHJ1Y3Qgcm9ja2NoaXBfcHdtX2NoaXAgKnRvX3JvY2tjaGlwX3B3bV9j
aGlwKHN0cnVjdCBwd21fY2hpcCAqY2hpcCkKIHsKLQlyZXR1cm4gY29udGFpbmVyX29mKGNoaXAs
IHN0cnVjdCByb2NrY2hpcF9wd21fY2hpcCwgY2hpcCk7CisJcmV0dXJuIHB3bWNoaXBfcHJpdihj
aGlwKTsKIH0KIAogc3RhdGljIGludCByb2NrY2hpcF9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21f
Y2hpcCAqY2hpcCwKQEAgLTI5NiwxNCArMjk1LDE2IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2Ys
IHJvY2tjaGlwX3B3bV9kdF9pZHMpOwogCiBzdGF0aWMgaW50IHJvY2tjaGlwX3B3bV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogeworCXN0cnVjdCBwd21fY2hpcCAqY2hpcDsK
IAlzdHJ1Y3Qgcm9ja2NoaXBfcHdtX2NoaXAgKnBjOwogCXUzMiBlbmFibGVfY29uZiwgY3RybDsK
IAlib29sIGVuYWJsZWQ7CiAJaW50IHJldCwgY291bnQ7CiAKLQlwYyA9IGRldm1fa3phbGxvYygm
cGRldi0+ZGV2LCBzaXplb2YoKnBjKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFwYykKLQkJcmV0dXJu
IC1FTk9NRU07CisJY2hpcCA9IGRldm1fcHdtY2hpcF9hbGxvYygmcGRldi0+ZGV2LCAxLCBzaXpl
b2YoKnBjKSk7CisJaWYgKElTX0VSUihjaGlwKSkKKwkJcmV0dXJuIFBUUl9FUlIoY2hpcCk7CisJ
cGMgPSB0b19yb2NrY2hpcF9wd21fY2hpcChjaGlwKTsKIAogCXBjLT5iYXNlID0gZGV2bV9wbGF0
Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwogCWlmIChJU19FUlIocGMtPmJhc2UpKQpA
QCAtMzM3LDE4ICszMzgsMTYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wd21fcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJZ290byBlcnJfY2xrOwogCX0KIAotCXBsYXRmb3Jt
X3NldF9kcnZkYXRhKHBkZXYsIHBjKTsKKwlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBjaGlw
KTsKIAogCXBjLT5kYXRhID0gZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOwotCXBj
LT5jaGlwLmRldiA9ICZwZGV2LT5kZXY7Ci0JcGMtPmNoaXAub3BzID0gJnJvY2tjaGlwX3B3bV9v
cHM7Ci0JcGMtPmNoaXAubnB3bSA9IDE7CisJY2hpcC0+b3BzID0gJnJvY2tjaGlwX3B3bV9vcHM7
CiAKIAllbmFibGVfY29uZiA9IHBjLT5kYXRhLT5lbmFibGVfY29uZjsKIAljdHJsID0gcmVhZGxf
cmVsYXhlZChwYy0+YmFzZSArIHBjLT5kYXRhLT5yZWdzLmN0cmwpOwogCWVuYWJsZWQgPSAoY3Ry
bCAmIGVuYWJsZV9jb25mKSA9PSBlbmFibGVfY29uZjsKIAotCXJldCA9IHB3bWNoaXBfYWRkKCZw
Yy0+Y2hpcCk7CisJcmV0ID0gcHdtY2hpcF9hZGQoY2hpcCk7CiAJaWYgKHJldCA8IDApIHsKIAkJ
ZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsICJwd21jaGlwX2FkZCgpIGZhaWxlZFxuIik7
CiAJCWdvdG8gZXJyX3BjbGs7CkBAIC0zNzIsOSArMzcxLDEwIEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIHN0YXRpYyB2b2lk
IHJvY2tjaGlwX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKLQlz
dHJ1Y3Qgcm9ja2NoaXBfcHdtX2NoaXAgKnBjID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7
CisJc3RydWN0IHB3bV9jaGlwICpjaGlwID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CisJ
c3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwICpwYyA9IHRvX3JvY2tjaGlwX3B3bV9jaGlwKGNoaXAp
OwogCi0JcHdtY2hpcF9yZW1vdmUoJnBjLT5jaGlwKTsKKwlwd21jaGlwX3JlbW92ZShjaGlwKTsK
IAogCWNsa191bnByZXBhcmUocGMtPnBjbGspOwogCWNsa191bnByZXBhcmUocGMtPmNsayk7Ci0t
IAoyLjQyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
