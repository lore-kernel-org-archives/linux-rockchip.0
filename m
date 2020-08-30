Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5875CC433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 20:12:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 264CE208A9
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 20:12:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aKz/6g4q"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 264CE208A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=adrianschmutzler.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l5jKcgxYdXTL3+EzuvKwGxEyEQDBQ/f+CMqr48mIM6k=; b=aKz/6g4quVvkU/sp1uFMPEM2fL
	e5uKfH+6T34cNPKO9vSH6C/brCW1T6oJTKQKUJM7Q16BuGREfmiM0uqX92KgwZGseZVGFziiJPzyE
	F0MgAVPwBtWBcpBFKQla3q3AfsLpHDZwjj6mWh4+B/mImoLruI7p7rNDnUQKwxfpvYMw613pPLvJm
	FF9TkiI5u9xZ+wN0UH1joOxfNJAb0iW6rcycFwUoC1HrHEQAjx7NT6yi5+2VW+ocy7kkwHaWD/CIw
	fM2iQQsu/h5yj9dF0zEzmYHEdM4LLig7hNCrd33rGZShH4n9/lxtziQuQOaq3o5Yc0B9GkIcTNy0W
	pO2erVaw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCTgL-0002NN-5q; Sun, 30 Aug 2020 20:12:05 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCTgI-0002Mq-LA; Sun, 30 Aug 2020 20:12:03 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MCKO2-1kLrcE1XNK-009NWS; Sun, 30 Aug 2020 22:11:56 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: replace status value "ok" by "okay"
Date: Sun, 30 Aug 2020 22:11:12 +0200
Message-Id: <20200830201112.1934-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:uf6YlynqW3NquFxGS1zExJAHcdSff5eY3WC+TNDcjw1QG0P+tt1
 ZsOUv3XQdQadCyBQoa8Zjlk36Tx5/81+F2htn460uZyc5sgkMZWFs8vp+znZcyz1Ol7xzwI
 JEjKZ1KkxEShlBiUQOWFWlgIA5SwffcHUz87cFUP4pey+joZFpG/v6jgdJg1QyqXUx+vAPK
 w7tUj5YDm1tUNPPuQJeMA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:iJ9lBfz7u5Q=:3xEeAracVWTLwrvg4wITTS
 ZLrcgNzvdAXiPV+6QPLzjMOTzoUp91U4xyQIcM1Gcj3JmgGO8W9ZuMQbdSb+5GzwABMRUxqte
 lDsM6VcMfR+e3oO7Kz+g8ozTyouerhs6TeB29wjiar9UHlMFiUTV9YaAw/aTHkqu4Jqxr46M9
 FZiAuhA/oTp5eCvDAciMgqMyKl+hNzt9Ysww5YQOix5nufe7WUN1yUj9/5r7uzjC/VeyKNk0Y
 kewlTtk/aLx7XtGVhxQv9XyGCeEeuTqKBkW0Qhnn1Mw16jUc2HYLrsQ3YoQpyqXCSfyy+RdiJ
 b6WL1OSzWthkmRzbV6Y8Td1LbF1Fxd6SGinhxJTWuVecpbru8CQ1orEF4FjphhEnFUUGjcmZm
 MCIGEoR4E21jPYbDGttk+wzKY17wcixqzQWIgmDrNNmqHk2R1KsavyItRcGIHKH6f0RATR4Nr
 O/qPw8230fF+gnK1jytJlmJN4bdMqUu9PkF4DN8A1tEHqlywmrl7ojhTuS1RUbXn8+lIUVWro
 zUeAuX2b1xvltoL6OwpWSDWh9rpeugGR6R5ciR9vx7a0k15O2FwU8B3/PuDbOdyNL9f2dwoA/
 evFnSjG6DdOoXKAutnVMJtFxnmHh6vpdTzY2XVPyiH8BDDw7c9HXbrN+5hgCegApURylnUj75
 jIqfflNvAP5uBs7iOu/gAz4lS53Vdw8V6MVET8V4Os4fUEHEjXI0gCrQDjNpgUMwgVyS9c4YB
 nX1bA3MRBPYk7oBuIVyKmZYYtPC3oaoQ7JMqsr1tiAvKq0LE4pCwpC+q4t0q3zCqyf4F846Pm
 rjLRqbRYM3PyIKX6zSjb/fwI0uBdWoUsosSI2ZD3HBSv1RbxazEv7LaCas01BKUQE/cR5VqWn
 vUkZZxMNsFPBY6FHagzw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_161202_938813_87B147C0 
X-CRM114-Status: GOOD (  12.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 1c52f47c43a6..87fabc64cc39 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -134,7 +134,7 @@
 	pinctrl-0 = <&rmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index b058ce999e3b..ecce16ecc9c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -183,7 +183,7 @@
 	snps,reset-delays-us = <0 10000 1000000>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 236ab0f1b206..2582fa4b90e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -167,7 +167,7 @@
 	pinctrl-0 = <&rmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
@@ -198,7 +198,7 @@
 };
 
 &io_domains {
-	status = "ok";
+	status = "okay";
 
 	audio-supply = <&vcc_io>;
 	gpio30-supply = <&vcc_io>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
