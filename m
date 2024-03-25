Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EAB5CD11DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 15:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBcwGV1HRuf+EEUGiqLd06jsmADRusRxyEJMXoK0hO4=; b=rkxz+DELt3FIml
	Q9zLeLDl0Upbn3QiyP/DjJKWFTRv18+NZKDY3TqlEogbMDRfCHp8ty3AG4U1xUotEffcvf9ai16Yu
	Ds1b4ZezeEcCoe1RGzaYvC40AWlax9KF9PWexap71gMrzVDqNRCl5zaGZw0KHzTCkfnVYmezcyTUn
	Rmt3ij7rn4ekWc7LhEW87hCjQi3877KfWdTBAgw+yYkv/yH+cIMF7+IlY7CTmGGQAqFXYF1cQiSkm
	Z1A0EylXawsbt62uw+Zp9TrMh9aKK2M4U/w375e76+UNhR4E4YjwMP6Pxx8yJEKJr+sl9orQduluW
	ObzHHX6gpCn3lJZ84DGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romPu-00000000Xdx-0CUc;
	Mon, 25 Mar 2024 15:39:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romPm-00000000Xaz-3XqS
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 15:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711381148;
	bh=3v5iUw5gs5zUBSvUjIKafb/MEF4mCCtd8Xpd9HFcly8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fWCbp4IyGLzPOFMJJg+VSbS+HT7L1NzmN6dZqo2/wbtZlhKq39kskWcyQrnFtW8b6
	 +0k2/tsnUHdYS6TeqAzU6ChOATtBpTizePaVHfm9OJ0CP7nCn2DTxdQDTStsE+RsOv
	 KjwXiZGyXz4K/SdBdLUoj4JSZuuURhKrJpxIBy53aD0gzrniU4EBvCf8bHwaWQgYZB
	 TH7u2XWrFTkpObziBn0Ww19yAW1GBTg294N6OYHdGAQQLn7OlN6/822tXnjofJqI0f
	 83GnkCu0Q0ObPqfonpGcGYQriHRQrhiwy9zsXgpif3+55Ung38KNK8B1LKfYBzUFhG
	 aadvHD++IKngw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id EE66E37820E4;
	Mon, 25 Mar 2024 15:39:07 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 748AE4800D1; Mon, 25 Mar 2024 16:39:07 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v1 4/4] arm64: dts: rockchip: rk3588-evb1: Enable GPU
Date: Mon, 25 Mar 2024 16:37:21 +0100
Message-ID: <20240325153850.189128-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325153850.189128-1-sebastian.reichel@collabora.com>
References: <20240325153850.189128-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_083911_548399_96946B1D 
X-CRM114-Status: UNSURE (   9.87  )
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

From: Boris Brezillon <boris.brezillon@collabora.com>

Enable the Mali GPU in the RK3588 EVB1.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index de30c2632b8e..b51a17b404f3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -281,6 +281,12 @@ &gmac0_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	sram-supply = <&vdd_gpu_mem_s0>;
+	status = "okay";
+};
+
 &i2c2 {
 	status = "okay";
 
@@ -484,12 +490,15 @@ rk806_dvs3_null: dvs3-null-pins {
 
 		regulators {
 			vdd_gpu_s0: dcdc-reg1 {
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
 				regulator-name = "vdd_gpu_s0";
 				regulator-enable-ramp-delay = <400>;
+				regulator-coupled-with = <&vdd_gpu_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -534,12 +543,15 @@ regulator-state-mem {
 			};
 
 			vdd_gpu_mem_s0: dcdc-reg5 {
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
 				regulator-enable-ramp-delay = <400>;
 				regulator-name = "vdd_gpu_mem_s0";
+				regulator-coupled-with = <&vdd_gpu_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
