Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E5B3CCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xe6BuSxthiRJFlS8r7mnYFIper90S9BX6SVVJpXK36Q=; b=MEnVv9LSwwKDRN
	CRoxd493AeHdEpzNslaY62SMUjQD4bd7XQWG2yem+6HuJfvDTcKFqk1ggeHwDHpsBDt8rz+YN+T6X
	unaqlIvjgSnl7/LIeoi4cMqY6Degv2MyXJcYlbk2NxevxjDKR2KtWemHT7O0KMTCaUBi31Uts3b20
	51pccOnLJ3ldr9MLr6M7orG+PEx7umWRKB1fl/DMCr2D6B9741yxeWrFuPtaXBvhgSQDOemh9p49/
	GFrGcv8VTNtC7UaSBCFNcpHnNYyZfroY8AyG6O8rAnM2xt1jP0rTp2ZikZdQSjztZ5vGkuFOTT+yY
	1ahOjz8j5We87xy7HUgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638p-00000001Zfp-0gDs;
	Tue, 07 Oct 2025 08:33:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638G-00000001Yna-1OgF
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:33:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637z-0002Hb-5k; Tue, 07 Oct 2025 10:32:59 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:32:07 +0200
Subject: [PATCH 14/16] arm64: dts: rockchip: add rga3 dt nodes
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-14-36ad85570402@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251007_013317_740673_47120B94 
X-CRM114-Status: UNSURE (   8.23  )
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

QWRkIGRldmljZXRyZWUgbm9kZXMgZm9yIHRoZSBSR0EzIHBlcmlwaGVyYWwgaW4gdGhlIFJLMzU4
OC4KVGhleSBhcmUgYmFzZWQgb24gdGhlIHZlbmRvciBkb3duc3RyZWFtIGRldmljZSBub2Rlcywg
YnV0IHdlcmUgYWRqdXN0ZWQKdG8gd29yayB3aXRoIHRoZSByb2NrY2hpcC1yZ2EgYW5kIGlvbW11
IGRyaXZlciBrZXJuZWwuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVs
QHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LWJhc2UuZHRzaSB8IDQ2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDQ2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1iYXNlLmR0c2kKaW5kZXggNzBmMDNlNjhiYTU1MGQ2YjkxNDIxMzFkY2NhODZlOGRlZDM2
ZTJmMS4uMDg4ODVkOWMxOWUwYzEwNGFiMGY3MjNlYzE2MWI4Mzk5OGNmYjljNyAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCisrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQpAQCAtMTE3Miw2ICsx
MTcyLDUyIEBAIHJnYTogcmdhQGZkYjgwMDAwIHsKIAkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIg
UkszNTg4X1BEX1ZEUFU+OwogCX07CiAKKwlyZ2EzX2NvcmUwOiByZ2FAZmRiNjAwMDAgeworCQlj
b21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1yZ2EzIjsKKwkJcmVnID0gPDB4MCAweGZkYjYw
MDAwIDB4MCAweDIwMD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTQgSVJRX1RZUEVfTEVW
RUxfSElHSCAwPjsKKwkJaW50ZXJydXB0LW5hbWVzID0gInJnYTNfY29yZTBfaXJxIjsKKwkJY2xv
Y2tzID0gPCZjcnUgQUNMS19SR0EzXzA+LCA8JmNydSBIQ0xLX1JHQTNfMD4sIDwmY3J1IENMS19S
R0EzXzBfQ09SRT47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayIsICJzY2xrIjsKKwkJ
cmVzZXRzID0gPCZjcnUgU1JTVF9SR0EzXzBfQ09SRT4sIDwmY3J1IFNSU1RfQV9SR0EzXzA+LCA8
JmNydSBTUlNUX0hfUkdBM18wPjsKKwkJcmVzZXQtbmFtZXMgPSAiY29yZSIsICJheGkiLCAiYWhi
IjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1JHQTMwPjsKKwkJaW9tbXVz
ID0gPCZyZ2EzXzBfbW11PjsKKwl9OworCisJcmdhM18wX21tdTogaW9tbXVAZmRiNjBmMDAgewor
CQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1pb21tdSIsICJyb2NrY2hpcCxyazM1Njgt
aW9tbXUiOworCQlyZWcgPSA8MHgwIDB4ZmRiNjBmMDAgMHgwIDB4MTAwPjsKKwkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDExNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJY2xvY2tzID0gPCZjcnUg
QUNMS19SR0EzXzA+LCA8JmNydSBIQ0xLX1JHQTNfMD47CisJCWNsb2NrLW5hbWVzID0gImFjbGsi
LCAiaWZhY2UiOworCQkjaW9tbXUtY2VsbHMgPSA8MD47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBv
d2VyIFJLMzU4OF9QRF9SR0EzMD47CisJfTsKKworCXJnYTNfY29yZTE6IHJnYUBmZGI3MDAwMCB7
CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXJnYTMiOworCQlyZWcgPSA8MHgwIDB4
ZmRiNzAwMDAgMHgwIDB4MjAwPjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExNSBJUlFfVFlQ
RV9MRVZFTF9ISUdIIDA+OworCQlpbnRlcnJ1cHQtbmFtZXMgPSAicmdhM19jb3JlMV9pcnEiOwor
CQljbG9ja3MgPSA8JmNydSBBQ0xLX1JHQTNfMT4sIDwmY3J1IEhDTEtfUkdBM18xPiwgPCZjcnUg
Q0xLX1JHQTNfMV9DT1JFPjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJoY2xrIiwgInNjbGsi
OworCQlyZXNldHMgPSA8JmNydSBTUlNUX1JHQTNfMV9DT1JFPiwgPCZjcnUgU1JTVF9BX1JHQTNf
MT4sIDwmY3J1IFNSU1RfSF9SR0EzXzE+OworCQlyZXNldC1uYW1lcyA9ICJjb3JlIiwgImF4aSIs
ICJhaGIiOworCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfUkdBMzE+OworCQlp
b21tdXMgPSA8JnJnYTNfMV9tbXU+OworCX07CisKKwlyZ2EzXzFfbW11OiBpb21tdUBmZGI3MGYw
MCB7CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LWlvbW11IiwgInJvY2tjaGlwLHJr
MzU2OC1pb21tdSI7CisJCXJlZyA9IDwweDAgMHhmZGI3MGYwMCAweDAgMHgxMDA+OworCQlpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgMTE1IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQljbG9ja3MgPSA8
JmNydSBBQ0xLX1JHQTNfMT4sIDwmY3J1IEhDTEtfUkdBM18xPjsKKwkJY2xvY2stbmFtZXMgPSAi
YWNsayIsICJpZmFjZSI7CisJCSNpb21tdS1jZWxscyA9IDwwPjsKKwkJcG93ZXItZG9tYWlucyA9
IDwmcG93ZXIgUkszNTg4X1BEX1JHQTMxPjsKKwl9OworCiAJdmVwdTEyMV8wOiB2aWRlby1jb2Rl
Y0BmZGJhMDAwMCB7CiAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXZlcHUxMjEiOwog
CQlyZWcgPSA8MHgwIDB4ZmRiYTAwMDAgMHgwIDB4ODAwPjsKCi0tIAoyLjUxLjAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
