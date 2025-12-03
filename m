Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9A9BD15DAC
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DP4kE7JZUlHHeno/EGWWad4/hgIOx8Yzzy7GZRk8Gc=; b=FgZadKrbhTdDEH
	f/YOf0al52w4lWujKH9jyZ1MH+3xKzmob9sCMSAoqTR8p65jbuuDXj+RkBZFbJir2NTgfhnkl+GNo
	2r91nRXb48P4MdimFxshgttEWmgezAqzc5zWBHyflTYVKg3e1/PBQHg5FVEVCFWvzgv3Q+Mu68VjB
	3JiXm8Jxhzxs5cPIVC/BRkdCQ0JFLdqtusc5PWGZ/CXxLrt3pu00836BbnxaHkuTdBpNXdWRbOGVG
	dPKft21+xEVrU8It4axYiw/HaAbEVeGiAznUvg224KX6m7W/omXpsqTSUUdT5XqheaKOcyHDTR6up
	cdJHNXu23XECX6x7xdRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBv-00000006kuU-2NxH;
	Wed, 03 Dec 2025 15:54:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBS-00000006kBE-1z0U
	for linux-rockchip@bombadil.infradead.org;
	Wed, 03 Dec 2025 15:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=P/cVmXzJ7JwOlvq0YYe7jbLnxMyJSOmoTr5Y7wduxwQ=; b=fLb8d2myEyfkMZzzQojrgSv2Yc
	LZr5M8RL0lP58xgEipJqs19UEj30CeUawnlXB+j4EyVfjsveV6cajSHxgFT8JX2LAKO5Eut3QKs4m
	PFa9AVYKcNuxQ5S/MRS5bboZA9svwqOUFJ66a3vit2aURLuSVTpCquaAVvzKEFVpr/tHwLosUMqAi
	VDB6yIYRiKvbWbniPZVWmPKjOCjSYI1Mymsh+MD0hohc6NL0HL+rWWbvTBeVg7g3upm6NlvSbzOfq
	RAuIK9zns/8UVC9GzUH58OY9PMPvO7rfms2BWYJsNHB9DJz8hLUuBj8N1av9kvnz3LoN+zUcnIN3p
	thaUpCQQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoJp-00000002TO4-3ZIF
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 14:59:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAf-0007dW-4Q; Wed, 03 Dec 2025 16:53:37 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:44 +0100
Subject: [PATCH v2 22/22] arm64: dts: rockchip: add rga3 dt nodes
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-22-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251203_145902_201796_5B220522 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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

