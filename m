Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18617C6FA82
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vvTd1jpfE6aCPFfqlP37w5+eENC8G2E945sjCknGSxA=; b=xXp0hYMgM32wAe
	/jRDqxM7G1bWxFc/Ue2MMxIQYX/RzdPiMJRccxvcEBDLWcdxqyDwmL47JUh3/otTk4XNnJ2Q5uLjj
	ov4m2eIivf1sH5swJt/je0Tj7jT53Ik3dVic2A6qW7lx339m2YS5CIH8OzPzkwoFxLq6JY/vZor88
	ZH77TJbPEFp5R2mRbU4hSDax1yEuRhyFuqMZBANu9YXvGijxBwXrLaix4e7v4PT3iUKQyOcaJIm+g
	b7J2G/uZTl1LxNF1N1xdJ3ao59yxmxkmJnxueKD1zC/KglnkkebYL0IlDskOxo4O1zYHwQbseaAUL
	/wJaL4ngXv0TdLn8cCOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsxn-006I4R-4r; Mon, 26 Sep 2022 18:36:19 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsxb-006I2a-8k; Mon, 26 Sep 2022 18:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:From:Reply-To:Subject:Content-ID:
	Content-Description:In-Reply-To:References:X-Debbugs-Cc;
	bh=GkVeS3Zk1J0hHqvSqxxRfJt58YzkCgCZ4A3BhN6JrU4=; b=uyfrzhLkkQ/vfdv0wE0XhNCvP2
	9ee4002Jzqg2sW4OYSOMGtXOacGC5RsjewYs4RlmMwE+oKIyPIdglqeoNbkhopIQKWSlBUGzmhio0
	hycAkmDKufj9WrAATBpx96XZL3sZu2a1vOSJ486zdjpNVD0S/QPbtSC6KJxbVeGUlNts0+odqKxBR
	4BPG0ju3y5m8fphfDws69lXRjui65I40AShZKvDaTVTqtjgy13ZcRUCv544ThkhHdCA1A8XX2y0+5
	CbkhQLMxvBfFUa10Lrpv0BnY7Y8CMDkjbeSTOnBEm2OsbIvt8SC6GZw5/dhSCgwHnrDoN6ZfhUXow
	OXHIQyIA==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsxH-00B9N6-0B; Mon, 26 Sep 2022 20:35:47 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsxG-007wYd-1Y;
	Mon, 26 Sep 2022 20:35:46 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] arm64: dts: rockchip: Add missing rockchip,pipe-grf to rk3568 PCIe v3 PHY
Date: Mon, 26 Sep 2022 20:35:32 +0200
Message-Id: <20220926183533.1893371-1-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113607_342587_F83725BF 
X-CRM114-Status: GOOD (  10.05  )
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

This commit fixes the error message

  rockchip-snps-pcie3-phy fe8c0000.phy: failed to find rockchip,pipe_grf regmap

during boot by providing the missing rockchip,pipe-grf property.

Fixes: faedfa5b40f0 ("arm64: dts: rockchip: Add PCIe v3 nodes to rk3568")
Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index ba67b58f05b7..8818b283ba11 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -56,6 +56,7 @@ pcie30phy: phy@fe8c0000 {
 		clock-names = "refclk_m", "refclk_n", "pclk";
 		resets = <&cru SRST_PCIE30PHY>;
 		reset-names = "phy";
+		rockchip,pipe-grf = <&pipegrf>;
 		rockchip,phy-grf = <&pcie30_phy_grf>;
 		status = "disabled";
 	};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
