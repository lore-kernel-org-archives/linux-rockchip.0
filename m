Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E5E8CAC598
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 08:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dKWky4eMl0ySb8vTLpBnBGjw/q0JW5gqbm1aW309rKo=; b=AsI
	ls4ydudfFoQiZUG8mSMzkLsI0C+abHAEvF4ykrG73NWuvHSRrJH8KEDUOi/qFEkA7WuUN3LzOD+1M
	CbYHSHrLcQ2znCT3A3lE/UBsfi+vwQCnfA4QqNXcWzlT9ThGu+wDQvIakcncWGdJ7jhkVncLMWWma
	zj43T+efxMzOJw7gqWIGr9wc+3inBiGbBjzGUoS3rz20muzOja3KTdG9hXdoGjmEzpd3/g0IWRJQi
	2E5hPPTtHHVtJR3dEHAnL1TLb5YxDYHQz1qVCngKipk0OWhjc9C2acFMktnlG+0mvEl2YU/9x1BcN
	rXM08JCFO9cQAs7RNMi+tLmQvdGsx8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQjr-000000077qy-0dPY;
	Tue, 16 Sep 2025 08:08:35 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQjo-000000077nI-0iZV
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Sep 2025 08:08:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1758010089;
	bh=hnz1bmTaV/5rTkG6fQYUXPwPMQpIN6l4+8uksyKRibc=;
	h=From:To:Subject:Date:Message-Id;
	b=Yqx/j/r/sywiY6HXX33Um5SkHpij9EiSfRnVjL0jzZOrY2k5YlP9a7MpDWWpSXBCB
	 EpgcsOZ16fV4MN3cp9emjGUtUt5LAYeDsQjtc7FACM1CiCAjHdh2UNcPzwghmBCN/O
	 x8DYrslNVj6/+mUbE7j2B6C9wvEJPX7RTcpJCNXI=
X-QQ-mid: zesmtpsz3t1758010087t3fbefdff
X-QQ-Originating-IP: /Rz0qBK4PaPleHiuURFFZblXxEBkxSyRKTOxW50+KgI=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 16 Sep 2025 16:08:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1933021998724514567
EX-QQ-RecipientCnt: 18
From: Chaoyi Chen <kernel@airkyi.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Enable DisplayPort for rk3588-evb2
Date: Tue, 16 Sep 2025 16:08:02 +0800
Message-Id: <20250916080802.125-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OYM+rvgdyOKCfzKs2hBoZ41UqiVw1szp+Uvg0bdOZNWRXiTfIrvq65Ig
	/ptJtjWX7z+PfjPWbYpLJySNp4qy9HTM/rHj0pV6WBWBvovoJ32LlpYITquyi4lNouCtZSA
	b6NGWtbhEzmx3NrMuyjMwtx29lieFCBzmmZj/H6pmz46i8WgEBdE4tyXzUf+LjMFBls9Nbp
	8ODzFrzdZ/ShMUFQvim1nUVEoU94FPjv02pXr3xiv+f9ZAuTEy273RwQVwju8savNdJaJK5
	J6zL20sLestjtmxugzNRlKIGOhwgn6t0KjpVlWZxnbJmCFk0rGLm++rQzMXb6atWFE0DFjh
	SE00FXOq3X0i9dhrSrUr7uw8k2K8QcyNRg5xYEkAu9ymjhvm6O/8kcS2+0mDncvUJFpyVy3
	s02+M520kYKTMWI8/4e95d5XZOQhccDnUYvZUglwtrjUU3uVuioDTeR4vDDwNqAYSQ5xF2r
	rrfubO20dborA39qadDADZ1btectN6eitSOti05GJneHVGvXHVB4Ro4DN6yFnmbY5W7EFI/
	jbuOtWsgwG5c6hkPSPyOaZf7AncQP6PSsERT5rjEcnxofdHXEi30/IHJtSRHaEUogvmeLqx
	gb/j1YPW8wMandPRp3FSO08mZVFzqGHOIVUohoqQ7vlRxvn9qD5zoQ8Q41taeUn7YUZxftj
	8bsby9+HfLW8erpzpWz2JcG6ZMMVU/0g3hu1bdNumwgt85ztTX0Z8otsOJ+j1gBTCRoYC+a
	n8j2lltEk1ZXaAwtfjjUfJTnz/pxZAsCMKrHU4YpyqX1O72z+THIo6nhIS21EsXXyGQ1nnT
	8Hz53O2PEJBFOqZpSKkg3oXGTVfdZt4PmFVHlbLKy/puALErIxte1H8mX65rVbuphEjHvjq
	+tpnpX3TFuLrKPOtcP8ZBTOYXgI6StCQQtmdoz+ey0IF5UQ8O1DELDRjGno/JDuyRw1mdkg
	nPZDDqy9OZCeQ00bcFJuuX2A1GrWEPIzrz0jfMygR8cyaTuRcJzBDQPIMPHF/Dl3lyRo=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_010832_618250_D5D84A99 
X-CRM114-Status: UNSURE (   8.66  )
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
 .../boot/dts/rockchip/rk3588-evb2-v10.dts     | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts
index 91fe810d38d8..0e5af61f66fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb2-v10.dts
@@ -25,6 +25,18 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	dp-con {
+		compatible = "dp-connector";
+		label = "DP OUT";
+		type = "full size";
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
@@ -916,6 +946,8 @@ &usb_host1_xhci {
 };
 
 &vop {
+	assigned-clocks = <&cru DCLK_VOP2_SRC>;
+	assigned-clock-parents = <&cru PLL_V0PLL>;
 	status = "okay";
 };
 
@@ -929,3 +961,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
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
