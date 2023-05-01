Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA58C77B61
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 08:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmZ9l6V4cZu3vxD0k1L0hnsp06KBZTH5mZWrBK6b2zQ=; b=IGKeJ+vekLihT0
	GvQ8ftGe8CiIWdWP0c07TyXvXmM4ss0LWlfOSyfkPmvcrHOU7lDOcwArnzizZ9m4JOM4Ryx6N/Sfm
	D6xEK5RnfVnLOyNSdut5L7ilm/PQMrxKgcswMizdfeInN9cY+DqS420IU14dl7Hq4h2pId36ZgPoi
	Ac+9vPPC1idAwCGQQ+illoKDpk495SEsXBEVhomUwO9zwbQTlTZ1BtCa8hNPh2T++TYnaeU6eZYyZ
	2DLZIFiEiy1zkaC6pnAJq5WHxBJnwbhswtPw9LHFSUu7YJEG/XdURmP9tjNgqkWwM699pauwIGbvl
	oI9Gcx8tJP8LCMhpj8MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP9G-00FTRH-0G;
	Mon, 01 May 2023 08:44:42 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP93-00FTEG-2d;
	Mon, 01 May 2023 08:44:31 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7776C66031C9;
	Mon,  1 May 2023 09:44:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682930668;
	bh=rxSmyDetIZGvppZUNfAhus6ErLEiFJ3xF8DbQXYz7ag=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GOIXfJMWPnN+iB38HSKAo06ZeYvHke9DTjRs95PihjrzCHA8Z9/9v9acS5hdPHKBW
	 Pf2vJ47cHYzPOP5Tz/2YHeu2EsMMALzj4bZ8980EoquE+7GcfQUfkov3FXTt8XyvdS
	 ggr8sQIXcnWYvaCVjgmpxnxwLj2bYlxta/IUVVpV8uV4m8x965N/zpwf9uQ0mEHjMT
	 ICnbSZQy1ItIsmMaYWrzK8gkTaVgWuF80l18vDx4F5vXKVX6HLxkpN4bRjiVTM+RB7
	 AycotF6qNKY703ZhMgJIvL80ObyB2x7YAtRZiZUDLXR7V1xQ8UgNgrWVIxej/29tTf
	 7BmAtbsvY/gVQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 8/8] arm64: dts: rockchip: Add rk3588 OTP node
Date: Mon,  1 May 2023 11:44:00 +0300
Message-Id: <20230501084401.765169-9-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_014429_993040_51BE26CF 
X-CRM114-Status: UNSURE (   9.82  )
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

Add DT node for Rockchip RK3588/RK3588S OTP memory.

Co-developed-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 54 +++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 767084a1ec43..0abcd51d7d66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1822,6 +1822,60 @@ spi4: spi@fecb0000 {
 		status = "disabled";
 	};
 
+	otp: efuse@fecc0000 {
+		compatible = "rockchip,rk3588-otp";
+		reg = <0x0 0xfecc0000 0x0 0x400>;
+		clocks = <&cru CLK_OTPC_NS>, <&cru PCLK_OTPC_NS>,
+			 <&cru CLK_OTPC_ARB>, <&cru CLK_OTP_PHY_G>;
+		clock-names = "otpc", "apb", "arb", "phy";
+		resets = <&cru SRST_OTPC_NS>, <&cru SRST_P_OTPC_NS>,
+			 <&cru SRST_OTPC_ARB>;
+		reset-names = "otpc", "apb", "arb";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		cpu_code: cpu-code@2 {
+			reg = <0x02 0x2>;
+		};
+
+		otp_id: id@7 {
+			reg = <0x07 0x10>;
+		};
+
+		otp_cpu_version: cpu-version@1c {
+			reg = <0x1c 0x1>;
+			bits = <3 3>;
+		};
+
+		cpub0_leakage: cpu-leakage@17 {
+			reg = <0x17 0x1>;
+		};
+
+		cpub1_leakage: cpu-leakage@18 {
+			reg = <0x18 0x1>;
+		};
+
+		cpul_leakage: cpu-leakage@19 {
+			reg = <0x19 0x1>;
+		};
+
+		log_leakage: log-leakage@1a {
+			reg = <0x1a 0x1>;
+		};
+
+		gpu_leakage: gpu-leakage@1b {
+			reg = <0x1b 0x1>;
+		};
+
+		npu_leakage: npu-leakage@28 {
+			reg = <0x28 0x1>;
+		};
+
+		codec_leakage: codec-leakage@29 {
+			reg = <0x29 0x1>;
+		};
+	};
+
 	dmac2: dma-controller@fed10000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfed10000 0x0 0x4000>;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
