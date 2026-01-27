Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E748D1953D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+saNsa41hRgpnJST4DknylYh10Zb5fhRVUJ40MqGiw=; b=jytaOoqGppLOCd
	TvRqyagsIX2UGjOPja1G4WaGBjCXLSLU5wUkNTFjt4AUeKuLapicf7wx5JzAFkupx39uB0oA8Vt9i
	P7WwP5XHgVvPnQsqEvti3uT+noy3j+uxoKw8BrFweAWmfbm9OWEr+9M7Ct38uv641WmvDqjgcj6a4
	bCO9+I/GmVnvu7TCZDwToBtuXNLeYHAFtnn6d2tKbKAo29gQNP8jMjqy0SqagDrKXlnLsNYPYqpyJ
	p7+XWLgRFYmOUbljS8UspteJpEuNFNzmNWfz9dmN9zSbV6CRgJ5yRYqPKfDRLCwVMib+fO/EYaomR
	JA8s4g98JwvtsdkDXocA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkHK-0000000ES4y-2eQA;
	Tue, 27 Jan 2026 14:42:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkFj-0000000EQk4-1g3A
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:41:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkFW-0007YT-TM; Tue, 27 Jan 2026 15:40:59 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:36 +0100
Subject: [PATCH v3 27/27] arm64: dts: rockchip: add rga3 dt nodes
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-27-77b273067beb@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260127_064112_333689_D79A70AC 
X-CRM114-Status: UNSURE (   9.35  )
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
dXAvZG93biBmYWN0b3Igb2YgOCAoUkdBMiBhbGxvd3MgdXAgdG8gMTYpCgpTaWduZWQtb2ZmLWJ5
OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8IDQ0ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKaW5kZXggMmE3OTIxNzkz
MDIwNi4uZDFkNDRjZjk0OGU5MiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtYmFzZS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LWJhc2UuZHRzaQpAQCAtMTI3Myw2ICsxMjczLDUwIEBAIHJnYTogcmdhQGZkYjgwMDAw
IHsKIAkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1ZEUFU+OwogCX07CiAKKwly
Z2EzX2NvcmUwOiByZ2FAZmRiNjAwMDAgeworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4
OC1yZ2EzIjsKKwkJcmVnID0gPDB4MCAweGZkYjYwMDAwIDB4MCAweDIwMD47CisJCWludGVycnVw
dHMgPSA8R0lDX1NQSSAxMTQgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tzID0gPCZj
cnUgQUNMS19SR0EzXzA+LCA8JmNydSBIQ0xLX1JHQTNfMD4sIDwmY3J1IENMS19SR0EzXzBfQ09S
RT47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayIsICJzY2xrIjsKKwkJcmVzZXRzID0g
PCZjcnUgU1JTVF9SR0EzXzBfQ09SRT4sIDwmY3J1IFNSU1RfQV9SR0EzXzA+LCA8JmNydSBTUlNU
X0hfUkdBM18wPjsKKwkJcmVzZXQtbmFtZXMgPSAiY29yZSIsICJheGkiLCAiYWhiIjsKKwkJcG93
ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1JHQTMwPjsKKwkJaW9tbXVzID0gPCZyZ2Ez
XzBfbW11PjsKKwl9OworCisJcmdhM18wX21tdTogaW9tbXVAZmRiNjBmMDAgeworCQljb21wYXRp
YmxlID0gInJvY2tjaGlwLHJrMzU4OC1pb21tdSIsICJyb2NrY2hpcCxyazM1NjgtaW9tbXUiOwor
CQlyZWcgPSA8MHgwIDB4ZmRiNjBmMDAgMHgwIDB4MTAwPjsKKwkJaW50ZXJydXB0cyA9IDxHSUNf
U1BJIDExNCBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OworCQljbG9ja3MgPSA8JmNydSBBQ0xLX1JH
QTNfMD4sIDwmY3J1IEhDTEtfUkdBM18wPjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFj
ZSI7CisJCSNpb21tdS1jZWxscyA9IDwwPjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUksz
NTg4X1BEX1JHQTMwPjsKKwl9OworCisJcmdhM19jb3JlMTogcmdhQGZkYjcwMDAwIHsKKwkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtcmdhMyI7CisJCXJlZyA9IDwweDAgMHhmZGI3MDAw
MCAweDAgMHgyMDA+OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTE1IElSUV9UWVBFX0xFVkVM
X0hJR0ggMD47CisJCWNsb2NrcyA9IDwmY3J1IEFDTEtfUkdBM18xPiwgPCZjcnUgSENMS19SR0Ez
XzE+LCA8JmNydSBDTEtfUkdBM18xX0NPUkU+OworCQljbG9jay1uYW1lcyA9ICJhY2xrIiwgImhj
bGsiLCAic2NsayI7CisJCXJlc2V0cyA9IDwmY3J1IFNSU1RfUkdBM18xX0NPUkU+LCA8JmNydSBT
UlNUX0FfUkdBM18xPiwgPCZjcnUgU1JTVF9IX1JHQTNfMT47CisJCXJlc2V0LW5hbWVzID0gImNv
cmUiLCAiYXhpIiwgImFoYiI7CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9S
R0EzMT47CisJCWlvbW11cyA9IDwmcmdhM18xX21tdT47CisJfTsKKworCXJnYTNfMV9tbXU6IGlv
bW11QGZkYjcwZjAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUiLCAi
cm9ja2NoaXAscmszNTY4LWlvbW11IjsKKwkJcmVnID0gPDB4MCAweGZkYjcwZjAwIDB4MCAweDEw
MD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTUgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsK
KwkJY2xvY2tzID0gPCZjcnUgQUNMS19SR0EzXzE+LCA8JmNydSBIQ0xLX1JHQTNfMT47CisJCWNs
b2NrLW5hbWVzID0gImFjbGsiLCAiaWZhY2UiOworCQkjaW9tbXUtY2VsbHMgPSA8MD47CisJCXBv
d2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9SR0EzMT47CisJfTsKKwogCXZlcHUxMjFf
MDogdmlkZW8tY29kZWNAZmRiYTAwMDAgewogCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4
OC12ZXB1MTIxIjsKIAkJcmVnID0gPDB4MCAweGZkYmEwMDAwIDB4MCAweDgwMD47CgotLSAKMi41
Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
