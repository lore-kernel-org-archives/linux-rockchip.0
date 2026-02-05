Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72DC6ECD9A6
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 21:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaQBRuicd1IHO9Z8LL+Q5d2j+bYjxK0Vn6XbnTUA1mo=; b=mw4RIN8FfOOnwn
	rTQGne7AQrJyflLTxR2Wc6dhre0kiHWnQWL4qqrHLms74Jsmt2WFYypsAPazFis0XKnCeo44w1UA1
	Qlkxa81XgvFgNWnTynFhm0oh+lWCVSY+U9xC2tnRi3ktF17whsG9+xhV65EJIJe3K6rLyrkVwNPgw
	i5YqLfAlqTKsfMyfiw8jbyq+/EDGn+8din4k81dYnUdGPSxQB2xJKuLUHbgWw3Ba1ckZ6JqtlYioW
	tEQ5g6ImuSbox32Z5zkQHNaX3AHKI/PynD/b8YCvxSJNXp2qh5c6kct0sX8Nx3/J7VVFp9nHDj8Sf
	vbz13Cx2T5iMjHKmW9FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo6ph-0000000AVpa-3iKV;
	Thu, 05 Feb 2026 21:24:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo6pe-0000000AVnn-3C6N;
	Thu, 05 Feb 2026 21:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=GlCPNfoDyu0ihNPCW4h5bfptKMnnPn3SUFCxT54wycY=; b=iI0zpFv96qHRyPz9kl8S/DgiRF
	StCE1Aq3CN2+f4C3ETzvtyEevNNeslzwwJ4SVqOf8e3PkdEwkArObejTMgMpzFqOyMdNIrNDRjwMQ
	u77HMWw1u0W341c70qdwuCvWblOmZ8FjZaq4lUODafIWgzeAKkyDoz5IBdwTswHH5QIMCncBf3Dla
	S3huvc0KxRpm4maBQDNHpvILmy+qqpBhyH8/Wf9mN7Du0weNaEjquQ6X6frFHwnDyBOfTur1KsN2E
	m7JIetxsBqCQj4zULjGVCSMlRCuB3paBTva+FmmdtetHHnrQrPtFUvXBriONJY2rzMLslyWT5E9g0
	AS2UPUBg==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6pc-007GK0-AQ; Thu, 05 Feb 2026 22:24:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kever.yang@rock-chips.com,
	finley.xiao@rock-chips.com,
	w@1wt.eu,
	jonas@kwiboo.se
Subject: [PATCH 1/3] arm64: dts: rockchip: Enable OTP controller for RK3562
Date: Thu,  5 Feb 2026 22:23:45 +0100
Message-ID: <20260205212347.490636-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260205212347.490636-1-heiko@sntech.de>
References: <20260205212347.490636-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_132410_796490_D991FF53 
X-CRM114-Status: GOOD (  10.67  )
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

Enable the One Time Programmable Controller (OTPC) in RK3562 and add
an initial nvmem fixed layout.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3562.dtsi | 46 ++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3562.dtsi b/arch/arm64/boot/dts/rockchip/rk3562.dtsi
index f84676b47b27..07626dba21bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3562.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3562.dtsi
@@ -1093,6 +1093,52 @@ sdmmc1: mmc@ff890000 {
 			status = "disabled";
 		};
 
+		otp: otp@ff930000 {
+			compatible = "rockchip,rk3562-otp";
+			reg = <0x0 0xff930000 0x0 0x4000>;
+			clocks = <&cru CLK_USER_OTPC_NS>, <&cru PCLK_OTPC_NS>,
+				 <&cru PCLK_OTPPHY>, <&cru CLK_SBPI_OTPC_NS>;
+			clock-names = "otp", "apb_pclk", "phy", "sbpi";
+			resets = <&cru SRST_USER_OTPC_NS>, <&cru SRST_P_OTPC_NS>,
+				 <&cru SRST_P_OTPPHY>, <&cru SRST_SBPI_OTPC_NS>;
+			reset-names = "otp", "apb", "phy", "sbpi";
+
+			nvmem-layout {
+				compatible = "fixed-layout";
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				cpu_code: cpu-code@2 {
+					reg = <0x02 0x2>;
+				};
+
+				otp_cpu_version: cpu-version@8 {
+					reg = <0x08 0x1>;
+					bits = <3 3>;
+				};
+
+				otp_id: id@a {
+					reg = <0x0a 0x10>;
+				};
+
+				cpu_leakage: cpu-leakage@1a {
+					reg = <0x1a 0x1>;
+				};
+
+				log_leakage: log-leakage@1b {
+					reg = <0x1b 0x1>;
+				};
+
+				npu_leakage: npu-leakage@1c {
+					reg = <0x1c 0x1>;
+				};
+
+				gpu_leakage: gpu-leakage@1d {
+					reg = <0x1d 0x1>;
+				};
+			};
+		};
+
 		dmac: dma-controller@ff990000 {
 			compatible = "arm,pl330", "arm,primecell";
 			reg = <0x0 0xff990000 0x0 0x4000>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
