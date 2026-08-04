Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98C5EC55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 14:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gkGROQGiSjkcz6T/3q4yrbyMSANsS3wrz9lOjAo+Ui8=; b=eP9CJInKYP8+yW
	806vZxUDte8CKNcaGgg95K8dUMYwd3ckyn0TypuAEnEatYCzV7kiPXHvahRN108zh/9QLGKeZpW32
	MAahBsEP6NVpyYukppGROjACo8VMTOzTJypo+kfpnydJABdY5MwjrRVDTOJwU3eOLmdud6PsgkpNL
	9ZPESFRFSgavw6K7trUzphF/taFoMMN50ftlVqZbySuWGJiWGixC5p7w6GYaE3nyQyqXnmYsQTgYu
	gdBbLi0ErBEDQZzd8Co4Zh3TObJ9FdOYgLdZHNx/aX3CjbJtMAO1seJb/L1bnDeuSzloST9zsxt7j
	4wrQ3Y/M+ED4mfZ0RmRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrGAW-000000025Kx-1FAv;
	Tue, 04 Aug 2026 14:31:00 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.44])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrGAT-000000025KI-1LrC;
	Tue, 04 Aug 2026 14:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1785853845; bh=xViXhWZ+qTfa1B4H+kg5+e7aP8kp2Ldm7P7h8I+biF8=;
	h=From:To:Cc:Subject:Date;
	b=VrnimCo6YwiQyrGFuQXu7pEy89J1JkoI8KYOJBfM8tBTn0lFIC5q5U3lr1aDvSp/g
	 wC+ANwubXroioCu+lyrA38k+ntmhxrDXOGOhwC96qjA6+pk0RAIgad9yqLGcSJrdQF
	 CJylOG3LWhVbWGE6BtLc3w0jw+1hERQgoyEwPEyM=
Received: from AERO17.taila7786d.ts.net ([2409:8a7c:21c:8010:c675:1308:618e:14ff])
	by newxmesmtplogicsvrsza53-0.qq.com (NewEsmtp) with SMTP
	id 7AAA3821; Tue, 04 Aug 2026 22:30:42 +0800
X-QQ-mid: xmsmtpt1785853842t8u3j3llg
Message-ID: <tencent_FF56D057857A89EBFD82C037D80A53598C06@qq.com>
X-QQ-XMAILINFO: MeukCuWaRbQlLeJwg7OhmwL7fTRqWcC9wqWoo7vIJ/2Q4FIk4Y9qOnWkwJb2ST
	 lQLIFBlMoDU7kNHH0Q3iUkjcn8/os3rea1tHLGzuJlbw0HJYcuIXve1wbXNjdgCYDLF0OS8XTkiH
	 0fbi5Yzxzt13vQXH63tZIxqM76jh8zOAYiaMURMdzIUr5ful6ASzbAGOjMgjquDLvyo1zuDvzt8P
	 ZRI43He+Vg4chWhlXa1KYlQD8A1LCw2KWm3L1ncYgPFFcYlQuHYqNchusoC0YnoCKo7rskfsPCpk
	 /l8XGDOwQms1SC5V9Sax1L2mTo47DhdMq/N8Km/f1VsHv2S8XzerbIYsaJQVc7RLkSZ6ZPb23qAL
	 QZoEKPj7M2Nffk7o5VSJDgUlzxqesHkEy8AOnke5kmnUiwIHZgXO18L2jhON3/2iGNy/2lUK9RLP
	 fsFi1iPxB45+wrhDnnojog0mktkHDiT4eyRoUUxQavLhMPRxyqZqqv3ipR4hY44ZI66ed63XqkQg
	 QYOo/M1II53cHFhrCvzlwzIzmHhzAUwc+ApSnatPPY/6FrCx1ZU4YuDIDRy4dTW5uJzcqDlX6GAW
	 z6BgyGzDeGEEqKaldz/KEv7ka/K94yT6tZXCv24XSuUmWiTFFW+O8GVqFn9BO4eA9/hzOY6WQY9Q
	 PzDpJn57FggLj69LD4Zaqca/HwGxnaZ+5rq6Pkp3+VGS33WuUfdJq+utKJc+lSipILrZgvNBQClX
	 jq2QJqtvAR81LClCCF41WkVFWt+FYhPKiwxDJ2psLXfadN5Ol+Ei2Bi6VqGTEEm7dbLSNIoXunvb
	 D8JNCHiOG0XH5hW4uI6yXC6DeW2b7HeIoUfTOuvwUkZTb8MlbMc6yQwLg9Ai4v/rKJ3KUJ6ldL0G
	 ZgN+HM94sBG/AagVmrCqnx48FRjAzJmoi/sa88vYvBa1qT00D6yTntONOxcSEZiNYkpGSJTMHBUm
	 99ULFT8xfQjMJS9STEAlHWbvg8vYGXI2jyeGvOvEuvrmSnnAivSZTwNMFY4Kr9ui1FWqIFfggql1
	 2od0UkxW5RdbWH4FYfSLaYN+IkjGfnQewzgfJz4XvX7GXCXA8chJAzeU+mGDF2rxuMMC1fCg==
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
From: Pufan Jin <2254650260@qq.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable the NPU on LubanCat 4
Date: Tue,  4 Aug 2026 22:29:42 +0800
X-OQ-MSGID: <20260804142942.850982-1-2254650260@qq.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_073057_668493_6803D815 
X-CRM114-Status: GOOD (  12.33  )
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

The three RKNN cores and their IOMMUs are disabled by default in the SoC
dtsi, so the board has to describe the NPU supply before they can be
enabled.

This board feeds both the NPU logic and its SRAM from a single RK8602
output on i2c1. The vendor DTS makes that explicit by giving the same
regulator node two labels, vdd_npu_s0 and vdd_npu_mem_s0, and then
handing one to rknpu-supply and the other to mem-supply. There is no
separate memory rail to describe, so npu-supply and sram-supply both
point at vdd_npu_s0. The binding requires both properties.

Neither property is what actually enables the rail: the rocket driver
never requests a regulator, it only takes clocks, resets, register
ranges and a power domain. The rk3588 power domain driver marks
RK3588_PD_NPU as needing a regulator, so the rail has to be described on
pd_npu, the root of VD_NPU that the three per-core domains hang off.
This matches what rock-5b does.

Mainline has no NPU OPP table, so all three cores stay at the 200 MHz
the SoC dtsi assigns to the shared SCMI clock. Clocking them higher
needs an OPP table to move vdd_npu_s0 along with the frequency, which is
left for later work.

Tested on rev 20241026 hardware: all three cores probe, each reporting
NPU core version 1179210309 and landing in its own IOMMU group, the
rocket driver registers /dev/accel/accel0, vdd_npu_s0 comes up enabled
at 800 mV and dmesg is free of NPU errors.

Signed-off-by: Pufan Jin <2254650260@qq.com>
---
 .../boot/dts/rockchip/rk3588s-lubancat-4.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts b/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
index a0fc128ce6e1..c623a4c46d22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
@@ -365,6 +365,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	hym8563 {
 		hym8563_int: hym8563-int {
@@ -407,6 +411,36 @@ &pwm0 {
 	status = "okay";
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
