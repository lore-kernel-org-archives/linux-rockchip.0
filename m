Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED74CAC597
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 06:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M3eb2+77QKo2lc/zBfyC9SPozhm0cTRzdAy/oZpftAI=; b=UZM
	jHIj3a9ux8ZXwQM6159owitj+coLV58J5pypmBoF75VnnJ1VPAeoi3bfq0zjXeB4qYAbejIUcZLPt
	4nn1FWrH0GeGnzZw55T2OXx1A6PIugUo6+SE3JyjAwBqgxeTg1VpbGNfWqBph4K3yCPTQCuYiMWl4
	4nzmB0sGrt+aac79mXMwi97yy37kXa+ruGL6kN58hSAArIA5ckZ8ed2flj660g0tiRrqiDce7Z/o1
	3TLdlwGdPiXsadOyhcjiFukilU2aIoCR088z58EEghVhr+RtJpkvHTGCEn3i80E6HF+N9cehDRSZz
	iPfNzf8VXYpDGdNiWbUVek5xxvYvNDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz88g-0000000GQJX-2D2j;
	Thu, 18 Sep 2025 06:29:06 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz88d-0000000GQHb-17gb
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Sep 2025 06:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1758176918;
	bh=/2S6tDpoUZ1SIuOdhsW6HAwbv5zQFWfuXkE0KYiPT8I=;
	h=From:To:Subject:Date:Message-Id;
	b=tvE7QzllHb28Z1dD6sToqcmx6puNPMjcypFTX8UfjpRQ6++JLSSq6hbDktEMNVyWN
	 cZtygTtSehwoXN5HgMfFNt+NM43Jj/w0OFQ9/c3DklD1BxaxMrG90udcC47uTn8AXR
	 jlSbRnxfSIGjqo9/r4o+z71oG5S2oKr59qYSA9Ds=
X-QQ-mid: zesmtpsz8t1758176916t49f2e520
X-QQ-Originating-IP: kounfVWLm9bYpqAv0zEPs9uq4bYOiCpyxYAp46ogmAE=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 18 Sep 2025 14:28:34 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13016871167258728996
EX-QQ-RecipientCnt: 18
From: Chaoyi Chen <kernel@airkyi.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2] arm64: dts: rockchip: Enable DisplayPort for rk3588-evb2
Date: Thu, 18 Sep 2025 14:28:25 +0800
Message-Id: <20250918062825.194-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MtOtFzEWJwk1a2Yz0B+5e1VkbUQkzCPYB1qYPVFi3facMGEu/b4RuqV3
	FLL0TkPI1mPMPMzic+ifAtREhEdxE5z0EkYFgLRPSjLVjFTCWzl/1cSrJyLvJPbO0kwyfak
	dDHBaHVz/7o+Xkq7bkOdMrN1lbt6pVKIFwPUIopg7ugPekL6q0pY0Qe+TgCAgyiciOmYp3C
	m9AfJzEosYS1OjQxP+DPiNrHa5JEIIGiXAgt0rq7sPB/VXTO5hAFeJUCaUtx2MHrrDXuma2
	dNTDgBMEl8cBMQJoHPZDDnztNLCYtR1uTvDATfHOitEzGj1/x5fsf6rdzjUZRGBOlhkZ2VH
	WNnIOJbDZPaQy0ar5yB5+Gz8bP1bU0KDz2Z+VmWirJQr1hC+0luINy2rHj2Cnyo3MFj/qEj
	gDcc38bKPMo4AssQTUaj7AYoyBQW+CfFE5JNR1E+kPbNl5CRd/qtJ0SQuMC4Z964EW3GrxK
	c0f5vyipEvsa6M2FOp9VCP4XdbJDho1dIDay2kGnV2zTZ9X7GwZVoekm7HDRrg3yNLHHSIw
	UCt3497VpjoQZR6tDp4TPizjtLZl5sZs5GHvsV3kUaAwWix0rAQCpO4+aqqXWgEZpBC6nIi
	ftgTLE5nc1h3H4ajPnOiUfgIY6wIzcUFY4l/iXM1B3IOptBLB4abPmqqU0vZBsepCwJsvma
	K6c8EvR5f0q2iexOxVUaiz2nnfD7hAIQHshaNp6bmUE4hBmWb2Nrg6TevVDzUGN3YpuR8P2
	VQSMMe8/yv1zoJLvW5e1ecbud49rOwvHdfSm1sjpSEKL2oz5ANifFPixjrmXLiOqx74OQH7
	P4MbgmgfaKCUXIVu8qE/bdxno7fl0TRMHqwA8FHvi7v9c05gmzvG4TExtjdlqvMvk8uI0oK
	4bpDekwgNpBJVRPl91dkz4xWL/emE/3uHzgJB57UZwNYx9aLGCzGt34iLQ8R4BUWC8pz+kk
	2ZH0URmE+sabTvL80eisnli42GotlsAH1IitqpPIEGFOtl9tQILfCPz6xTOlL9hLXyOp7Nr
	ZkBE9nvA==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_232903_712701_1BEB5708 
X-CRM114-Status: GOOD (  11.75  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Quentin Schulz <quentin.schulz@cherry.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The rk3588 evb2 board has a full size DisplayPort connector, enable
for it.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

Changes in v2:

- Link to V1: https://lore.kernel.org/all/20250916080802.125-1-kernel@airkyi.com/
- Fix invalid DP connector type
- Add more comment about dclk_vp2 parent clock

 .../boot/dts/rockchip/rk3588-evb2-v10.dts     | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts
index 91fe810d38d8..60ba6ac55b23 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts
@@ -25,6 +25,18 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	dp-con {
+		compatible = "dp-connector";
+		label = "DP OUT";
+		type = "full-size";
+
+		port {
+			dp_con_in: endpoint {
+				remote-endpoint = <&dp0_out_con>;
+			};
+		};
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -106,6 +118,24 @@ vcc5v0_usbdcin: regulator-vcc5v0-usbdcin {
 	};
 };
 
+&dp0 {
+	pinctrl-0 = <&dp0m0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp2: endpoint {
+		remote-endpoint = <&vp2_out_dp0>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&dp_con_in>;
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu_s0>;
 	sram-supply = <&vdd_gpu_mem_s0>;
@@ -916,6 +946,17 @@ &usb_host1_xhci {
 };
 
 &vop {
+	/*
+	 * If no dedicated PLL was specified, the GPLL would be automatically
+	 * assigned as the PLL source for dclk_vop2. As the frequency of GPLL
+	 * is 1188 MHz, we can only get typical clock frequencies such as
+	 * 74.25MHz, 148.5MHz, 297MHz, 594MHz.
+	 *
+	 * So here we set the parent clock of VP2 to V0PLL so that we can get
+	 * any frequency.
+	 */
+	assigned-clocks = <&cru DCLK_VOP2_SRC>;
+	assigned-clock-parents = <&cru PLL_V0PLL>;
 	status = "okay";
 };
 
@@ -929,3 +970,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp2 {
+	vp2_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp2>;
+	};
+};
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
