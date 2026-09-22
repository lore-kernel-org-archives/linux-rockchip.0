Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 364A5C982FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 13:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Xdj4SL7wcquBe6DM/rfFyN35jx6yDBh0y6lYUu9XQc=; b=PR23EAB4AzwMqb
	9BclWjNx11hlIGv0U7ip8sf0YI/qj+CvXSavvPs6PDkhjAvi0b47Z6rkG6wJHPNsWxTNebRztxB+h
	880dBEOGvYCGO+RJFSiYqyWINniiR2ak45gXHpPJvdVqwYcIL9aeAzSOLSCb0L/H9dpc8HdlH5kMt
	ntsgGE2vZ4gY/3x8UaGBZP6wz3CHOa0T6OV7Z8uLbLkWsdBsNIDmr8QHoiZeTi+D/lgqzHhqtKMHN
	441ZvPBwjeT148xXABnjnPB6onZFUyzWGjQc8iC2NgqvsWoUKxTNXwsVo3x62ZHN8Z3tvKJ8S5JAJ
	SDCE/PVWCzZt/TcBVwmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x90gG-00000005Y4c-37mc;
	Tue, 22 Sep 2026 13:37:08 +0000
Received: from out-211.mta0.migadu.com ([2001:41d0:1004:224b::d3] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x90gE-00000005Y2v-0XQK
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 13:37:07 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=KPcw/ZopzzaYRfLPPDrflpmk4QBwx4LnGR3aDrupdxo=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1790084222; v=1; x=1790689022;
 b=HygEBTiD5SS2UBPfStNd4HRIGEvr4s6OBSemirUL6WK9ken+83Pi/QoCV4Hpf/+70M+piu7W
 BlG6kgWyED6pEv4V3vdgDkv00SQaHnYz26kMEr0Y9NZI4OU7rqDritz/zBpV/kv5vEY099QGter
 GhfG2IZAN0UpljWtEc7Hl6vBaHwxUI3/Fyu6enFid3w1U9bQ/P42PtKGe8o7vWs7UArnGbBoUxB
 P9N53Hw1Ol/rW9H5RtSoeesrs0r4UiR9O96ggl+SuO5UdRydeE+z+RxsWJ4wS5JG0roJLJE1FoN
 zWlGuKPb8wOyCidBl9zDuI3OpxKpMCwf2ws+NuZaMhmRw==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id f43a4edae3204aa3;
	Tue, 22 Sep 2026 13:36:52 +0000
X-Mizu-Trace-ID: f43a4edae3204aa3
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Rapha=C3=ABl=20Jakse?= <raphael.kernel@jakse.fr>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] arm64: dts: rockchip: Add supplies for es8316 on RockPro64
Date: Tue, 22 Sep 2026 15:36:22 +0200
Message-ID: <20260922133643.2730265-1-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_063706_308672_B74A3C44 
X-CRM114-Status: UNSURE (   8.51  )
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

The DT binding for the es8316 got 4 power supplies added in commit
e9966d450b46 ("ASoC: dt-bindings: es8316: Add regulator supplies")

Page 28 of the schematic for both RockPro64 V2.0 as V2.1 describe those
various supplies, so add them to the DTS's.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
index 883d9bcfe792..37124ad548cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
@@ -19,6 +19,10 @@ es8316: codec@10 {
 		reg = <0x10>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
+		avdd-supply = <&vcca3v0_codec>;
+		cpvdd-supply = <&vcca1v8_codec>;
+		dvdd-supply = <&vcca1v8_codec>;
+		pvdd-supply = <&vcc_3v0>;
 		#sound-dai-cells = <0>;
 
 		port {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index ae3ee91dba2f..144988515c62 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -19,6 +19,10 @@ es8316: codec@11 {
 		reg = <0x11>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
+		avdd-supply = <&vcca3v0_codec>;
+		cpvdd-supply = <&vcca1v8_codec>;
+		dvdd-supply = <&vcca1v8_codec>;
+		pvdd-supply = <&vcc_3v0>;
 		#sound-dai-cells = <0>;
 
 		port {
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
