Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F1AFC54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 13:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CthLMLoOrfGs6iBV07wRp2haCHGbpFTSb6khqD7u/DA=; b=ln4kXWsYCEloe1
	1+vs8g82+5gqKN24F9GvymZlKHsJE1788GyEqJQ7RFicxpPsHzIrzIsGbnhbkNdQ5A5g8x2SGj+Az
	+X2mR/xCiM1InF/Ek5AbLSN6VNhe3tPl9V+DRwavrDE4o8+cq+OZSVscjRqTmOembLbVZPBfvrjd7
	MsRtSkDbCRuSyZzPf6bALkAuQFovfa/Pq8KFXQvoMqe/t0JUID9/lisimXYbQDMFX0VZEqBSMf4RH
	+P9g2ZQyOuSznTBimw/izw20nqJ4o7ZNZOQizwIB7sKc98jd3qm6wCU9kEEMhh+lOiRuIbP104HHr
	PT+OqIM52zrcy32Ipy+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpTX8-00000009FYW-0Jh9;
	Wed, 27 Mar 2024 13:41:38 +0000
Received: from [2a01:e0a:828:c7c0:e2d5:5eff:fe2d:8e8] (helo=luna.linkmauve.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpTWt-00000009FQb-1BhV;
	Wed, 27 Mar 2024 13:41:25 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id DCE50101AF3A; Wed, 27 Mar 2024 14:41:18 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: linux-kernel@vger.kernel.org
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add VEPU121 to rk3588
Date: Wed, 27 Mar 2024 14:41:12 +0100
Message-ID: <20240327134115.424846-3-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327134115.424846-1-linkmauve@linkmauve.fr>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_064123_519201_A6CA8571 
X-CRM114-Status: UNSURE (   9.54  )
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

VGhlIFRSTSAodmVyc2lvbiAxLjAgcGFnZSAzODUpIGxpc3RzIGZpdmUgVkVQVTEyMSBjb3Jlcywg
YnV0IG9ubHkgZm91cgppbnRlcnJ1cHRzIGFyZSBsaXN0ZWQgKG9uIHBhZ2UgMjQpLCBzbyBJ4oCZ
dmUgb25seSBlbmFibGVkIGZvdXIgb2YgdGhlbQpmb3Igbm93LgoKU2lnbmVkLW9mZi1ieTogRW1t
YW51ZWwgR2lsIFBleXJvdCA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4KLS0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaSB8IDgwICsrKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgODAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKaW5kZXggODdiODNjODdiZDU1Li41MTBlZDNkYjlkMDEg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCisr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCkBAIC0yNDg4LDYg
KzI0ODgsODYgQEAgZ3BpbzQ6IGdwaW9AZmVjNTAwMDAgewogCQl9OwogCX07CiAKKwlqcGVnX2Vu
YzA6IHZpZGVvLWNvZGVjQGZkYmEwMDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1
ODgtdmVwdTEyMSIsICJyb2NrY2hpcCxyazM1NjgtdmVwdSI7CisJCXJlZyA9IDwweDAgMHhmZGJh
MDAwMCAweDAgMHg4MDA+OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTIyIElSUV9UWVBFX0xF
VkVMX0hJR0ggMD47CisJCWNsb2NrcyA9IDwmY3J1IEFDTEtfSlBFR19FTkNPREVSMD4sIDwmY3J1
IEhDTEtfSlBFR19FTkNPREVSMD47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7CisJ
CWlvbW11cyA9IDwmanBlZ19lbmMwX21tdT47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJL
MzU4OF9QRF9WRFBVPjsKKwl9OworCisJanBlZ19lbmMwX21tdTogaW9tbXVAZmRiYTA4MDAgewor
CQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1pb21tdSIsICJyb2NrY2hpcCxyazM1Njgt
aW9tbXUiOworCQlyZWcgPSA8MHgwIDB4ZmRiYTA4MDAgMHgwIDB4NDA+OworCQlpbnRlcnJ1cHRz
ID0gPEdJQ19TUEkgMTIxIElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2NrcyA9IDwmY3J1
IEFDTEtfSlBFR19FTkNPREVSMD4sIDwmY3J1IEhDTEtfSlBFR19FTkNPREVSMD47CisJCWNsb2Nr
LW5hbWVzID0gImFjbGsiLCAiaWZhY2UiOworCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1
ODhfUERfVkRQVT47CisJCSNpb21tdS1jZWxscyA9IDwwPjsKKwl9OworCisJanBlZ19lbmMxOiB2
aWRlby1jb2RlY0BmZGJhNDAwMCB7CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXZl
cHUxMjEiLCAicm9ja2NoaXAscmszNTY4LXZlcHUiOworCQlyZWcgPSA8MHgwIDB4ZmRiYTQwMDAg
MHgwIDB4ODAwPjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEyNCBJUlFfVFlQRV9MRVZFTF9I
SUdIIDA+OworCQljbG9ja3MgPSA8JmNydSBBQ0xLX0pQRUdfRU5DT0RFUjE+LCA8JmNydSBIQ0xL
X0pQRUdfRU5DT0RFUjE+OworCQljbG9jay1uYW1lcyA9ICJhY2xrIiwgImhjbGsiOworCQlpb21t
dXMgPSA8JmpwZWdfZW5jMV9tbXU+OworCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhf
UERfVkRQVT47CisJfTsKKworCWpwZWdfZW5jMV9tbXU6IGlvbW11QGZkYmE0ODAwIHsKKwkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUiLCAicm9ja2NoaXAscmszNTY4LWlvbW11
IjsKKwkJcmVnID0gPDB4MCAweGZkYmE0ODAwIDB4MCAweDQwPjsKKwkJaW50ZXJydXB0cyA9IDxH
SUNfU1BJIDEyMyBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OworCQljbG9ja3MgPSA8JmNydSBBQ0xL
X0pQRUdfRU5DT0RFUjE+LCA8JmNydSBIQ0xLX0pQRUdfRU5DT0RFUjE+OworCQljbG9jay1uYW1l
cyA9ICJhY2xrIiwgImlmYWNlIjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BE
X1ZEUFU+OworCQkjaW9tbXUtY2VsbHMgPSA8MD47CisJfTsKKworCWpwZWdfZW5jMjogdmlkZW8t
Y29kZWNAZmRiYTgwMDAgeworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC12ZXB1MTIx
IiwgInJvY2tjaGlwLHJrMzU2OC12ZXB1IjsKKwkJcmVnID0gPDB4MCAweGZkYmE4MDAwIDB4MCAw
eDgwMD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMjYgSVJRX1RZUEVfTEVWRUxfSElHSCAw
PjsKKwkJY2xvY2tzID0gPCZjcnUgQUNMS19KUEVHX0VOQ09ERVIyPiwgPCZjcnUgSENMS19KUEVH
X0VOQ09ERVIyPjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJoY2xrIjsKKwkJaW9tbXVzID0g
PCZqcGVnX2VuYzJfbW11PjsKKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1ZE
UFU+OworCX07CisKKwlqcGVnX2VuYzJfbW11OiBpb21tdUBmZGJhODgwMCB7CisJCWNvbXBhdGli
bGUgPSAicm9ja2NoaXAscmszNTg4LWlvbW11IiwgInJvY2tjaGlwLHJrMzU2OC1pb21tdSI7CisJ
CXJlZyA9IDwweDAgMHhmZGJhODgwMCAweDAgMHg0MD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQ
SSAxMjUgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tzID0gPCZjcnUgQUNMS19KUEVH
X0VOQ09ERVIyPiwgPCZjcnUgSENMS19KUEVHX0VOQ09ERVIyPjsKKwkJY2xvY2stbmFtZXMgPSAi
YWNsayIsICJpZmFjZSI7CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBV
PjsKKwkJI2lvbW11LWNlbGxzID0gPDA+OworCX07CisKKwlqcGVnX2VuYzM6IHZpZGVvLWNvZGVj
QGZkYmFjMDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtdmVwdTEyMSIsICJy
b2NrY2hpcCxyazM1NjgtdmVwdSI7CisJCXJlZyA9IDwweDAgMHhmZGJhYzAwMCAweDAgMHg4MDA+
OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTI4IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJ
CWNsb2NrcyA9IDwmY3J1IEFDTEtfSlBFR19FTkNPREVSMz4sIDwmY3J1IEhDTEtfSlBFR19FTkNP
REVSMz47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7CisJCWlvbW11cyA9IDwmanBl
Z19lbmMzX21tdT47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsK
Kwl9OworCisJanBlZ19lbmMzX21tdTogaW9tbXVAZmRiYWM4MDAgeworCQljb21wYXRpYmxlID0g
InJvY2tjaGlwLHJrMzU4OC1pb21tdSIsICJyb2NrY2hpcCxyazM1NjgtaW9tbXUiOworCQlyZWcg
PSA8MHgwIDB4ZmRiYWM4MDAgMHgwIDB4NDA+OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTI3
IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2NrcyA9IDwmY3J1IEFDTEtfSlBFR19FTkNP
REVSMz4sIDwmY3J1IEhDTEtfSlBFR19FTkNPREVSMz47CisJCWNsb2NrLW5hbWVzID0gImFjbGsi
LCAiaWZhY2UiOworCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfVkRQVT47CisJ
CSNpb21tdS1jZWxscyA9IDwwPjsKKwl9OworCiAJYXYxZDogdmlkZW8tY29kZWNAZmRjNzAwMDAg
ewogCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1hdjEtdnB1IjsKIAkJcmVnID0gPDB4
MCAweGZkYzcwMDAwIDB4MCAweDgwMD47Ci0tIAoyLjQ0LjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
