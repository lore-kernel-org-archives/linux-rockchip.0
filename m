Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86444C36010
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 02:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Lxbk+HZahmrAUq2QJxvgAhFZXlW6kKXzxH/XmTlb/E=; b=D1fXtb/U/u2BjZ
	wg+vm4fmXvROO5E0D9C4v+EdmlAJjSAhFyXxMIJSuhAGgbn+/+UtJyvHmvQeXCMRF4dXTjTuUi0wF
	K13AIpU3Iv6cbtUeyYcaq79hcXwdnU9NX4AFbh1GID4k0Ozt8mOXTDT2rVbyIJKCeaNT2rFpjZcs4
	4F5AZb7/A2o/5C6E3gLz26YjZryEuiUMtSTG1VKbAo3R1/WPdrGKg9949D5d79PaJWkw4rajYG/Hk
	6YVIUmfYNhFUJ/NB48O03KG/NjiSl+htrvf4vlIhzH+dRGPCDj5Rxv9R9aK/aYueOXiNOABPXEusl
	luMKzSJzm1tWjU0ZbUAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1ykP-00000002Whi-35Tb;
	Tue, 08 Apr 2025 02:31:33 +0000
Received: from mail-m3286.qiye.163.com ([220.197.32.86])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1ykM-00000002WgF-3QLi
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Apr 2025 02:31:32 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 10ffa4d61;
	Tue, 8 Apr 2025 10:31:20 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Rename vcc3v3_pcie0 to vcc3v3_pcie1 for rk3576-evb1-v10
Date: Tue,  8 Apr 2025 10:31:15 +0800
Message-Id: <1744079475-211962-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpLGVYfT0oZTB9NTkhKHx1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96133ce71d09cckunm10ffa4d61
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nhg6GBw5HzIDTEMBQyxMOU0o
	PTIKCQhVSlVKTE9PS0xCT0NKTU9DVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpJTU83Bg++
DKIM-Signature: a=rsa-sha256;
	b=IJ/S2HHvGZKP1BjYxVvgn5nMII4ps47pjF4LaS5xD7nB+m1wgKfTiaKRLx/+yPW70I9pdCMtUnC5Y4+48+vEKNUY8jxd0NOs8mH9t3pX0PP+sVMogha7IlJz0mu+jPPoM8pYnzoHtLPxOChoI1/zuZQ7hE65LhRUneUibaBlnW0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gCtSicSZgeSysBZm1uaYwpPZagFKxkwDTECWnoliX5Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_193131_000513_C3EB3EA3 
X-CRM114-Status: UNSURE (   9.78  )
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

It's for pcie1, correct the name.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 08c1884..ac397ac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -128,7 +128,7 @@
 		vin-supply = <&vcc_3v3_s0>;
 	};
 
-	vcc3v3_pcie0: regulator-vcc3v3-pcie0 {
+	vcc3v3_pcie1: regulator-vcc3v3-pcie1 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie1";
 		regulator-min-microvolt = <3300000>;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
