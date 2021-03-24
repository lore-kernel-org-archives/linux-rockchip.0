Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C1B5C433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:24:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFA1361A06
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:24:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AFA1361A06
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LA7s1wyF9cqud2u4fkqSkBuhPLYDq/2Afx7y7ATv+KE=; b=ivM66YTOoZ4HH5ikz9Xe4452qs
	UUQW/hRGYs9OfHoI1Pet8G7/mEMawBR2f6kDiSB/wCm2o17Y3sF/FyJJ93y2wV7zZcknFR0U4kS5a
	20Zsmi6YWQMhurAkYe98ruRYNi0Csq60DIzPvTBv95UEzCw1r7GMpw3aFpY+lfq6hRq4WZez4fK/i
	seDSfGPqs2gLLa/oFjNNCWWFzy5owuZcIHuAgVOaQAoOHQ0XrJXd5ldQeUMv7OLuDpq2SDojMIxY8
	G3dE1y45STLyqmMc/koWaXnGfcOBKjUGHsl/+8F8r15QQ11MkgR1cgRmCrJLHyvTdcVHCKTfyM99W
	TSvVfR7A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2YW-00H3jg-Un; Wed, 24 Mar 2021 12:24:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2X3-00H3AO-Gy; Wed, 24 Mar 2021 12:22:45 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lP2X0-00009P-Qr; Wed, 24 Mar 2021 13:22:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: jagan@amarulasolutions.com, jbx6244@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arnd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH 1/7] ARM: dts: rockchip: move rk322x mmcx aliases to board dts
 files
Date: Wed, 24 Mar 2021 13:22:29 +0100
Message-Id: <20210324122235.1059292-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_122241_812967_C44A7014 
X-CRM114-Status: GOOD (  12.46  )
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

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

As suggested by Arnd Bergmann, mmc-aliases are supposed to be
board-specific, so move the newly added general aliases to
the board-level on rk322x-based boards.

Suggested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm/boot/dts/rk3228-evb.dts  | 4 ++++
 arch/arm/boot/dts/rk3229-evb.dts  | 4 ++++
 arch/arm/boot/dts/rk3229-xms6.dts | 6 ++++++
 arch/arm/boot/dts/rk322x.dtsi     | 3 ---
 4 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3228-evb.dts b/arch/arm/boot/dts/rk3228-evb.dts
index aed879db6c15..69a5e239ed1a 100644
--- a/arch/arm/boot/dts/rk3228-evb.dts
+++ b/arch/arm/boot/dts/rk3228-evb.dts
@@ -8,6 +8,10 @@ / {
 	model = "Rockchip RK3228 Evaluation board";
 	compatible = "rockchip,rk3228-evb", "rockchip,rk3228";
 
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x40000000>;
diff --git a/arch/arm/boot/dts/rk3229-evb.dts b/arch/arm/boot/dts/rk3229-evb.dts
index 350497a3ca86..797476e8bef1 100644
--- a/arch/arm/boot/dts/rk3229-evb.dts
+++ b/arch/arm/boot/dts/rk3229-evb.dts
@@ -9,6 +9,10 @@ / {
 	model = "Rockchip RK3229 Evaluation board";
 	compatible = "rockchip,rk3229-evb", "rockchip,rk3229";
 
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x40000000>;
diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 263393ac4fa6..7bfbfd11fb55 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -9,6 +9,12 @@ / {
 	model = "Mecer Xtreme Mini S6";
 	compatible = "mecer,xms6", "rockchip,rk3229";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdio;
+		mmc2 = &emmc;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x40000000>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index a4dd50aaf3fc..4d003afd0e3e 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -14,9 +14,6 @@ / {
 	interrupt-parent = <&gic>;
 
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdio;
-		mmc2 = &emmc;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
