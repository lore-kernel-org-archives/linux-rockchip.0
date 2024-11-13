Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCD49D597C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 00:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoZA1NQu9faKdUGyYfmdOyxCUZHyoZwIeymCc8EASgo=; b=ncnlgcFk5Xk355
	TvyPivmetuk5uvXJuljQPLLJ2aaDxeCqpmZ476mbAl+NBK9AuH6SRPKTM0vXcdmEiUPGPDXqGM+8a
	IrTWFc6BhaYy585zHtsULU2Qfa1PKsuUgzflsHlx2n67P8O3h/CP5TEz6UZC6EsjZCPj+siCmj+B4
	4p0K7QZLEGK6lYkbmzIFbV58LmglZaLPa6/oEt4rBD7U5taY/u0KcHzCRz8UQv1EWEdr3JlUGc/+i
	dmETZl1cMNgZPPdcyVzGsqouQsHL2QIoqvPoMxcKn6SthMVNIR5byVlDErR79yKlh1Oet2a+M8XMb
	jnH2qpqdbDyLaB2VTgSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB11T-00000005NRL-1NRo;
	Wed, 13 Nov 2024 00:14:15 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB11O-00000005NOn-2hX0
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 00:14:13 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD0Dmhv024846;
	Wed, 13 Nov 2024 09:13:49 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/5] arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C
Date: Wed, 13 Nov 2024 00:13:39 +0000
Message-ID: <20241113001341.7952-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113001341.7952-1-naoki@radxa.com>
References: <20241113001341.7952-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_161410_926442_8137792C 
X-CRM114-Status: UNSURE (   8.77  )
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

- fix regulator label/name to match with schematic[1]
- fix regulator proparties to match with vendor kernel[2]

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
[2] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 3eed50253442..e6a0d123ed71 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -660,7 +660,6 @@ vcc_2v0_pldo_s3: dcdc-reg7 {
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
 				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -691,8 +690,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_pmu_ddr_s3: dcdc-reg10 {
-				regulator-name = "vcc1v8_pmu_ddr_s3";
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -814,7 +813,8 @@ vdda_0v75_s0: nldo-reg3 {
 				regulator-max-microvolt = <750000>;
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
