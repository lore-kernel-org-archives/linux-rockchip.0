Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 909B0CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 18:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ogn4Ows906Uo0x7/RuF05f9C+pKgMH4SvtPhe9N+WE4=; b=Nq61BgqgzY6MRl
	uQixEl/Jem5eSHlxFOFs2Srhs2rdTw3apXkunEHYBY/tWPJhXj/0QZOhcGs3sKJ3cYzD0vlZzTlTr
	12bJWcog3LsovVVgu5yJ3I6sOthecBLey1SotsPded2p2G0YvFea6TQ7kkEUQEnQoSfw7haU57OGC
	6Pa4yv5wkd36rqdaiYGOTcfNPPo+yEJYaAWFPNvg+2Mivho6GT20x1ogNJPUYH3M694eshZc2rZEZ
	sf/SSaKp6GqFdiDq07fFMiue3gLhBVA7FfqV3PrLqaN2xySulQLAhtieMqulsL1FiMuGXJnya9voo
	vBBnoClITSjLi4HLoKLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoQu2-0000000BGzj-23LR;
	Tue, 19 Aug 2025 18:17:46 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoNyk-0000000Ar7t-2nm1;
	Tue, 19 Aug 2025 15:10:27 +0000
Received: from localhost.localdomain (unknown [119.122.213.154])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1fe57aa44;
	Tue, 19 Aug 2025 23:10:23 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: tobetter@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Change ethernet TXD timing delay value
Date: Tue, 19 Aug 2025 23:10:19 +0800
Message-Id: <20250819151019.877709-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250819075522.2238643-1-tobetter@gmail.com>
References: <20250819075522.2238643-1-tobetter@gmail.com>
MIME-Version: 1.0
X-HM-Tid: 0a98c2e1a08103a2kunm6470503c4070c2
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSksaVh1MShoeSU8eTkgYTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVKTk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVU
	pCS0tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_081026_907287_48F07A5E 
X-CRM114-Status: UNSURE (   5.91  )
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

Hi,

> Very poor network performance is observed on the ODROID-M1 Board
> (REV 1.0 20220613) when running iperf3 (under 200Mbits/sec), and
> this problem can be resolved after changing the value of TXD
> timing to 0x35 from 0x4f.

Can you try changing phy-mode to "rgmii-id" ?

```
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -200,7 +200,7 @@ &gmac0 {
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy0>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	phy-supply = <&vcc3v3_sys>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
@@ -209,9 +209,6 @@ &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
 	status = "okay";
-
-	tx_delay = <0x4f>;
-	rx_delay = <0x2d>;
 };
 
 &gpu {
```

--
2.25.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
