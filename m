Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E84EFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 23:17:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FD1361156
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 23:17:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9FD1361156
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq4fSi8keqeqNlIbAA3Qe+D2IXIZUhlPhNzmT4kRD/Q=; b=kIWp4zOFTw7To3
	i/TpyM5zarRw8qgKbRhUJjhKi0LRhMllkPeAnrulOACEmloTkivT2kopM2klHLor+ZzBuHzSXoCNi
	VznOVY1PdbVKaQHqeMZBxHh4eBi3wUqhH+1L24YBuRPaU5uIYMZh8jwc37yCSfJ3/80C41+TU6/h7
	5TZuK0UnCw1zySO3X8r7D5bILF+Rse65Lkn9v6oP0lKSUshduYsu8k3uMtqGw/qkLUHItGkWfcm12
	QoGS2XurrBTkwhTORyqQCT6HaeD/5VHxN7zZacQ3S7uF+e44B+OxUSpuTojvTZTWtXDkfF9KHP3nA
	zhhOM/ibKhLIoXGqRfVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkaMw-003n3n-KH; Tue, 09 Nov 2021 23:17:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkZUb-003Npl-RA; Tue, 09 Nov 2021 22:21:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D4FC061A8F;
 Tue,  9 Nov 2021 22:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636496485;
 bh=BASkfKiN81Xw0MCkALqkrx6T1unH/EybtvaN0zJudAs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=q8ykJsyIC3g76lzMR5a0UaLqzLXdSbg2zugvUEVNMKBhv+mnlLm8Oz1G+wwXfpj36
 fqDwqjEftCJYtTO57QW0TpkbZ0TtrIPLxMJsc/EztbeU0CIq9FtXCxQl8zWWOPVAQl
 x9zjAQaI0kXTnJ8C0jPODI9niVV+Bjw0G+eo6SkqIUJ2H/8FKQOpZ4d9v26FM80e2B
 ZpdDoO2z85iPrOtbGOpuUUn6q51aYY6AqjrxsFjPzOQ/7Ty+Xk434MvY19pCAetecR
 tRBZoPofKJ6KJEi6I6kMlT5hQkUv723QdgrRBVNdS1Sb0Qi7C4aDXeGHnh63rPDb3G
 Zarkuv3w/t55Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Brian Norris <briannorris@chromium.org>, Leo Yan <leo.yan@linaro.org>,
 Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, robh+dt@kernel.org, pawel.moll@arm.com,
 mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org,
 catalin.marinas@arm.com, will.deacon@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 11/50] arm64: dts: rockchip: add Coresight debug
 range for RK3399
Date: Tue,  9 Nov 2021 17:20:24 -0500
Message-Id: <20211109222103.1234885-11-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211109222103.1234885-1-sashal@kernel.org>
References: <20211109222103.1234885-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_142125_951019_331BCD39 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Brian Norris <briannorris@chromium.org>

[ Upstream commit 75dccea503b8e176ad044175e891d7bb291b6ba0 ]

Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.

This IP block can be used for sampling the PC of any given CPU, which is
useful in certain panic scenarios where you can't get the CPU to stop
cleanly (e.g., hard lockup).

Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
Link: https://lore.kernel.org/r/20210908111337.v2.3.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 4b6065dbba55e..f145c1471dd45 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -393,6 +393,54 @@
 		status = "disabled";
 	};
 
+	debug@fe430000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe430000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l0>;
+	};
+
+	debug@fe432000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe432000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l1>;
+	};
+
+	debug@fe434000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe434000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l2>;
+	};
+
+	debug@fe436000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe436000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l3>;
+	};
+
+	debug@fe610000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe610000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b0>;
+	};
+
+	debug@fe710000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe710000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b1>;
+	};
+
 	usbdrd3_0: usb@fe800000 {
 		compatible = "rockchip,rk3399-dwc3";
 		#address-cells = <2>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
