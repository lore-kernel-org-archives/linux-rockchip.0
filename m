Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37837C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 23:04:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E797F61131
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 23:04:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E797F61131
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wiqDf+oEmeaVu7Iw2z9xhmtw9iyCwxSMnnYJkCHUv4E=; b=JBlY/TdztUfMlm
	1Ap5TTGC+tFDSLnHb+lRj1M22igYmqSi23BTXyYfSJwcUk9pCB1ybfuxJUsnpJujj1iyZctqMd/Sx
	O8d4uueAfWJsC3uPGSYq245vyCEjlYjWxZ5+F4Xgf/2Jntnuo50f0A9LJo1SEeOBkNY1vbXzd1FlI
	1k68x+bKhEMcE8DQDpDMSHffKGJofxgJgcJCR7PTFNKG2xCDuHCd23i65brlVK0JiEfCjB/fGGscW
	sOT0yojSLkcRzQ3wG8Y87iuP9Pfwd9993KFEbL+gqxpX70I0NlTAPchp6diHhyXsauneKr3AoD7IU
	sKNcwm5mDpSELtWxzF1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTBI7-009tPb-V3; Wed, 22 Sep 2021 23:04:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTBI4-009tOA-SQ; Wed, 22 Sep 2021 23:04:38 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mTBI2-0002xp-Ce; Thu, 23 Sep 2021 01:04:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: fix LDO_REG4 / LDO_REG7 confusion
 on rk3368-lion
Date: Thu, 23 Sep 2021 01:04:27 +0200
Message-Id: <20210922230429.2162535-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_160436_971742_A106DF16 
X-CRM114-Status: GOOD (  11.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>

LDO_REG7 is used for generating VCC_18.
LDO_REG4 is not connected to anything - delete it.

Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index bcd7977fb0f8..6622f11a169f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -144,7 +144,7 @@ &emmc {
 	mmc-hs200-1_8v;
 	non-removable;
 	vmmc-supply = <&vcc33_io>;
-	vqmmc-supply = <&vcc18_io>;
+	vqmmc-supply = <&vcc_18>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
 	status = "okay";
@@ -238,13 +238,6 @@ vdd10_pll: LDO_REG3 {
 				regulator-boot-on;
 			};
 
-			vcc18_io: LDO_REG4 {
-				regulator-name = "vcc18_io";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-			};
-
 			vdd10_video: LDO_REG6 {
 				regulator-name = "vdd10_video";
 				regulator-min-microvolt = <1000000>;
@@ -253,6 +246,14 @@ vdd10_video: LDO_REG6 {
 				regulator-boot-on;
 			};
 
+			vcc_18: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_18";
+			};
+
 			vcc18_video: LDO_REG8 {
 				regulator-name = "vcc18_video";
 				regulator-min-microvolt = <1800000>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
