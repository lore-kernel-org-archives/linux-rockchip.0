Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C16F4C47DA9
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jan 2024 11:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6VBaAteM6ql+bYr1R7+b/cHYRSzqywntOV4ayHpsvJw=; b=rvpNMe7o5GhVqe
	kX/A2ktRHf/hjtxzh4ugBY41zR/z9DzURJa0gxGbD7/89BxqblEpUQHwH1U0Wv+7OmHTp4g81aPnw
	R478tdV5wlBl2Mq2Gqc6/77A1x0fq/Y5aQiPFGawUSurbZEsIPQkKkFovxATR5nRvEhYyKKmrkb9f
	bdmi2Vl5H2eJAJZzYzFTCECNsxSxI5Thpl2iOuM8xGhNmThr2x59kfyvtGdPOjc0LqLsJkelH3tmT
	lclAyejmpiLQWaeNmm0bQZ2kU6e9/Ejlsyc9hHW9yRXL9mX0PvludgOFBhlUWCsdyaOx4C9HggYHI
	C+XtoK1shx7rSpquVLVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUPsM-0000000CPX6-12f1;
	Mon, 29 Jan 2024 11:32:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUPsI-0000000CPWF-3TUl
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jan 2024 11:32:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUPsD-0006QM-Qa; Mon, 29 Jan 2024 12:32:21 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUPsD-0039sN-8I; Mon, 29 Jan 2024 12:32:21 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUPsD-00Arjs-0W;
	Mon, 29 Jan 2024 12:32:21 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH] ARM: dts: rockchip: Drop interrupts property from pwm-rockchip nodes
Date: Mon, 29 Jan 2024 12:32:02 +0100
Message-ID: <20240129113205.2453029-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3852; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=aJkset+KwwtyGz3szqS87HS6YO5sluDt8/uSeURhg7E=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlt4y28igXx2IcH/DOBFd6cOIC/735G9y9B1uNF /v7KQpIPxKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZbeMtgAKCRCPgPtYfRL+ TtV4CACY1IwBBxQTENSEhf5D/i0IEB0848Jdtl+l89L24uPCu05+1D1IbZtjxB8eQn4IJgjp/qu H/gglMGlYPqfNy5HT0uvDj/OQhN3UECt6EBx7QdZ1KMpw/4w1EI34djWS/mBuAEzMAA/9Bx1EKt TkUE/6+5/YAZSq3TXnu/G8v26oGQ3ODbm3dzix4zrCD/xduWWpNXtp9hY7HjWYw28KjgcJmiSEu kzhh13Vpen/sziIXKWs6eQGKqdujKT4CM+V4raEctRyO4aGudPUAP9lBBWja4p3bQmfx9f0ST4r 06yuhW5zDqOodYHbfCJOQUE+J4A8kLwNug6AOfuWl1XU2H5h
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_033226_894528_E50C83B8 
X-CRM114-Status: GOOD (  12.71  )
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

