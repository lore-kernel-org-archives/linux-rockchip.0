Return-Path: <SRS0=gs2I=DM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94343C4363D
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 14:03:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05F042085B
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 14:03:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="KsmMjdd9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 05F042085B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=katsuster.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tIRyM0SB6CGcMnBtR0al2D8OdHakrKqUQUgTf3GBEKs=; b=KsmMjdd9oCY/s+N4kzzA5deilW
	Tkimz0w8znQppXcmxjpVnVCQLmLXfZCIrwwBileQ4GaxrCmSifEVYL26oVPqvIPFblDZZywVg+BoM
	6hHHglSBrPaBGhcW+mGmSxB8BP8wgOl27eP2gt6eY6y2ve3i/ycWyA85UfCwxl1uGxNd3VYvYxjIx
	XC5KWAF8oF1nRD0JMqi3oXuWx1MOBDyoPNOqY+iiZJUlPsW8kquUg13Hkl8PlPXax+NwCQF8Tm77S
	XG8rfD/tEqZTOo96Feha4AcKtghi2gXkfqOkOyWYwEbf2r9egvP3vNWYgDwneDCp4u/KIHr97d1wu
	eBdbL1pA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kPR5P-0006rB-Di; Mon, 05 Oct 2020 14:03:31 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPR5M-0006pA-Am; Mon, 05 Oct 2020 14:03:30 +0000
Received: from fsav405.sakura.ne.jp (fsav405.sakura.ne.jp [133.242.250.104])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 095E3Kbe031802;
 Mon, 5 Oct 2020 23:03:20 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav405.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav405.sakura.ne.jp);
 Mon, 05 Oct 2020 23:03:20 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav405.sakura.ne.jp)
Received: from localhost.localdomain (80.57.232.153.ap.dti.ne.jp
 [153.232.57.80]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 095E3Dnx031782
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Mon, 5 Oct 2020 23:03:20 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: [PATCH v3] arm64: dts: rockchip: add SPDIF node for rk3399-rockpro64
Date: Mon,  5 Oct 2020 23:03:11 +0900
Message-Id: <20201005140311.2507530-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201005_100328_701146_E12BA88A 
X-CRM114-Status: GOOD (  15.15  )
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch adds 'disabled' SPDIF sound node and related settings
of SPDIF for rk3399-rockpro64.

RockPro64 has output pins for SPDIF Tx. But RK3399 does not have
enough DMA channel for enabling SPDIF tx. Current settings are:

  - I2S0     (Req num 0, 1): Enabled : Output to 40pins header CON40
  - I2S1     (Req num 2, 3): Enabled : Output to ES8316 on board
  - I2S2     (Req num 4, 5): Enabled : Output to internal HDMI core
  - SPDIF Tx (Req num 7)   : Disabled: Output to connector J10

If users want to enable ALL sound I/Os, we need 7 DMA channels for
it. But unfortunately, RK3399 has only 6 DMA channels. So users have
to choose from the following:

  - Disable one of I2S (Ex. I2S0) and enable SPDIF tx
  - Keep enable I2S0/1/2 and disable SPDIF tx

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

---

Changes in v3:
  - Refine commit description why adding disabled node

Changes in v2:
  - Remove redundant status property
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6e553ff47534..58097245994a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -76,6 +76,23 @@ sound {
 		dais = <&i2s1_p0>;
 	};
 
+	sound-dit {
+		compatible = "audio-graph-card";
+		label = "rockchip,rk3399";
+		dais = <&spdif_p0>;
+	};
+
+	spdif-dit {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+
+		port {
+			dit_p0_0: endpoint {
+				remote-endpoint = <&spdif_p0_0>;
+			};
+		};
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -698,6 +715,16 @@ &sdhci {
 	status = "okay";
 };
 
+&spdif {
+	pinctrl-0 = <&spdif_bus_1>;
+
+	spdif_p0: port {
+		spdif_p0_0: endpoint {
+			remote-endpoint = <&dit_p0_0>;
+		};
+	};
+};
+
 &spi1 {
 	status = "okay";
 
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