QWRkIGRldmljZXRyZWUgbm9kZXMgZm9yIHRoZSBSR0EzIChSYXN0ZXIgR3JhcGhpY3MgQWNjZWxl
cmF0aW9uIDMpCnBlcmlwaGVyYWwgaW4gdGhlIFJLMzU4OC4KClRoZSBleGlzdGluZyByZ2Egbm9k
ZSByZWZlcnMgdG8gdGhlIFJHQTIgcGVyaXBoZXJhbC4gVGhlIFJLMzU4OApjb250YWlucyBvbmUg
UkdBMiBjb3JlIGFuZCB0d28gUkdBMyBjb3Jlcy4gQm90aCBmZWF0dXJlIGEgc2ltaWxhcgpmdW5j
dGlvbmFsaXR5IG9mIHNjYWxpbmcsIGNyb3BwaW5nIGFuZCByb3RhdGluZyBvZiB1cCB0byB0d28g
aW5wdXQKaW1hZ2VzIGludG8gb25lIG91dHB1dCBpbWFnZS4gS2V5IGRpZmZlcmVuY2VzIG9mIHRo
ZSBSR0EzIGFyZToKCi0gc3VwcG9ydHMgMTBiaXQgWVVWIG91dHB1dCBmb3JtYXRzCi0gc3VwcG9y
dHMgOHg4IHRpbGVzIGFuZCBGQkNEIGFzIGlucHV0cyBhbmQgb3V0cHV0cwotIHN1cHBvcnRzIEJU
MjAyMCBjb2xvciBzcGFjZSBjb252ZXJzaW9uCi0gbWF4IG91dHB1dCByZXNvbHV0aW9uIG9mICg4
MTkyLTY0KXgoODE5Mi02NCkKLSBNTVUgY2FuIG1hcCB1cCB0byAzMkcgRERSIFJBTQotIGZ1bGx5
IHBsYW5hciBmb3JtYXRzICgzIHBsYW5lcykgYXJlIG5vdCBzdXBwb3J0ZWQKLSBtYXggc2NhbGUg
dXAvZG93biBmYWN0b3Igb2YgOAoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVz
Y2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1iYXNlLmR0c2kgfCA0NiArKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtYmFzZS5kdHNpCmluZGV4IGUyNTAwZTMxYzQzNGEuLjExYmFkMWY0MWE4NjQgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKQEAgLTEy
NzMsNiArMTI3Myw1MiBAQCByZ2E6IHJnYUBmZGI4MDAwMCB7CiAJCXBvd2VyLWRvbWFpbnMgPSA8
JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsKIAl9OwogCisJcmdhM19jb3JlMDogcmdhQGZkYjYwMDAw
IHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtcmdhMyI7CisJCXJlZyA9IDwweDAg
MHhmZGI2MDAwMCAweDAgMHgyMDA+OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTE0IElSUV9U
WVBFX0xFVkVMX0hJR0ggMD47CisJCWludGVycnVwdC1uYW1lcyA9ICJyZ2EzX2NvcmUwX2lycSI7
CisJCWNsb2NrcyA9IDwmY3J1IEFDTEtfUkdBM18wPiwgPCZjcnUgSENMS19SR0EzXzA+LCA8JmNy
dSBDTEtfUkdBM18wX0NPUkU+OworCQljbG9jay1uYW1lcyA9ICJhY2xrIiwgImhjbGsiLCAic2Ns
ayI7CisJCXJlc2V0cyA9IDwmY3J1IFNSU1RfUkdBM18wX0NPUkU+LCA8JmNydSBTUlNUX0FfUkdB
M18wPiwgPCZjcnUgU1JTVF9IX1JHQTNfMD47CisJCXJlc2V0LW5hbWVzID0gImNvcmUiLCAiYXhp
IiwgImFoYiI7CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9SR0EzMD47CisJ
CWlvbW11cyA9IDwmcmdhM18wX21tdT47CisJfTsKKworCXJnYTNfMF9tbXU6IGlvbW11QGZkYjYw
ZjAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUiLCAicm9ja2NoaXAs
cmszNTY4LWlvbW11IjsKKwkJcmVnID0gPDB4MCAweGZkYjYwZjAwIDB4MCAweDEwMD47CisJCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSAxMTQgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tz
ID0gPCZjcnUgQUNMS19SR0EzXzA+LCA8JmNydSBIQ0xLX1JHQTNfMD47CisJCWNsb2NrLW5hbWVz
ID0gImFjbGsiLCAiaWZhY2UiOworCQkjaW9tbXUtY2VsbHMgPSA8MD47CisJCXBvd2VyLWRvbWFp
bnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9SR0EzMD47CisJfTsKKworCXJnYTNfY29yZTE6IHJnYUBm
ZGI3MDAwMCB7CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXJnYTMiOworCQlyZWcg
PSA8MHgwIDB4ZmRiNzAwMDAgMHgwIDB4MjAwPjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEx
NSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OworCQlpbnRlcnJ1cHQtbmFtZXMgPSAicmdhM19jb3Jl
MV9pcnEiOworCQljbG9ja3MgPSA8JmNydSBBQ0xLX1JHQTNfMT4sIDwmY3J1IEhDTEtfUkdBM18x
PiwgPCZjcnUgQ0xLX1JHQTNfMV9DT1JFPjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJoY2xr
IiwgInNjbGsiOworCQlyZXNldHMgPSA8JmNydSBTUlNUX1JHQTNfMV9DT1JFPiwgPCZjcnUgU1JT
VF9BX1JHQTNfMT4sIDwmY3J1IFNSU1RfSF9SR0EzXzE+OworCQlyZXNldC1uYW1lcyA9ICJjb3Jl
IiwgImF4aSIsICJhaGIiOworCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfUkdB
MzE+OworCQlpb21tdXMgPSA8JnJnYTNfMV9tbXU+OworCX07CisKKwlyZ2EzXzFfbW11OiBpb21t
dUBmZGI3MGYwMCB7CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LWlvbW11IiwgInJv
Y2tjaGlwLHJrMzU2OC1pb21tdSI7CisJCXJlZyA9IDwweDAgMHhmZGI3MGYwMCAweDAgMHgxMDA+
OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTE1IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJ
CWNsb2NrcyA9IDwmY3J1IEFDTEtfUkdBM18xPiwgPCZjcnUgSENMS19SR0EzXzE+OworCQljbG9j
ay1uYW1lcyA9ICJhY2xrIiwgImlmYWNlIjsKKwkJI2lvbW11LWNlbGxzID0gPDA+OworCQlwb3dl
ci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfUkdBMzE+OworCX07CisKIAl2ZXB1MTIxXzA6
IHZpZGVvLWNvZGVjQGZkYmEwMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgt
dmVwdTEyMSI7CiAJCXJlZyA9IDwweDAgMHhmZGJhMDAwMCAweDAgMHg4MDA+OwoKLS0gCjIuNTIu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
