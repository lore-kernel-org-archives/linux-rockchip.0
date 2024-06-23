Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0523AC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 11:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0OLcG5KQ3YqF94T305DAYdVQ91KsWDQmAqbs+/z4KG8=; b=BMrVrVyT+eMhDT
	oaSgPj0+QLzS6nK2JfMf1tDc8Jn6SkQeHgJZuH1l+AotXItlgE5m4g0BZzNfjqVmJi4w7UK7rknS8
	o1a/WNhxkUuztxe2Yr/3DYuINPN8n0eXQuiG0Mewjab+VNQ4zVyFVK2EawkdCaCppogt59n183wf7
	6vCfK3IgHqtZ5k0hlDxTdy+x2XnyEbCRoiAhUZiPDCDWO9AfB4sbpoOX2tDKEnhQuRVReozz6zI4M
	PO2CsUld8mHiu11OyqAo3ITVZcxtXLkCb1Al9GTf87QSgQzLavuHe8j3/u0jg45gc0cLY85xIajAt
	0Yrc2ecr+Xy2Cesol5cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLpa-0000000DvEO-2U87;
	Sun, 23 Jun 2024 11:56:26 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLpV-0000000DvD0-05zd;
	Sun, 23 Jun 2024 11:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Oigqm
	upiGhc0+bR7xGBbesPJ+Gm/pnkDnghE2ytQOPQ=; b=IRT8AZsNfjRu+rKE7ouv8
	bWZUx0gt6dqGnBSGFLcgAqcukSaQYiABKFPSbtB7X5IIpwIbOEaHr+N/jLQwhw1y
	+gNUfE9ONku8N6y9sqKiTEf1xpF41iIf38lxpVo3ryqtQtxHep+gzDx90NKwL42d
	sajtXw6UupC8s04qlGlmzw=
Received: from ProDesk.. (unknown [103.29.142.67])
	by gzga-smtp-mta-g2-0 (Coremail) with SMTP id _____wDnL_AxDXhmbhirAA--.3562S2;
	Sun, 23 Jun 2024 19:55:33 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	didi.debian@cknow.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi 4B
Date: Sun, 23 Jun 2024 19:55:26 +0800
Message-Id: <20240623115526.2154645-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDnL_AxDXhmbhirAA--.3562S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ary8JFy3GFyfXw4kCrWxWFg_yoW8XFW7pa
	15ua9xJr1I9rWFgayqqanrXrsrCFs3tF4xCw17Gasayr47X34vqr17Xry3CFyjgF13Za1r
	ur15Jr1DKa1DZaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pMD73UUUUUU=
X-Originating-IP: [103.29.142.67]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hsHXmWXyjN4YAAAsD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_045621_518888_1B94A2E8 
X-CRM114-Status: GOOD (  11.48  )
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

According to the hardware design, the i2c address of audio codec es8316
on Cool Pi 4B is 0x10.

This fix the read/write error like bellow:
es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x0000000c] -6
es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x00000003] -6
es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6

Fixes: 3f5d336d64d6 ("arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B")
Signed-off-by: Andy Yan <andyshrk@163.com>

---

Changes in v2:
- Also change the address after @ to 0x10

 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
index 20a0a60acd16..b0259b0d5021 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
@@ -300,9 +300,9 @@ &i2c7 {
 	pinctrl-0 = <&i2c7m0_xfer>;
 	status = "okay";
 
-	es8316: audio-codec@11 {
+	es8316: audio-codec@10 {
 		compatible = "everest,es8316";
-		reg = <0x11>;
+		reg = <0x10>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
