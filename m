Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B301FC55179
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 10:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gg8t8ot/y2vIexK6nUsEy9lkRj1LM7mT/SfiwjwXFj0=; b=IkL4Ln7df8Oyo8
	BfL74XbStY/WDbZHfV3R3Ua8honFft/t4OAohkliW16preQLSl8DFi0tayReTwrTudqOtM+S5C79z
	ikEi/jX4n4Fis4k+dtxjy4mIcyv4YRpjQtRAojQsSGWWPylq1gFj/i4uRHOnqLTIfyFWHgMBZnPBN
	+x+OCmXhw6fQbEPdKuSsy2o80kKV107DWp+qiTktF7WgmeXpxNV/Qw9skS6fCmbiyYOXEB99/ot8D
	trtcYGEDxe6k/9ezJjRd/zOODFX9C/r57KDyuJO7Tr5txQkzbEjqU96QBy0ObR6fU5OJuuZ5/qXVb
	7kuOB1L70RCh0rX4S5oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqqCS-0000000GtMU-0UiJ;
	Mon, 03 Aug 2026 10:47:16 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqqCP-0000000GtLy-3O17;
	Mon, 03 Aug 2026 10:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Qr
	r2Zysc4pyzy3uLfxsjmMcf5E8OW7lBqpqv/XW/WdU=; b=cmfErLPRdE84v5o8wg
	1soPBZduhOYc94YCh+4YG2EXZ6/UQsdYIKYfAO8HK4FWEL6iCNFUB57hIL6hBd4e
	PkLyV/wx0n9hpaPVEfDw1BIPkt5uLG3I3M6YefsIfJqsiiGKuBQ9ZktWzMikRqKF
	aCjCRmRvWce+AjUH9Mx8SVYjw=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wCnVF6WcXBqw5sANQ--.10564S2;
	Mon, 03 Aug 2026 18:46:48 +0800 (CST)
From: Zhyi <zyheihei_123@163.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Zhyi <zyheihei_123@163.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [RFC PATCH] arm64: dts: rockchip: H28K: release RTL8211F reset before MDIO probing
Date: Mon,  3 Aug 2026 18:46:46 +0800
Message-ID: <20260803104646.26836-1-zyheihei_123@163.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCnVF6WcXBqw5sANQ--.10564S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFy5WF1kuryxXr1fGF4xXrb_yoW8Aw4Dpr
	s3uFWfJr4kKFWFg3yDJw15Zr4fJwsaqrWrAr1IgFyIyFsrZw1Iyr1jgFnxZrZ8Jr1rCayr
	ur13tFyDZFWqvaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0JUUhL8UUUUU=
X-Originating-IP: [240e:390:2ef3:c801:e498:7ace:78bd:b49f]
X-CM-SenderInfo: 521kvx5khlsiist6il2tof0z/xtbC2xg502pwcZg7NAAA3V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_034714_281976_441E118C 
X-CRM114-Status: UNSURE (   9.27  )
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

arm64: dts: rockchip: H28K: release RTL8211F reset before MDIO probing

The RTL8211F on the HINLINK H28K (RK3528) is held in reset at power-on:
its reset line (gpio4 RK_PC2, pin 146) is left unconfigured and reads
low. The PHY node's reset-gpios are only acted upon after the PHY has
been found on MDIO (fwnode_mdiobus_register_phy() reads the PHY ID
before it requests and toggles the reset GPIO), so the first probe
deadlocks and eth0 never gets a link:

    mdio_bus stmmac-0: MDIO device at address 1 is missing.
    rk_gmac-dwmac ffbe0000.ethernet eth0: cannot attach to PHY (error: -ENODEV)

Release the reset from the MAC node via snps,reset-gpios so it is
deasserted before MDIO scanning, and drop the PHY-node reset-gpios (a
second consumer on the same GPIO is rejected with -EBUSY).

This is an RFC: snps,reset-gpios is deprecated in favour of the
ethernet-PHY reset bindings, so feedback on the preferred way to release
the reset early is welcome.

Fixes: 145d4af4b204 ("arm64: dts: rockchip: Add HINLINK H28K")
Signed-off-by: Zhyi <zyheihei_123@163.com>
---
diff --git a/arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts b/arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts
index 0ec50e9..9d7e33a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts
@@ -191,6 +191,8 @@
 		    <&rgmii_rx_bus2>,
 		    <&rgmii_rgmii_clk>,
 		    <&rgmii_rgmii_bus>;
+	snps,reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-delays-us = <0 20000 100000>;
 	status = "okay";
 };
 
@@ -205,9 +207,6 @@
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gmac1_rstn_l>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
-		reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
 	};
 };
 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
