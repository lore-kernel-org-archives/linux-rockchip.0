Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D94BCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3mGMuKjbej/+wASClT7PVGxjNn4Gsn63e0O3AAXIa0=; b=QR7wuDja5JZTHX
	JNuL0vjD4wfWrQRF5u7RPjtiA6jTtqxX1RXk7EdbA2XSTBySiaUEwxzKR61nY0mTj8BiO7StKGpWY
	kpkOahRCEExsTQro+uP75eXHmzfMF9XvMre/fX4j6Sdd9FklKsFZmZ5QVEkGTDWzD/99UNc8pDagv
	hSW+2aVyvsM05gefXVFR1E1W/XAcIRxMKfobFJvDcD6w2gMw2rLxXh7AckMDXBa+5ofhKgsviPmyP
	tJbDnRX6Ly18GrG8bdEZZD4x9odcuJBeO74qiq00NOB+BpRRin7xgRfOidVrX2d//sbNuiSTTTPYL
	eLXV29524GtEyTFceNag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638o-00000001ZeM-13HA;
	Tue, 07 Oct 2025 08:33:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638E-00000001Ylo-31Ju
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:33:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637z-0002Hb-Vv; Tue, 07 Oct 2025 10:33:00 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:32:08 +0200
Subject: [PATCH 15/16] arm64: dts: rockchip: increase rga3 clock speed
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-15-36ad85570402@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251007_013317_691489_630A6A26 
X-CRM114-Status: UNSURE (   8.40  )
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

SW5jcmVhc2UgdGhlIFJHQTMgY2xvY2sgc3BlZWQgdG8gZ2V0IHRoZSBtYXhpbWFsIHBvc3NpYmxl
IGZyYW1lcwpwZXIgc2Vjb25kLiBCeSBkZWZhdWx0IHRoZSBjb3JlIGFuZCBheGkgY2xvY2sgaXMg
c2V0IHRvIDM3NU1oei4KClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxA
cGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
YmFzZS5kdHNpIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCmluZGV4IDA4ODg1
ZDljMTllMGMxMDRhYjBmNzIzZWMxNjFiODM5OThjZmI5YzcuLjU3ZTMyMDI2N2JiNjI5ODkzYmI4
ODRiZjRlOGQ2YmJjMjJmOGQ2MjggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LWJhc2UuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1iYXNlLmR0c2kKQEAgLTExNzksNiArMTE3OSw4IEBAIHJnYTNfY29yZTA6IHJnYUBm
ZGI2MDAwMCB7CiAJCWludGVycnVwdC1uYW1lcyA9ICJyZ2EzX2NvcmUwX2lycSI7CiAJCWNsb2Nr
cyA9IDwmY3J1IEFDTEtfUkdBM18wPiwgPCZjcnUgSENMS19SR0EzXzA+LCA8JmNydSBDTEtfUkdB
M18wX0NPUkU+OwogCQljbG9jay1uYW1lcyA9ICJhY2xrIiwgImhjbGsiLCAic2NsayI7CisJCWFz
c2lnbmVkLWNsb2NrcyA9IDwmY3J1IENMS19SR0EzXzBfQ09SRT4sIDwmY3J1IEFDTEtfUkdBM18w
PjsKKwkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8ODAwMDAwMDAwPiwgPDgwMDAwMDAwMD47CiAJ
CXJlc2V0cyA9IDwmY3J1IFNSU1RfUkdBM18wX0NPUkU+LCA8JmNydSBTUlNUX0FfUkdBM18wPiwg
PCZjcnUgU1JTVF9IX1JHQTNfMD47CiAJCXJlc2V0LW5hbWVzID0gImNvcmUiLCAiYXhpIiwgImFo
YiI7CiAJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9SR0EzMD47CkBAIC0xMjAy
LDYgKzEyMDQsOCBAQCByZ2EzX2NvcmUxOiByZ2FAZmRiNzAwMDAgewogCQlpbnRlcnJ1cHQtbmFt
ZXMgPSAicmdhM19jb3JlMV9pcnEiOwogCQljbG9ja3MgPSA8JmNydSBBQ0xLX1JHQTNfMT4sIDwm
Y3J1IEhDTEtfUkdBM18xPiwgPCZjcnUgQ0xLX1JHQTNfMV9DT1JFPjsKIAkJY2xvY2stbmFtZXMg
PSAiYWNsayIsICJoY2xrIiwgInNjbGsiOworCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBDTEtf
UkdBM18xX0NPUkU+LCA8JmNydSBBQ0xLX1JHQTNfMT47CisJCWFzc2lnbmVkLWNsb2NrLXJhdGVz
ID0gPDgwMDAwMDAwMD4sIDw4MDAwMDAwMDA+OwogCQlyZXNldHMgPSA8JmNydSBTUlNUX1JHQTNf
MV9DT1JFPiwgPCZjcnUgU1JTVF9BX1JHQTNfMT4sIDwmY3J1IFNSU1RfSF9SR0EzXzE+OwogCQly
ZXNldC1uYW1lcyA9ICJjb3JlIiwgImF4aSIsICJhaGIiOwogCQlwb3dlci1kb21haW5zID0gPCZw
b3dlciBSSzM1ODhfUERfUkdBMzE+OwoKLS0gCjIuNTEuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
