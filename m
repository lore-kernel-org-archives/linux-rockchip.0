Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCAED108E1E3
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 10:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ohi1vfLoOuVgOBf3QQhhAOJ/lSzcuxURhFMmVjbSGZc=; b=wVUYGcVZVDvKvp
	OWDmyrkGRlrMR9BF3N3bZDpLWMy6PqJzoGniMpLclDr+PuVd360D85mPMR6o66KPnXHR9HKd1E4mu
	BdzNeruUGd2JyP/xGp9RAtxBpj+QxAsp7wceeUB2b6WhNAx7fA4Vr5mPPp35ZDqlVboIIJfRQ7CIC
	vloi3tiVKdVbY5K+fknEAD7jqNwtVM/Ui4DEXMaCGPm5XYpzq+PjudCK0cifk7OjapxErTeRWlLSc
	xhaYTT7XWglvNE0MDhRmYMR2vnDZPNmKJM6S0VJHDo6S1lAP3mtAfZ/PhaKsJhjac80XSFxzRUE5d
	ZYaYSVux+qf3AuHJC/eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AoN-0000000ARGA-0aeX;
	Thu, 19 Mar 2026 10:41:07 +0000
Received: from mail-m1973177.qiye.163.com ([220.197.31.77])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ao9-0000000AR21-1Vuo;
	Thu, 19 Mar 2026 10:40:54 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3790344da;
	Thu, 19 Mar 2026 18:40:47 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v2 6/9] arm64: dts: rockchip: Add eDP node for RK3576
Date: Thu, 19 Mar 2026 18:40:28 +0800
Message-Id: <20260319104031.1986946-7-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260319104031.1986946-1-damon.ding@rock-chips.com>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9d05aeff7803a3kunm32a99f093bee9f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQksaTFYfSR0eS09KS0IaHktWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=HP3yXChkT7fq0xDWQ86ycVPFlCZI1LJDXsUtUUwIUC1MFqSyZkOi70Ejhw9armmzBpRudIQXscVMPUb96rH7aLhSzIBUs9OOtFzOgKUVag4McIAiXGXMqZxl/Uuug025BlDZSkpkt9c6XYvl1YpCT2qD8DiJfS9/W1vAd/A6tPU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=4dRdfQlranP7k8QhyPvKRwwVtTUqhcj/jXRjL+FdHRk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_034053_575462_0B435066 
X-CRM114-Status: UNSURE (   8.88  )
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
Cc: kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn, Laurent.pinchart@ideasonboard.com, m.szyprowski@samsung.com, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, jonas@kwiboo.se, heiko.stuebner@cherry.de, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, dianders@chromium.org, alchark@gmail.com, michael.riesch@collabora.com, didi.debian@cknow.org, nicolas.frattaroli@collabora.com, tomeu@tomeuvizoso.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for the eDP output on RK3576 SoC.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

-----

Changes in v2:
- Add Reviewed-by tag.
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index a86fc6b4e8c4..14900a66d3e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1446,6 +1446,34 @@ hdmi_out: port@1 {
 			};
 		};
 
+		edp: edp@27dc0000 {
+			compatible = "rockchip,rk3576-edp";
+			reg = <0x0 0x27dc0000 0x0 0x1000>;
+			clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO0_ROOT>;
+			clock-names = "dp", "pclk", "hclk";
+			interrupts = <GIC_SPI 365 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&hdptxphy>;
+			phy-names = "dp";
+			power-domains = <&power RK3576_PD_VO0>;
+			resets = <&cru SRST_EDP0_24M>, <&cru SRST_P_EDP0>;
+			reset-names = "dp", "apb";
+			rockchip,grf = <&vo0_grf>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				edp_in: port@0 {
+					reg = <0>;
+				};
+
+				edp_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		sai7: sai@27ed0000 {
 			compatible = "rockchip,rk3576-sai";
 			reg = <0x0 0x27ed0000 0x0 0x1000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
