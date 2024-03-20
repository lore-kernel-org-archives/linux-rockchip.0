Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D82C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 17:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ai1/5TxmXTQo9mb9txi96QmXQFBzlAyppIUR3+ddpU=; b=fgik9va9EZhJE6
	vJSEfaSvM6bx2VoA4Al35XmwWGkms3g6u14sQohYlfL9afTtCE/u/ChsJkd+xdtxgis7+zp9IYied
	GRwVUYSDDclwd1HV+A7h6yIW0LSAA/1oHpljwu1e0ZJw43V/H9s5pDapluA33xghGjbTIh1AXLQ3n
	hmR0VmeuUGfxb5qhaBO2m2zOOmeEK3MawvHXUVITe29hOEGAvI9WfhEhfqk06NK2FsQTh/7EIysJZ
	fwILeImiZHX/D6vADy5nHpAYDfVA57SRt+u5aNa5SGypMbT93lnkSLDQ5nJCJJjiDfm9a+4jTiDNq
	sO3dRtpkTAUEb4PfFOIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzsx-00000000VeS-1OEU;
	Wed, 20 Mar 2024 17:37:55 +0000
Received: from luna.linkmauve.fr ([82.65.109.163])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzss-00000000Vc7-44lA;
	Wed, 20 Mar 2024 17:37:52 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 0048DFDAD1B; Wed, 20 Mar 2024 18:37:44 +0100 (CET)
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
Subject: [PATCH 3/4] arm64: dts: rockchip: Add VEPU121 to rk3588
Date: Wed, 20 Mar 2024 18:37:32 +0100
Message-ID: <20240320173736.2720778-4-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_103751_189639_F53348CE 
X-CRM114-Status: UNSURE (   9.33  )
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
cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKaW5kZXggMmEyM2I0ZGMzNmU0Li5mZTc3YjU2YWM5YTAg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCisr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCkBAIC0yNDg4LDYg
KzI0ODgsODYgQEAgZ3BpbzQ6IGdwaW9AZmVjNTAwMDAgewogCQl9OwogCX07CiAKKwlqcGVnX2Vu
YzA6IHZpZGVvLWNvZGVjQGZkYmEwMDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1
ODgtdmVwdTEyMSI7CisJCXJlZyA9IDwweDAgMHhmZGJhMDAwMCAweDAgMHg4MDA+OworCQlpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgMTIyIElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2NrcyA9
IDwmY3J1IEFDTEtfSlBFR19FTkNPREVSMD4sIDwmY3J1IEhDTEtfSlBFR19FTkNPREVSMD47CisJ
CWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7CisJCWlvbW11cyA9IDwmanBlZ19lbmMwX21t
dT47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsKKwl9OworCisJ
anBlZ19lbmMwX21tdTogaW9tbXVAZmRiYTA4MDAgeworCQljb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzU4OC1pb21tdSI7CisJCXJlZyA9IDwweDAgMHhmZGJhMDgwMCAweDAgMHg0MD47CisJCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSAxMjEgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tz
ID0gPCZjcnUgQUNMS19KUEVHX0VOQ09ERVIwPiwgPCZjcnUgSENMS19KUEVHX0VOQ09ERVIwPjsK
KwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBv
d2VyIFJLMzU4OF9QRF9WRFBVPjsKKwkJI2lvbW11LWNlbGxzID0gPDA+OworCX07CisKKwlqcGVn
X2VuYzE6IHZpZGVvLWNvZGVjQGZkYmE0MDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azM1ODgtdmVwdTEyMSI7CisJCXJlZyA9IDwweDAgMHhmZGJhNDAwMCAweDAgMHg4MDA+OworCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgMTI0IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2Nr
cyA9IDwmY3J1IEFDTEtfSlBFR19FTkNPREVSMT4sIDwmY3J1IEhDTEtfSlBFR19FTkNPREVSMT47
CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7CisJCWlvbW11cyA9IDwmanBlZ19lbmMx
X21tdT47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsKKwl9Owor
CisJanBlZ19lbmMxX21tdTogaW9tbXVAZmRiYTQ4MDAgeworCQljb21wYXRpYmxlID0gInJvY2tj
aGlwLHJrMzU4OC1pb21tdSI7CisJCXJlZyA9IDwweDAgMHhmZGJhNDgwMCAweDAgMHg0MD47CisJ
CWludGVycnVwdHMgPSA8R0lDX1NQSSAxMjMgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJY2xv
Y2tzID0gPCZjcnUgQUNMS19KUEVHX0VOQ09ERVIxPiwgPCZjcnUgSENMS19KUEVHX0VOQ09ERVIx
PjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7CisJCXBvd2VyLWRvbWFpbnMgPSA8
JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsKKwkJI2lvbW11LWNlbGxzID0gPDA+OworCX07CisKKwlq
cGVnX2VuYzI6IHZpZGVvLWNvZGVjQGZkYmE4MDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1ODgtdmVwdTEyMSI7CisJCXJlZyA9IDwweDAgMHhmZGJhODAwMCAweDAgMHg4MDA+Owor
CQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTI2IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNs
b2NrcyA9IDwmY3J1IEFDTEtfSlBFR19FTkNPREVSMj4sIDwmY3J1IEhDTEtfSlBFR19FTkNPREVS
Mj47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7CisJCWlvbW11cyA9IDwmanBlZ19l
bmMyX21tdT47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsKKwl9
OworCisJanBlZ19lbmMyX21tdTogaW9tbXVAZmRiYTg4MDAgeworCQljb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzU4OC1pb21tdSI7CisJCXJlZyA9IDwweDAgMHhmZGJhODgwMCAweDAgMHg0MD47
CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMjUgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJ
Y2xvY2tzID0gPCZjcnUgQUNMS19KUEVHX0VOQ09ERVIyPiwgPCZjcnUgSENMS19KUEVHX0VOQ09E
RVIyPjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7CisJCXBvd2VyLWRvbWFpbnMg
PSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsKKwkJI2lvbW11LWNlbGxzID0gPDA+OworCX07CisK
KwlqcGVnX2VuYzM6IHZpZGVvLWNvZGVjQGZkYmFjMDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2Nr
Y2hpcCxyazM1ODgtdmVwdTEyMSI7CisJCXJlZyA9IDwweDAgMHhmZGJhYzAwMCAweDAgMHg4MDA+
OworCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTI4IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJ
CWNsb2NrcyA9IDwmY3J1IEFDTEtfSlBFR19FTkNPREVSMz4sIDwmY3J1IEhDTEtfSlBFR19FTkNP
REVSMz47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7CisJCWlvbW11cyA9IDwmanBl
Z19lbmMzX21tdT47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsK
Kwl9OworCisJanBlZ19lbmMzX21tdTogaW9tbXVAZmRiYWM4MDAgeworCQljb21wYXRpYmxlID0g
InJvY2tjaGlwLHJrMzU4OC1pb21tdSI7CisJCXJlZyA9IDwweDAgMHhmZGJhYzgwMCAweDAgMHg0
MD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMjcgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsK
KwkJY2xvY2tzID0gPCZjcnUgQUNMS19KUEVHX0VOQ09ERVIzPiwgPCZjcnUgSENMS19KUEVHX0VO
Q09ERVIzPjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7CisJCXBvd2VyLWRvbWFp
bnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9WRFBVPjsKKwkJI2lvbW11LWNlbGxzID0gPDA+OworCX07
CisKIAlhdjFkOiB2aWRlby1jb2RlY0BmZGM3MDAwMCB7CiAJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTg4LWF2MS12cHUiOwogCQlyZWcgPSA8MHgwIDB4ZmRjNzAwMDAgMHgwIDB4ODAwPjsK
LS0gCjIuNDQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
