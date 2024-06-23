Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FD1C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 08:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9SbxaxjK1BNEqHaNOj13hSD2usw8rCuPE9jLp8Xl8Ug=; b=DzsG8Livn4U3oP
	yU3azwS//9hk5X2qUXaR/vI6e5fSkR5xR10t7tJ5lrrE9Haxh6V9WVixKCkO4jVEHxIL7mq/eMFpj
	bDpkECqN42wq1lDilRvFMRRBgU0cuzdBlVQkKWQ495FLgxWWEp+FHX3t+a9Qd+Jd8HvXbJ3HpKvjx
	WQLDKjDrw4qQGt3yboUUeGNjDsu2JT432WjsVUl7BU8XnkRb1aB4uv0ggGucjBulQPlKah8OjT2P+
	vEWCVm+05XB5/rHfkJlyxCSXfkQy7j185XSLzrJs7VdaBWfnTPRk8LYg+JCuzcEeIRpSPOZNowXi0
	pLY6pqeMwKYgm6F4aZfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLIgD-0000000Dcre-2Mra;
	Sun, 23 Jun 2024 08:34:33 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLIg8-0000000DcqD-2IBV;
	Sun, 23 Jun 2024 08:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Pl0j2
	zhZ4/LwcqBnPNf0V3io50xd+ejg631E0UIKQMo=; b=LeyFSiA+Bijt+UJpCmBdh
	5w99jB+5mL6X0pbXyyn4wIs2pZ88kCPaANwJZXQifO60045hWV3B+jv0vdSaD9ne
	h4e0cZeQKC9IdFxFHjQpBCai3MgrNAw6k3XcOuD/JyJ6LSMCmRS23k82miPFspQA
	JwJHrE0N6HHUSpVHa2ybAA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-3 (Coremail) with SMTP id _____wD3X+oG3ndm3x2cAA--.62882S2;
	Sun, 23 Jun 2024 16:34:18 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi 4B
Date: Sun, 23 Jun 2024 16:34:13 +0800
Message-Id: <20240623083413.2051412-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3X+oG3ndm3x2cAA--.62882S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ary8JFy3GFyfXw4kCrWxWFg_yoW8GFy5pa
	15u39xJr109r4FqayqqanxXrsrCrsI9F48Cw17Gasayr47X34vqr17XryfCryjgF13Zan5
	ur15Jr1DK3WDZaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziVHqxUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMw0HXmXAmBQZZAAAsz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_013429_089590_9ADA0613 
X-CRM114-Status: GOOD (  11.74  )
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

 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
index 20a0a60acd16..091dee37d068 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
@@ -302,7 +302,7 @@ &i2c7 {
 
 	es8316: audio-codec@11 {
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
