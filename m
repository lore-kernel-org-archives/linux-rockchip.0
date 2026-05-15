Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30EFFCD4F25
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcA0e/E/RaCnYAI78+T0BB34hPnnjQWoKBFWiPJBwM4=; b=LexVk8jil1egaX
	fw5jSnikcW9AU1p2xHrayM4COvNNZODX9eUA/gchMEVSlknsTiswSugCw+lV/7WypE/EP09mOweV3
	Ui6HWpoprOmCS6riprMPiqNuwTiJlMYnFX3GGJkxbdst1DYWu4RaPsbRta3MN386a5id+Zcb40emK
	fens6jhJdDgCqpG0llngrtpojuV83N+BjGWQGr2OoYY9irZUQzeLdnyjlc5/HD8r5MYCZJs+3Nsa9
	5pCc4yMhPctpu60IrL2A7c7v4GMn0wc8HHc/wDbiM7An2D9UEhYCzDqv6ITpquN64Ld3IbhbrPk4m
	Q4+zSZ0rcgS22UUgZbvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXf-00000008iuH-0vK6;
	Fri, 15 May 2026 15:33:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXc-00000008inF-1DgC
	for linux-rockchip@bombadil.infradead.org;
	Fri, 15 May 2026 15:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=QrjuY7uy5nvixKEjU1FUTT8FM6J9SjG7ajXG6VuZAHQ=; b=GKBVwIf++XM2+uWg74NmaN4gaO
	DI54Yh2FqTvyRFx1gdPG7o51yYG/QlXcABC2gMqQyldHQnnQPBJ4+own9efE0xyGKgjWzzy7Rl1F6
	qjgY6pXpuwwe8PVdQFVrrTaWWul/UicLe5T1cAhpQpoWHJgrTtVGPXJviaVphQdFgTV9KJxuoKX6f
	pKnenASfyZL/RF4fok/c9tEYcdAGGdD0aJ+1DakZgvcSkl9fLYEwlqZLAADmSVLURbiUAUTEti5/Z
	1wMcN7unu8rX8vxTMoCUD6Q28c6d43Q8pyJbNdRQ7WISbgtQfTwY0/xmIhX5z65AfhFxyNMD3m8Ej
	X+WjithQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXY-00000005ZwX-24Nt
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuXO-0005OF-PN; Fri, 15 May 2026 17:33:18 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:54 +0200
Subject: [PATCH v6 28/28] arm64: dts: rockchip: add rga3 dt nodes
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-28-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
In-Reply-To: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_163328_924589_96F45860 
X-CRM114-Status: UNSURE (   9.65  )
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
LmRlPgoKLS0tCkNoYW5nZXMgaW4gdjY6Ci0gcmVvcmRlcmVkIGJlZm9yZSB0aGUgcmdhIG5vZGUg
dG8gZml4IHRoZSBzb3J0aW5nIG9yZGVyLgogIEZsYWdnZWQgYnkgc2FzaGlrby5kZXY6CiAgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwMzI1LXNwdS1yZ2EzLXY0LTAtZTkwZWMx
YzYxMzU0JTQwcGVuZ3V0cm9uaXguZGU/cGFydD0yNwotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKaW5kZXggNGZiODg4OGMyODFjOC4uYTRmNDRh
ZjUxMjM3NSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
YmFzZS5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2Uu
ZHRzaQpAQCAtMTI2Miw2ICsxMjYyLDUwIEBAIHZwdTEyMV9tbXU6IGlvbW11QGZkYjUwODAwIHsK
IAkJI2lvbW11LWNlbGxzID0gPDA+OwogCX07CiAKKwlyZ2EzX2NvcmUwOiByZ2FAZmRiNjAwMDAg
eworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1yZ2EzIjsKKwkJcmVnID0gPDB4MCAw
eGZkYjYwMDAwIDB4MCAweDIwMD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTQgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tzID0gPCZjcnUgQUNMS19SR0EzXzA+LCA8JmNydSBI
Q0xLX1JHQTNfMD4sIDwmY3J1IENMS19SR0EzXzBfQ09SRT47CisJCWNsb2NrLW5hbWVzID0gImFj
bGsiLCAiaGNsayIsICJzY2xrIjsKKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9SR0EzXzBfQ09SRT4s
IDwmY3J1IFNSU1RfQV9SR0EzXzA+LCA8JmNydSBTUlNUX0hfUkdBM18wPjsKKwkJcmVzZXQtbmFt
ZXMgPSAiY29yZSIsICJheGkiLCAiYWhiIjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUksz
NTg4X1BEX1JHQTMwPjsKKwkJaW9tbXVzID0gPCZyZ2EzXzBfbW11PjsKKwl9OworCisJcmdhM18w
X21tdTogaW9tbXVAZmRiNjBmMDAgeworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1p
b21tdSIsICJyb2NrY2hpcCxyazM1NjgtaW9tbXUiOworCQlyZWcgPSA8MHgwIDB4ZmRiNjBmMDAg
MHgwIDB4MTAwPjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExNCBJUlFfVFlQRV9MRVZFTF9I
SUdIIDA+OworCQljbG9ja3MgPSA8JmNydSBBQ0xLX1JHQTNfMD4sIDwmY3J1IEhDTEtfUkdBM18w
PjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7CisJCSNpb21tdS1jZWxscyA9IDww
PjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1JHQTMwPjsKKwl9OworCisJ
cmdhM19jb3JlMTogcmdhQGZkYjcwMDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1
ODgtcmdhMyI7CisJCXJlZyA9IDwweDAgMHhmZGI3MDAwMCAweDAgMHgyMDA+OworCQlpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgMTE1IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2NrcyA9IDwm
Y3J1IEFDTEtfUkdBM18xPiwgPCZjcnUgSENMS19SR0EzXzE+LCA8JmNydSBDTEtfUkdBM18xX0NP
UkU+OworCQljbG9jay1uYW1lcyA9ICJhY2xrIiwgImhjbGsiLCAic2NsayI7CisJCXJlc2V0cyA9
IDwmY3J1IFNSU1RfUkdBM18xX0NPUkU+LCA8JmNydSBTUlNUX0FfUkdBM18xPiwgPCZjcnUgU1JT
VF9IX1JHQTNfMT47CisJCXJlc2V0LW5hbWVzID0gImNvcmUiLCAiYXhpIiwgImFoYiI7CisJCXBv
d2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9SR0EzMT47CisJCWlvbW11cyA9IDwmcmdh
M18xX21tdT47CisJfTsKKworCXJnYTNfMV9tbXU6IGlvbW11QGZkYjcwZjAwIHsKKwkJY29tcGF0
aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUiLCAicm9ja2NoaXAscmszNTY4LWlvbW11IjsK
KwkJcmVnID0gPDB4MCAweGZkYjcwZjAwIDB4MCAweDEwMD47CisJCWludGVycnVwdHMgPSA8R0lD
X1NQSSAxMTUgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tzID0gPCZjcnUgQUNMS19S
R0EzXzE+LCA8JmNydSBIQ0xLX1JHQTNfMT47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaWZh
Y2UiOworCQkjaW9tbXUtY2VsbHMgPSA8MD47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJL
MzU4OF9QRF9SR0EzMT47CisJfTsKKwogCXJnYTogcmdhQGZkYjgwMDAwIHsKIAkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazM1ODgtcmdhIiwgInJvY2tjaGlwLHJrMzI4OC1yZ2EiOwogCQlyZWcg
PSA8MHgwIDB4ZmRiODAwMDAgMHgwIDB4MTgwPjsKCi0tIAoyLjU0LjAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
