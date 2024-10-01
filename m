Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EFBCF318C
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 01:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=96I0bXH3jS4k+qVdlaDBhCYohPe5oA3LQDN4DNuS7/E=; b=KVDL+mgLDmshkD
	GtMpUV/Zc0uPzcj6tdJiNnNH7tWDooVrmtd1WGBaHD7RVgnSHGZdMe/WJb9TWiUTMEDtY8SFi9uWr
	/XHdQiVGOG4YXhC4dx1br1pFzo/2+yKJlPczq5aCzPhtD4zjM7AfjAzB4JHa6ofAyKzL5DDZzCxMn
	tHPOK+l83B/LdEfwRkLyjPtev9JVRI+kQhTjgBapA5kExxp86v+mPCh4zQunwW4OAJornHNm7Exk6
	6hesOB/X9G4i+2OBqngF0fpSpdGxgEmXj11ZML+IWrIH56V0/r0AkNaD7hCP+V/ENGg/lDcBTwLk8
	g042gWfzaII+NXyDmVCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svnkQ-00000004UmM-0sOk;
	Wed, 02 Oct 2024 01:01:46 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svme2-00000004PQi-2QFh
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 23:51:09 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 491Nos4Y014078;
	Wed, 2 Oct 2024 08:50:54 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, jonas@kwiboo.se,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for Radxa ROCK 5A
Date: Tue,  1 Oct 2024 23:50:46 +0000
Message-ID: <20241001235046.1710-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_165106_857740_6FF64A6E 
X-CRM114-Status: UNSURE (   9.17  )
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

for pcie2x1l2, only pcie20x1_2_perstn_m0 is required, and its function
needs to be GPIO to avoid freeze at "pci enum" without PCIe device on
u-boot.

change pinctrl definitions for pcie2x1l2. no functional change is
intended on Linux kernel.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changed in v3:
- rebase on next/master
Changed in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 87fce8d9a964..841ac9a30628 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -310,7 +310,7 @@ rgmii_phy1: ethernet-phy@1 {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&pcie2_reset>, <&pcie20x1m0_clkreqn>, <&pcie20x1m0_waken>;
+	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
 	pinctrl-names = "default";
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_wf>;
@@ -325,12 +325,12 @@ io_led: io-led {
 	};
 
 	pcie {
-		pow_en: pow-en {
-			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie2_reset: pcie2-reset {
-			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		pow_en: pow-en {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
