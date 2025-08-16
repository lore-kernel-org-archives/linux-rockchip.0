Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71E70CA0EE6
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 08:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZJw3Ate7LTFtrFgYd1xIrbYzNi6mICDjYfRKYGW94E=; b=0NqXqmZFP//Aqg
	ZwUi3JImD7YgUGpnz3Hn684RdNNUDrCnXsblOoxi4znqv+S5DCZz9vvpV7DA+VDiKUhumtpE7Q5Qc
	mkdeYGriEFpNnOGMATcn3uEMTaV0+lAYtn23HbPKztRcQ3MFAam0LUHf2mLN8H/1MgGUb/FRPljrp
	628pFxhewd1N8gyQ9Ft3mElgyxRt/T58TkI1/Nqc1hKM7ZLBPO/cLOoB11fMuOTAjnr+FEyqEcoCX
	jSfadBdMibn9fSBzp9dC/Ue3mwLp5m6Li90VfkIZtVlnrq3gdZTlGEAd89CXI5e8WdziOew7+JGgE
	tSz9dMaYcUvUgeVE0HAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unBvM-00000004H8c-2MSa;
	Sat, 16 Aug 2025 08:06:00 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unBv7-00000004H5k-42kB;
	Sat, 16 Aug 2025 08:05:47 +0000
Received: from localhost.localdomain (unknown [119.122.212.9])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1f93a30cd;
	Sat, 16 Aug 2025 16:00:42 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: remove vcc_3v3_pmu regulator for Radxa E52C
Date: Sat, 16 Aug 2025 16:00:29 +0800
Message-Id: <20250816080030.183931-3-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250816080030.183931-1-amadeus@jmu.edu.cn>
References: <20250816080030.183931-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a98b1e5291803a2kunm56d2169525b731
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTUlCVhgaSUhNS0ofHRpJTFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVCWVdZFhoPEhUdFFlBWU9LSFVKS0lCQ0NMVUpLS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_010546_190433_D3931DEA 
X-CRM114-Status: UNSURE (   8.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

According to Radxa E52C Schematic V1.2 [1] page 5, vcc_3v3_pmu
is directly connected to vcc_3v3_s3 via a 0 ohm resistor.
The vcc_3v3_pmu is not a new regulator, so remove it.

[1] https://dl.radxa.com/e/e52c/hw/radxa_e52c_v1.2_schematic.pdf

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
index 1883bd183396..4a3ae95f122f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
@@ -98,16 +98,6 @@ vcc_1v1_nldo_s3: regulator-1v1 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_3v3_pmu: regulator-3v3-0 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_pmu";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
 	vcc_3v3_s0: regulator-3v3-1 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v3_s0";
@@ -255,7 +245,7 @@ eeprom@50 {
 		reg = <0x50>;
 		pagesize = <16>;
 		read-only;
-		vcc-supply = <&vcc_3v3_pmu>;
+		vcc-supply = <&vcc_3v3_s3>;
 	};
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
