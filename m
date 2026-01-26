Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D4D1CF65EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 12:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K4zuaxJUQ3onTlUx9kb9jGP0fxPV1Lsgb/fLlC+9txg=; b=Vf70n9/iSGYORC
	jnEiCJStqx2yIs4BncJSjsEupkvZspgSIgBij1hrrm2gVy+n/upBdB5xGqO7vxCS1WxIVwLsb068l
	fIwyMLEbZFKemQ6+opkPYRhpJtSg5OuIEL3ejKUjapVsdJ7RTzeU96e5lD/XdM+ILBSAHhWRH+gEL
	J33dRWchkaqE4f6fesJ6vifsVGnB6FCBnmvie6ibGxci8GhHSCKBC7LXwRvo9MDRd08oCATBGSo2c
	VIn6l8iHHVSQCLBZEGugtHmRJ9uRm78m06yOgOta6PQbYODc9H1gOzJPZqs98i5IvwUdG4QPFsM/y
	phQVmdSjjatYk08bLJNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLlV-0000000CXap-0Nj9;
	Mon, 26 Jan 2026 12:32:21 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLlP-0000000CXYN-0wH0;
	Mon, 26 Jan 2026 12:32:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08E0D339;
	Mon, 26 Jan 2026 04:32:08 -0800 (PST)
Received: from 010265703453.arm.com (unknown [10.57.51.176])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 86C9D3F5CA;
	Mon, 26 Jan 2026 04:32:13 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Christian Hewitt <christianshewitt@gmail.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] Revert "arm64: dts: rockchip: add SPDIF audio to Beelink A1"
Date: Mon, 26 Jan 2026 12:32:04 +0000
Message-Id: <0af77a02c2b0806d4ca72066392a5453fcc89a8f.1767111968.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_043215_317884_1B07EA52 
X-CRM114-Status: UNSURE (   7.64  )
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

This reverts commit bdc4d388c6452498ab62ef2564589f40e0c8c262.

While Beelink A1 mostly follows the high-end RK3328 reference design,
it does not in fact have the S/PDIF connector, only HDMI and a 3.5mm
jack for the analog audio/TV codecs - the tiny form factor literally
doesn't have room to fit more!

Cc: Christian Hewitt <christianshewitt@gmail.com>
Cc: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 23 ----------------------
 1 file changed, 23 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 30bdb38f0727..e810ed146451 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -58,24 +58,6 @@ ir-receiver {
 		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
 		linux,rc-map-name = "rc-beelink-gs1";
 	};
-
-	spdif_dit: spdif-dit {
-		compatible = "linux,spdif-dit";
-		#sound-dai-cells = <0>;
-	};
-
-	spdif_sound: spdif-sound {
-		compatible = "simple-audio-card";
-		simple-audio-card,name = "SPDIF";
-
-		simple-audio-card,cpu {
-			sound-dai = <&spdif>;
-		};
-
-		simple-audio-card,codec {
-			sound-dai = <&spdif_dit>;
-		};
-	};
 };
 
 &analog_sound {
@@ -343,11 +325,6 @@ &sdmmc {
 	status = "okay";
 };
 
-&spdif {
-	pinctrl-0 = <&spdifm0_tx>;
-	status = "okay";
-};
-
 &tsadc {
 	rockchip,hw-tshut-mode = <0>;
 	rockchip,hw-tshut-polarity = <0>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
