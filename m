Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFBF5E77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 11:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLskd4mpqHI8s40quagYE/7jBnPyu2kp5T6QZ7rARgA=; b=3Q5+fHaK7fNvQu
	yyE9TZ0QZtHhaACef6JrmGfwfsnC6hb2r9UM+qiCiFlKAcMTUvIhwm5XAB1jtslViNlRWkccadroD
	yfDPTDykWTx4izup7xiJv1C5eiNpzDdL/KyWDD+WCHtzyyaVJuLqvl9F0mIwaRxAocxoKc4PcwZyV
	YPIDQQflTJCb29Bvh7Yi0FtNVGT7GqyktJRWDKZxWGSWt2SIruyx6DQtFBmfeorUjtIfkzy8zaxaf
	PhgL/xILXskZ+GK53H6H/NyX7bHTG1MhZEUDQJNZCZtRVdXWy+wOUoUO82Erv0sUpc+Khqq49hknH
	p5zJ+UKuzvW06VhOPj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9KA-00000009pxF-2mQD;
	Mon, 16 Dec 2024 11:31:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K8-00000009pvS-47J1
	for linux-rockchip@bombadil.infradead.org;
	Mon, 16 Dec 2024 11:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Jvdnyi6zXRbyHEnkw3SIlUNEN6dfJB3Lav4rNytV6Sw=; b=eKW2gPAvc79G37NfHnG4x2ANYd
	aYh2xQKAK37LdYsapBCo5pvXrxGveZfCDD2vNEIBGspSCg2WV+YiNgur1xThlb8dNQ+YF4Kaq/VlJ
	GO9JBrK7iONZzGbkQkIseXReFILzXFKubKmmUVsrKDfwoVZUK7cty03Wkv16u+RoNR+8ojfFyrBae
	/dKWqKExJEjaV2rLnrH2JZMXX9Kq2VVF6WHT7eAhfouBCyD6yFI2mZN2ISu0HJxnJrgUAQAhAzNVQ
	qcFsXcOS45z7gtflhfg/AvDC5WAXQ+mDjKAKcnGYT84iYicRsxYXy4pe1RWfXhGCmfhhsG3dML+Ne
	/pGnhKMg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K1-0000000FtGU-1V6f
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 11:31:39 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOV028690;
	Mon, 16 Dec 2024 20:31:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 10/12] arm64: dts: rockchip: Fix pmic dcdc-reg10 label for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:50 +0000
Message-ID: <20241216113052.15696-11-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216113052.15696-1-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_113134_903140_6948FA89 
X-CRM114-Status: UNSURE (   8.53  )
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

Fix pmic dcdc-reg10 label to match with schematic[1]. No functional
change.

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5:
- Reword commit message
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 0f8048f6511b..fbe491e63852 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -670,8 +670,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_pmu_ddr_s3: dcdc-reg10 {
-				regulator-name = "vcc1v8_pmu_ddr_s3";
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
