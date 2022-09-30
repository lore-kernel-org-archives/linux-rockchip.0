Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FE9C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 15:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hW1y3lnqsHvYtUAZSOGXCfEGeO3VnxfD+yxamlRjaw=; b=maSUfdY1a/f0/K
	WVbqlozwwqTPO2B/p/uvSlGcY5yrNgUYhSGFJofp51OYZW+wK+ULPct8v4MSBDrtb/OeQxENYRohi
	wQsJIvqx98nF+HKbxjaMBfOO7LKZnLiWvU6hrEkhNgJZF46jBr6SV4z2OIpQhm4qq5usuO6WKWm51
	LnY6Rdmn6QwF4DqqYY+P7Ni+MpN3bC3wegubR4uWNrDBH6CFBIh63ki3uM8XmuTI05Z7oP9NG8VL0
	Jd/ry5CP/x91sPFU1ZBTTFqjyRetAawTts6QKelH5zfoHOmy2rei2HKFHMb4jGIhT+xhq8BBDZ7Ex
	yJ5kzzrxHvi1JpEsg4mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeHu4-00ABO9-Qy; Fri, 30 Sep 2022 15:26:16 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeHtk-00ABGa-Fa; Fri, 30 Sep 2022 15:25:58 +0000
Received: from amadeus-VLT-WX0.lan (unknown [110.81.126.164])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 6618E800093;
	Fri, 30 Sep 2022 23:25:40 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: linux.amoon@gmail.com
Cc: heiko@sntech.de,
	robh+dt@kernel.org,
	michael.riesch@wolfvision.net,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 0/1] Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe controller on rock3a
Date: Fri, 30 Sep 2022 23:25:31 +0800
Message-Id: <20220930152531.5910-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CANAwSgSf=JZ_JiK1Gh5EYR30KQ5Yh-w3GsxzcFVweKHPi7KuLg@mail.gmail.com>
References: <CANAwSgSf=JZ_JiK1Gh5EYR30KQ5Yh-w3GsxzcFVweKHPi7KuLg@mail.gmail.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSh1DVkhPTk0fSE1MHx9IT1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUpKS1VDSlVKSU1VSk1PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OjY6Kio5MD0iUVZJKEk3Ojk4
	KBkwCStVSlVKTU1PTk5KTk9KS0pNVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	S1VDSlVKSU1VSk1PWVdZCAFZQUhMTU03Bg++
X-HM-Tid: 0a838f00d7a0b03akuuu6618e800093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_082556_752223_0DA7E131 
X-CRM114-Status: UNSURE (   7.29  )
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

Hi Anand,

> No, It's not working on my board.
> If you check the driver code it requires *data-line* and *num-lanes
> from the dts.

I have successfully tested NVME hard drives on my board. See
below for the patch, looking forward to your testing.

root@rock3a:~# lspci
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd \
             RK3568 Remote Signal Processor (rev 01)
0000:01:00.0 Network controller: MEDIATEK Corp. MT7921 \
             802.11ax PCI Express Wireless Network Adapter
0002:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd \
             RK3568 Remote Signal Processor (rev 01)
0002:01:00.0 Non-Volatile memory controller: Sandisk Corp \
             PC SN520 NVMe SSD (rev 01)

Patch:

--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -67,6 +67,37 @@ vcc12v_dcin: vcc12v-dcin-regulator {
 		regulator-boot-on;
 	};
 
+	pcie30_avdd0v9: pcie30-avdd0v9-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	/* pi6c pcie clock generator */
+	vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pi6c_03";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -546,6 +577,19 @@ &pcie2x1 {
 	status = "okay";
 };
 
+&pcie30phy {
+	phy-supply = <&vcc3v3_pi6c_03>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x2m1_pins>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	cam {
 		vcc_cam_en: vcc_cam_en {
-- 
2.25.1

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
