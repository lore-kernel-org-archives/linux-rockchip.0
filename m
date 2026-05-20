Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EDCDCD5BAE
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 22:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcA0e/E/RaCnYAI78+T0BB34hPnnjQWoKBFWiPJBwM4=; b=fsEIcaqx9IXdUj
	cEo3oS18/Y2CGVt98XtP/g0hYNHPptIPJGFx+LBojk7cg1bWCnVZ9807jAjgHYIGe8VaOH1YFpGI0
	7jRGZ+Vum24/T3aO/cWapRv7yJWGSXARCuhGkUdAcvhJMb7HK0h+6e7QRU2G/97JCaqDkMzFzMuzD
	aPoIwm8Dwy7+MI2uHlpfqtYq6W+ixkWmKJp6iIhsnjeEaTXKOaz1U7kdlMckBHakAYcJqKCHwYWI5
	id/iwHFNPoQbe0naH4s9GZYixfO4i4ohQ9ghbFh0PvNm7jzhx4lZs5U5F92GvFRSRLgQtSo0BSDsJ
	KyKLXP3XBd1Ntj9aRasA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpgQ-000000063BC-0oT2;
	Wed, 20 May 2026 22:46:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpfV-000000061wO-1X8Q
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 May 2026 22:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=QrjuY7uy5nvixKEjU1FUTT8FM6J9SjG7ajXG6VuZAHQ=; b=DaHfwizf3TyMFe4M8e0rli3KPq
	LtIjJqRHfWIuABnu5Sn/ls5S9NyVgFR7f36nSrJXb0JkBc0RIWGiA81hAfASLdtc6zURPQ727BIh6
	4VZ8n8gIpUnAIg4vEkn5uUkZgJg7q8nIk7UIhMtNKzgHRvhTCr9JkrWtFFzgUNRYp4MN2zG6BVi9J
	XCR/NxOuj3r/QXOrkpu/oG+3D23i3Kq1r0m9n0K23uPXsj+SITq9cZeptyOIQedfj6RMOpGJVPrVj
	TUj1CFrMiepnsDMJYQ3EZROIGfYJ3Z6KGUbTQLMtxcQCK7+n7k4RozkGGCD2cO94Qr5x7iqU+V8h5
	B8tfr2eA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpfP-00000000VFs-3mYm
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 22:45:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wPpf1-0005vy-NW; Thu, 21 May 2026 00:45:07 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Thu, 21 May 2026 00:44:33 +0200
Subject: [PATCH v7 28/28] arm64: dts: rockchip: add rga3 dt nodes
MIME-Version: 1.0
Message-Id: <20260521-spu-rga3-v7-28-3f33e8c7145f@pengutronix.de>
References: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
In-Reply-To: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260520_234532_746646_DA35A9EA 
X-CRM114-Status: GOOD (  10.09  )
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
