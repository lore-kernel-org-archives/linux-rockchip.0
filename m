Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FD34C79F85
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvolVq6rOtkrHNAFEt00FlwLoWcInflNEgV0jbmGcvU=; b=L5xfbs93Wx8ptX
	qtsE7lAzUyG1I89s/9fz6u4PrM9pEb3VrTnay0EoVvANDwxaMn5aecU6GENS71fRVl3F61RI1uXBw
	9+MvyX34oRs5llqPVstBws5PYdKTeysr/j4rvrthGEopZ01FD9CfRdh/5QMyc0q2zOpkV+F9N+EhU
	awYyIZpvF2qowbk9SZ5j3xBdRaq5nt6P20bNn85EXORRFZZwI7cXtAwzNEOyX5HIEmGBvjMQWbHVU
	IOj7NRdbsqSTv88XgOKqUdb2qTHTtyZMvM5yOspG+TQD4z9veb4HZn4meNHjUuTGeV0wdloRP7Gve
	ah6842MVBxhGh10CLGkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EuU-00000000dLE-46kW;
	Thu, 03 Sep 2026 21:23:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EuR-00000000dDC-18D4;
	Thu, 03 Sep 2026 21:23:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B29F5447C6;
	Thu,  3 Sep 2026 21:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95F41C2BCF5;
	Thu,  3 Sep 2026 21:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788470626;
	bh=YS6d1wOk1uNnWdkK9m1ywZhRYLXLB7Jc+RlOQ6jQP7k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=dOFtq085hd4ythazqk3O4PihV8yCEqe/SBMFhpdid1j4mjHubTZZv3UftZohBTqeI
	 J+m4nb6f/pKY648RObyMmyGUBDovkoKpaHOk2PJKcxaiLqwjSVggpwTtqQx6W2zHnu
	 3Mf0OVXHVBubjNBeavAnCDqg2zGfouub4A1HRSeelilSGa3Qu+hA+eDJ/TIHvWarke
	 QtmaeGdYAUAD47zYoPFM5QJOMpnUgtcs/J4hNkcTk7ZqomRY2XFvs9aT1ANgGvNcIX
	 xoc8ObemFr+Y7tWqBPMgTL6rLZfXxRgRmuFxCAnh6OD8I1t0zZfXvJSEJFDcYLxriW
	 cqIm38pZpPm6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 833A1C79F80;
	Thu,  3 Sep 2026 21:23:46 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Thu, 03 Sep 2026 23:23:20 +0200
Subject: [PATCH v6 08/12] arm64: dts: rockchip: rk3588s-nanopi-r6: add
 gmac1 phy-supply
MIME-Version: 1.0
Message-Id: <20260903-nanopi-m6-v6-8-37416bbd6862@gmail.com>
References: <20260903-nanopi-m6-v6-0-37416bbd6862@gmail.com>
In-Reply-To: <20260903-nanopi-m6-v6-0-37416bbd6862@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, diederik@cknow-tech.com, 
 jonas@kwiboo.se, Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788470611; l=746;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=7mBOG4nn7SH8FJfxK3Rb2LwUqsvEOBR3h73EDOVqpVs=;
 b=g+xv6apdWQEXmAO/lg+rJrIm/bH3QnoLVplsIxd4F+pyG3ZiEqh2pLmKtkvZVmtuwqiFPblOj
 uD1rV9O/z9nCFMwumOHeSBIx4xfBs2kLu4o9ZtKv6qCz0RQRUG3V6Dq
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

The RTL8211F Ethernet phy is powered from the VCC_3V3_S3 rail.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 50af092f9cfa..206cc88fdaa1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -210,6 +210,7 @@ &gmac1 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii-rxid";
+	phy-supply = <&vcc_3v3_s3>;
 	pinctrl-0 = <&gmac1_miim
 		     &gmac1_tx_bus2
 		     &gmac1_rx_bus2

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
