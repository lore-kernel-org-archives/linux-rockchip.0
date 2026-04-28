Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C12FF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLcAQ14tEIYMVVwRRaGcdt/9m3WQPVqxyV6r/xlobhw=; b=EhPCYCfdQkTdKG
	R4ha4v/14sxdchMT83IRZdNGkhQViOhvYlQSylg+TcxSvS3Dp5FPilm7cdvLMo996pu5dI5hqZ5Lf
	js2rCtQuGzUUJtqyxskw9gXqVB3jHIOMS1tUAWuEQWjSwZnlARuaN7RrO86ygM2+jY1lzDI+iyu0C
	AwdB1Tc4XyBjrjWbbJEdGvRlSAALntEtToROv7aWpG0rzGPW+gVYflM3Pm7MoDAIXTiKV6BLndVsK
	mOR8hrYedZDcb4Up5nwpJtZWcG4ejZSc4oI8ZYrx6ceP+G5YsuEpjOjFbuMoON+KOAUDcUUOMbAKO
	KVQNA/l4oHX40xYVC7nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeK5-00000000y3b-33su;
	Tue, 28 Apr 2026 09:01:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJy-00000000xsM-3yhm
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Apr 2026 09:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=tQvOUkj7iNT/AEbIK+gaqCq6j/dYqHrK2T/F114eAZE=; b=nF44UW4blgcCI8QTi3d2077XZf
	LXz37eUogJ2dLO/DXXMdeUXsv6yRvh9H6tfT4F1E4L/GamZaFBi+BcIhX/6s3c8Nxr65/cOBdlDae
	NFIdgAYWCkBvalpVO4QUksC0JA/v5yovXUz/z7SS/VeTx8hIlcif8WhoFRWOodom0bu9evKr9cCkN
	vGtacZQxuQka6O0sbDBL58QWq2HqxwX4JbOjJnV9Aq8YEVurDpjWnxvxauvyD8gliW6ch5XnI98BM
	GBTeODuUV2SkvpUmnEY2bmt55zUfJ7nlKviBaqqhYnboMF+LpN3RDwjDTGoLrr38qXwdJMSkxOItv
	evrbTsOQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJr-00000002VSy-3UJD
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJO-0004Lz-Pk; Tue, 28 Apr 2026 11:00:58 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:01:04 +0200
Subject: [PATCH v5 29/29] arm64: dts: rockchip: add rga3 dt nodes
MIME-Version: 1.0
Message-Id: <20260428-spu-rga3-v5-29-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
In-Reply-To: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_100128_365996_F6C32BB1 
X-CRM114-Status: UNSURE (   8.96  )
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
ZSByZWZlcnMgdG8gdGhlIFJHQTItRW5oYW5jZWQgcGVyaXBoZXJhbC4gVGhlIFJLMzU4OApjb250
YWlucyBvbmUgUkdBMi1FbmhhbmNlZCBjb3JlIGFuZCB0d28gUkdBMyBjb3Jlcy4gQm90aCBmZWF0
dXJlIGEgc2ltaWxhcgpmdW5jdGlvbmFsaXR5IG9mIHNjYWxpbmcsIGNyb3BwaW5nIGFuZCByb3Rh
dGluZyBvZiB1cCB0byB0d28gaW5wdXQKaW1hZ2VzIGludG8gb25lIG91dHB1dCBpbWFnZS4gS2V5
IGRpZmZlcmVuY2VzIG9mIHRoZSBSR0EzIGFyZToKCi0gc3VwcG9ydHMgMTBiaXQgWVVWIG91dHB1
dCBmb3JtYXRzCi0gc3VwcG9ydHMgOHg4IHRpbGVzIGFuZCBGQkNEIGFzIGlucHV0cyBhbmQgb3V0
cHV0cwotIHN1cHBvcnRzIEJUMjAyMCBjb2xvciBzcGFjZSBjb252ZXJzaW9uCi0gbWF4IG91dHB1
dCByZXNvbHV0aW9uIG9mICg4MTkyLTY0KXgoODE5Mi02NCkKLSBNTVUgY2FuIG1hcCB1cCB0byAz
MkcgRERSIFJBTQotIGZ1bGx5IHBsYW5hciBmb3JtYXRzICgzIHBsYW5lcykgYXJlIG5vdCBzdXBw
b3J0ZWQKLSBtYXggc2NhbGUgdXAvZG93biBmYWN0b3Igb2YgOCAoUkdBMiBhbGxvd3MgdXAgdG8g
MTYpCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4
LmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8
IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0
c2kKaW5kZXggNGZiODg4OGMyODFjOC4uYzhhYzQxOWY1MWNmOSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQpAQCAtMTI3Myw2ICsxMjczLDUwIEBA
IHJnYTogcmdhQGZkYjgwMDAwIHsKIAkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BE
X1ZEUFU+OwogCX07CiAKKwlyZ2EzX2NvcmUwOiByZ2FAZmRiNjAwMDAgeworCQljb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzU4OC1yZ2EzIjsKKwkJcmVnID0gPDB4MCAweGZkYjYwMDAwIDB4MCAw
eDIwMD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTQgSVJRX1RZUEVfTEVWRUxfSElHSCAw
PjsKKwkJY2xvY2tzID0gPCZjcnUgQUNMS19SR0EzXzA+LCA8JmNydSBIQ0xLX1JHQTNfMD4sIDwm
Y3J1IENMS19SR0EzXzBfQ09SRT47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayIsICJz
Y2xrIjsKKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9SR0EzXzBfQ09SRT4sIDwmY3J1IFNSU1RfQV9S
R0EzXzA+LCA8JmNydSBTUlNUX0hfUkdBM18wPjsKKwkJcmVzZXQtbmFtZXMgPSAiY29yZSIsICJh
eGkiLCAiYWhiIjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1JHQTMwPjsK
KwkJaW9tbXVzID0gPCZyZ2EzXzBfbW11PjsKKwl9OworCisJcmdhM18wX21tdTogaW9tbXVAZmRi
NjBmMDAgeworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1pb21tdSIsICJyb2NrY2hp
cCxyazM1NjgtaW9tbXUiOworCQlyZWcgPSA8MHgwIDB4ZmRiNjBmMDAgMHgwIDB4MTAwPjsKKwkJ
aW50ZXJydXB0cyA9IDxHSUNfU1BJIDExNCBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OworCQljbG9j
a3MgPSA8JmNydSBBQ0xLX1JHQTNfMD4sIDwmY3J1IEhDTEtfUkdBM18wPjsKKwkJY2xvY2stbmFt
ZXMgPSAiYWNsayIsICJpZmFjZSI7CisJCSNpb21tdS1jZWxscyA9IDwwPjsKKwkJcG93ZXItZG9t
YWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1JHQTMwPjsKKwl9OworCisJcmdhM19jb3JlMTogcmdh
QGZkYjcwMDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtcmdhMyI7CisJCXJl
ZyA9IDwweDAgMHhmZGI3MDAwMCAweDAgMHgyMDA+OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MTE1IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2NrcyA9IDwmY3J1IEFDTEtfUkdBM18x
PiwgPCZjcnUgSENMS19SR0EzXzE+LCA8JmNydSBDTEtfUkdBM18xX0NPUkU+OworCQljbG9jay1u
YW1lcyA9ICJhY2xrIiwgImhjbGsiLCAic2NsayI7CisJCXJlc2V0cyA9IDwmY3J1IFNSU1RfUkdB
M18xX0NPUkU+LCA8JmNydSBTUlNUX0FfUkdBM18xPiwgPCZjcnUgU1JTVF9IX1JHQTNfMT47CisJ
CXJlc2V0LW5hbWVzID0gImNvcmUiLCAiYXhpIiwgImFoYiI7CisJCXBvd2VyLWRvbWFpbnMgPSA8
JnBvd2VyIFJLMzU4OF9QRF9SR0EzMT47CisJCWlvbW11cyA9IDwmcmdhM18xX21tdT47CisJfTsK
KworCXJnYTNfMV9tbXU6IGlvbW11QGZkYjcwZjAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1ODgtaW9tbXUiLCAicm9ja2NoaXAscmszNTY4LWlvbW11IjsKKwkJcmVnID0gPDB4MCAw
eGZkYjcwZjAwIDB4MCAweDEwMD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTUgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tzID0gPCZjcnUgQUNMS19SR0EzXzE+LCA8JmNydSBI
Q0xLX1JHQTNfMT47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaWZhY2UiOworCQkjaW9tbXUt
Y2VsbHMgPSA8MD47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9SR0EzMT47
CisJfTsKKwogCXZlcHUxMjFfMDogdmlkZW8tY29kZWNAZmRiYTAwMDAgewogCQljb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzU4OC12ZXB1MTIxIjsKIAkJcmVnID0gPDB4MCAweGZkYmEwMDAwIDB4
MCAweDgwMD47CgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