VGhlIGJpbmRpbmcgZG9lc24ndCBkZWZpbmUgaW50ZXJydXB0cyBhbmQgYWRkaW5nIHN1Y2ggYSBk
ZWZpbml0aW9uIHdhcwpyZWZ1c2VkIGJlY2F1c2UgaXQncyB1bmNsZWFyIGhvdyB0aGV5IHNob3Vs
ZCBldmVyIGJlIHVzZWQgYW5kIHRoZQpyZWxldmFudCByZWdpc3RlcnMgYXJlIG91dHNpZGUgdGhl
IFBXTSByYW5nZS4gU28gZHJvcCB0aGVtIGZpeGluZwpzZXZlcmFsIGR0YnNfY2hlY2sgd2Fybmlu
Z3MgbGlrZToKCglhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMDgtZWxnaW4tcjEuZHRi
OiBwd21AMTAyODAwMzA6ICdpbnRlcnJ1cHRzJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJl
Z2V4ZXM6ICdwaW5jdHJsLVswLTldKycKCWZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRy
ZWUub3JnL3NjaGVtYXMvcHdtL3B3bS1yb2NrY2hpcC55YW1sIwoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkhlbGxv
LAoKYWZ0ZXIgSSBzZW50Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXB3bS8yMDI0MDEw
NjE0MjY1NC4xMjYyNzU4LTItdS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlCnRoZSBmZWVk
YmFjayBpbiB0aGF0IHRocmVhZCBhbmQgb24gaXJjIHdhcyB0aGF0IGluc3RlYWQgb2YgYWRkaW5n
IHRoZQppbnRlcnJ1cHRzIHRvIHRoZSBiaW5kaW5nIHRoZSByaWdodCB3YXkgdG8gZ2V0IHJpZCBv
ZiB0aGUgd2FybmluZ3MgaXMgdG8KZHJvcCB0aGUgaW50ZXJydXB0IHByb3BlcnRpZXMgaW5zdGVh
ZC4gVGhpcyBpcyBpbXBsZW1lbnRlZCBoZXJlLgoKQmVzdCByZWdhcmRzClV3ZQoKIGFyY2gvYXJt
L2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEwOC5kdHNpIHwgOCAtLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2No
aXAvcnYxMTA4LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMDguZHRzaQpp
bmRleCBhYmYzMDA2ZjBhODQuLmYzMjkxZjNiYmM2ZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvcm9ja2NoaXAvcnYxMTA4LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2No
aXAvcnYxMTA4LmR0c2kKQEAgLTE5Niw3ICsxOTYsNiBAQCBzcGk6IHNwaUAxMDI3MDAwMCB7CiAJ
cHdtNDogcHdtQDEwMjgwMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtcHdt
IiwgInJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgxMDI4MDAwMCAweDEwPjsKLQkJ
aW50ZXJydXB0cyA9IDxHSUNfU1BJIDM4IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQljbG9ja3Mg
PSA8JmNydSBTQ0xLX1BXTT4sIDwmY3J1IFBDTEtfUFdNPjsKIAkJY2xvY2stbmFtZXMgPSAicHdt
IiwgInBjbGsiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwpAQCAtMjA4LDcgKzIwNyw2
IEBAIHB3bTQ6IHB3bUAxMDI4MDAwMCB7CiAJcHdtNTogcHdtQDEwMjgwMDEwIHsKIAkJY29tcGF0
aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQly
ZWcgPSA8MHgxMDI4MDAxMCAweDEwPjsKLQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM4IElSUV9U
WVBFX0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNydSBTQ0xLX1BXTT4sIDwmY3J1IFBDTEtf
UFdNPjsKIAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBjbGsiOwogCQlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwpAQCAtMjIwLDcgKzIxOCw2IEBAIHB3bTU6IHB3bUAxMDI4MDAxMCB7CiAJcHdt
NjogcHdtQDEwMjgwMDIwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwg
InJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgxMDI4MDAyMCAweDEwPjsKLQkJaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDM4IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8
JmNydSBTQ0xLX1BXTT4sIDwmY3J1IFBDTEtfUFdNPjsKIAkJY2xvY2stbmFtZXMgPSAicHdtIiwg
InBjbGsiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwpAQCAtMjMyLDcgKzIyOSw2IEBA
IHB3bTY6IHB3bUAxMDI4MDAyMCB7CiAJcHdtNzogcHdtQDEwMjgwMDMwIHsKIAkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJvY2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcg
PSA8MHgxMDI4MDAzMCAweDEwPjsKLQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM4IElSUV9UWVBF
X0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNydSBTQ0xLX1BXTT4sIDwmY3J1IFBDTEtfUFdN
PjsKIAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBjbGsiOwogCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwpAQCAtMzg2LDcgKzM4Miw2IEBAIGkyYzA6IGkyY0AyMDAwMDAwMCB7CiAJcHdtMDog
cHdtQDIwMDQwMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJv
Y2tjaGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgyMDA0MDAwMCAweDEwPjsKLQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDM5IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNy
dSBTQ0xLX1BXTTBfUE1VPiwgPCZjcnUgUENMS19QV00wX1BNVT47CiAJCWNsb2NrLW5hbWVzID0g
InB3bSIsICJwY2xrIjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKQEAgLTM5OCw3ICsz
OTMsNiBAQCBwd20wOiBwd21AMjAwNDAwMDAgewogCXB3bTE6IHB3bUAyMDA0MDAxMCB7CiAJCWNv
bXBhdGlibGUgPSAicm9ja2NoaXAscnYxMTA4LXB3bSIsICJyb2NrY2hpcCxyazMyODgtcHdtIjsK
IAkJcmVnID0gPDB4MjAwNDAwMTAgMHgxMD47Ci0JCWludGVycnVwdHMgPSA8R0lDX1NQSSAzOSBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKIAkJY2xvY2tzID0gPCZjcnUgU0NMS19QV00wX1BNVT4sIDwm
Y3J1IFBDTEtfUFdNMF9QTVU+OwogCQljbG9jay1uYW1lcyA9ICJwd20iLCAicGNsayI7CiAJCXBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CkBAIC00MTAsNyArNDA0LDYgQEAgcHdtMTogcHdtQDIw
MDQwMDEwIHsKIAlwd20yOiBwd21AMjAwNDAwMjAgewogCQljb21wYXRpYmxlID0gInJvY2tjaGlw
LHJ2MTEwOC1wd20iLCAicm9ja2NoaXAscmszMjg4LXB3bSI7CiAJCXJlZyA9IDwweDIwMDQwMDIw
IDB4MTA+OwotCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzkgSVJRX1RZUEVfTEVWRUxfSElHSD47
CiAJCWNsb2NrcyA9IDwmY3J1IFNDTEtfUFdNMF9QTVU+LCA8JmNydSBQQ0xLX1BXTTBfUE1VPjsK
IAkJY2xvY2stbmFtZXMgPSAicHdtIiwgInBjbGsiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwpAQCAtNDIyLDcgKzQxNSw2IEBAIHB3bTI6IHB3bUAyMDA0MDAyMCB7CiAJcHdtMzogcHdt
QDIwMDQwMDMwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtcHdtIiwgInJvY2tj
aGlwLHJrMzI4OC1wd20iOwogCQlyZWcgPSA8MHgyMDA0MDAzMCAweDEwPjsKLQkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDM5IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQljbG9ja3MgPSA8JmNydSBT
Q0xLX1BXTTBfUE1VPiwgPCZjcnUgUENMS19QV00wX1BNVT47CiAJCWNsb2NrLW5hbWVzID0gInB3
bSIsICJwY2xrIjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKCmJhc2UtY29tbWl0OiA1
OTY3NjQxODNiZThlYmIxMzM1MmIyODFhNDQyYTFmMTE1MWM5YjA2Ci0tIAoyLjQzLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
