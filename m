Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 116F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 23:05:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 877D760FC1
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 23:05:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 877D760FC1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHqjhPBhM9oOWymGa3AJ2IE6YAf+XIWT9AyQpG7DkgI=; b=SMC7sPwA3m0TOv
	iiq7JiUPfZ707dz2B3RbxZGhLmQORK6C9za5sLoF/zb1zPRQFb5eYl53/WFahG/36MPXNkHenkm4O
	hOcX1v3Tgm7Vk3NbTLtMkWPPZ07U1rjSuIeDW0QK2LTn43lTKlbP8HW2n7iTmxTl+s/ZfRZoe6MPt
	6wi4hjHdC04KbfIqkmTX/ZNr3fuERORtDhqrRUwbFFcHw+68ut/PxLfFE9H98t+S9QTQ8QpXHZOFC
	FvWydvLExNkkoeeJuRm/IVQS5tev7OOmvxfCGaWVD4m/pTAZcBK5c6BNQOj3LJ+umWr3JMHHAbypH
	IsxaoLY/Ktbse2b4IDog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTBIS-009tTw-Be; Wed, 22 Sep 2021 23:05:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTBI4-009tO5-SY; Wed, 22 Sep 2021 23:04:39 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mTBI2-0002xp-Q6; Thu, 23 Sep 2021 01:04:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: add phandles to muxed i2c buses on
 rk3368-lion
Date: Thu, 23 Sep 2021 01:04:29 +0200
Message-Id: <20210922230429.2162535-3-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210922230429.2162535-1-heiko@sntech.de>
References: <20210922230429.2162535-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_160437_007023_BDAB62DE 
X-CRM114-Status: GOOD (  12.90  )
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

Other DTS files that include the dtsi will want to to add children
to the i2c buses from the i2c-mus. Without a label they would have to
specify the full path.

Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
[add phandles for first mux as well]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 8e82ca3f1c6f..5753e57fd716 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -29,15 +29,15 @@ i2cmux1 {
 		i2c-parent = <&i2c1>;
 		mux-gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_HIGH>;
 
-		/* Q7_GPO_I2C */
-		i2c@0 {
+		/* Q7_GP0_I2C */
+		i2c_gp0: i2c@0 {
 			reg = <0>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
 
 		/* Q7_SMB */
-		i2c@1 {
+		i2c_smb: i2c@1 {
 			reg = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -52,7 +52,7 @@ i2cmux2 {
 		mux-gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_HIGH>;
 
 		/* Q7_LVDS_BLC_I2C */
-		i2c@0 {
+		i2c_lvds_blc: i2c@0 {
 			reg = <0>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -69,8 +69,8 @@ rtc_twi: rtc@6f {
 			};
 		};
 
-		/* Q7_GP2_I2C */
-		i2c@1 {
+		/* Q7_GP2_I2C = LVDS_DID_CLK/DAT */
+		i2c_gp2: i2c@1 {
 			reg = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
