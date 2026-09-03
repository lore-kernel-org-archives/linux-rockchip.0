Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F29C624DE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3PYuKZ5n1rcjqWC0F9//alg2ObN48npCWX3Y7CHuNY=; b=GI6I6AEmqRSlNf
	np5gJBYtlogiDJupe/fq0IVVckbdc3L0lzu+jEQOZ0G8gLLLGxuGCnQ7JCwkwcNRgHrBnR8Ume3yK
	lCncA9fAjh40/RY+Cj+vkyM7jWsi5NnQaLZeLDPV1c/lZ4Y+cCmYiX4Wa5dluBp7suHour90JnJF3
	l5qJBtAyXoPGHma+wb4mkyJxpxcZhaRtLGYdzB6tkyaJZDx8Kjw2UqNFLR4tRdRP3eU4aMeIonkSR
	kBU8txzIhbabiv1uALhDZ8X++UHEqOPamjq1IKMEjpXVxBWqVUqGjvELmIxd+QhGmJoPv19/ZTE6d
	Axp+DvK2wQcZUQowFnkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EuU-00000000dJt-1sAE;
	Thu, 03 Sep 2026 21:23:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EuR-00000000dDP-1MI0;
	Thu, 03 Sep 2026 21:23:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D2E4D447CD;
	Thu,  3 Sep 2026 21:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6285C2BCB8;
	Thu,  3 Sep 2026 21:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788470626;
	bh=e8RxcI546sOw6dKd9jhge2VIPPNAJRF1IbocAwcj5gI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=o89RKJr2KFnppN2qIUIwqx2KwVUPu4mHeiWwmCzdDlbRqlGel8FInNDwDTlk0EewB
	 yPzd3SQ12gfgeYE6yRxoekQTh/HGxP8kkYwGv0E0WSM0k8YqoUOmjVdozE7meNQomC
	 vWiXPxivjJkoW+k/iaaXUVMUyr+iAaTUaawG08fT/4Lf5sgiguEfkgQnaqjr+fYZRZ
	 lBYlvdEHM5I1vxEquujWkg/JdN3gg8MC4EbI/6mX+irkBXkYWl7C8uZT6KCy0bC+4g
	 Q5j2XcmsFnMKnfUt5HYmmiDeZxVTNpol2SrUOjJzD+Xy2eSiRXK5PXW5n+nvu8UfAV
	 B6t1/GwKNC18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DA4C79F81;
	Thu,  3 Sep 2026 21:23:46 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Thu, 03 Sep 2026 23:23:22 +0200
Subject: [PATCH v6 10/12] arm64: dts: rockchip: rk3588s-nanopi-r6: add
 comment about gmac phy-mode
MIME-Version: 1.0
Message-Id: <20260903-nanopi-m6-v6-10-37416bbd6862@gmail.com>
References: <20260903-nanopi-m6-v6-0-37416bbd6862@gmail.com>
In-Reply-To: <20260903-nanopi-m6-v6-0-37416bbd6862@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, diederik@cknow-tech.com, 
 jonas@kwiboo.se, Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788470612; l=906;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=W9OP4Riybt39A0bIhFgCbk7q5TKSgnKTP3QXL026djI=;
 b=X45i6lJzWBlp05s9gXNgNlJHSk81RhKn4xfFxbtHowlF0C+EJYmAjTu1xmXHl8Z4gueHvOV1R
 KQE5Kx651A5Arhzsguy3h3Y+76G0f5ZpC3KxgFNPY5eKfTqeG1k/v4e
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

Add comment to explain rgmii-rxid phy-mode usage. Note that the actual
delay in ns is not known. The tx_delay value of 0x42 comes from vendor
DT.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 5a42e7dadc92..94f218a48078 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -199,7 +199,7 @@ &cpu_l3 {
 &gmac1 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii-rxid"; /* Vendor provided tx delay value below */
 	phy-supply = <&vcc_3v3_s3>;
 	pinctrl-0 = <&gmac1_miim
 		     &gmac1_tx_bus2

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
