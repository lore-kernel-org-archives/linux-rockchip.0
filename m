Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6D83C0218B
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 06:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O03n51cnJtX7nZzQQZ4elO2bjvj+1fguORhFBej7eOk=; b=2GT9Qtc2vIYNpP
	0DqTVzS4/mKsphj+H1sfuYOo6GhcOoRHRQ7tsOA9VzMm8CHJRdQySRkmUucBwrLHuVzYmtVzj9DNc
	5nER+ZN+PjFdwLCDqAzxZ6cDIIpoLRPR0RNBpC1EhFY1jQzTJsNr/bMduGFzLRPewseRF1Ymf6s+a
	rT0bACrEEEel76UpnwQaQmQc+YrB5V7O4UdbKpXLS1NfZRY5LpWZ+Us50J51BqQSu0+e4mQh1o+sY
	+EfUvMCPVB77iCBkfF1nSJhVbL4KST1bWqWSUB7y2o2xgdNFxRjHAOhLqMYjlCtvN974r+osTKK0a
	XTBQiDnz93nWwFIwQpBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDVL-0000000E2Wf-3zNW;
	Fri, 24 Jan 2025 06:49:23 +0000
Received: from mail-m21473.qiye.163.com ([117.135.214.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbDSd-0000000E1hS-0HOi;
	Fri, 24 Jan 2025 06:46:36 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 994456f8;
	Fri, 24 Jan 2025 14:46:27 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 3/3] arm64: dts: rockchip: Increase VOP clk rate on RK3328
Date: Fri, 24 Jan 2025 14:46:19 +0800
Message-Id: <20250124064619.13893-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250124064619.13893-1-zhangqing@rock-chips.com>
References: <20250124064619.13893-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ09IS1YfS0JLGU8dTxpOSk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94970fde9c03a3kunm994456f8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pyo6IRw5LTIPFiFOPxxWDCgV
	ETMKCzhVSlVKTEhMTEtKSkNDTU5MVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpJSEo3Bg++
DKIM-Signature: a=rsa-sha256;
	b=JbnSTf5H++R3ygTmt8uxKJZpDxA73t5Yl3gKbPKTFIWzz1nFlGS09SHoasnzwdMJ9nu/cki5lj9HVDSCa3i15QUne8nf7pywl9cqbWyq1hbMuEOA9/LtG3ftIcLO65qQuvxdgmg0cfG4LcG1S2RZsZ2yGYMSvCuyHaqjXtSIMfM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=hADYeSxIaFDxjGdz/t1RluyGz1DyiwM+3SkN2FMlmu8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_224635_372482_072FC053 
X-CRM114-Status: UNSURE (   7.16  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The VOP on RK3328 needs to run at a higher rate in order to produce
a proper 3840x2160 signal.
Change to use 300MHz for VIO clk and 400MHz for VOP clk.

Fixes: 4b6764f200f2 ("Revert "arm64: dts: rockchip: Increase VOP clk
rate on RK3328"")

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index f3ef8cbfbdae..0c905f411e92 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -842,7 +842,8 @@
 			<&cru ACLK_BUS_PRE>, <&cru HCLK_BUS_PRE>,
 			<&cru PCLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
 			<&cru HCLK_PERI>, <&cru PCLK_PERI>,
-			<&cru SCLK_RTC32K>;
+			<&cru SCLK_RTC32K>, <&cru ACLK_VIO_PRE>,
+			<&cru ACLK_VOP_PRE>;
 		assigned-clock-parents =
 			<&cru HDMIPHY>, <&cru PLL_APLL>,
 			<&cru PLL_GPLL>, <&xin24m>,
@@ -863,7 +864,8 @@
 			<150000000>, <75000000>,
 			<75000000>, <150000000>,
 			<75000000>, <75000000>,
-			<32768>;
+			<32768>, <300000000>,
+			<400000000>;
 	};
 
 	usb2phy_grf: syscon@ff450000 {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
