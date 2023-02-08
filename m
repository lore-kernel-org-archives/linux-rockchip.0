Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA35CC636CC
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 09:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0hGMyDL8oWckJFs/24L9m0gzcm/k5BR+7klZS0yAMiA=; b=TU71y2cZTrYBX2
	b9WUx24jKLQwZlya59/ldZHcXB0/5x6LAzUjn5uzuaj2GLY7nzfb4CQ6WfNC/HEDGo8w1NgR2mwy4
	odq0BHDTTDMQiUbfGI5o271gdzsC2Uu7RmPur/EBfMLoiCRFJhRtynHvoDrW1gYPNVvZPNmu7d6mr
	mztE5vDfBjIpxKLZxgMRqYoN2zxnuTUpplv8JiEmWcM2HZqtCivVCROYKOcQx8rpz1//qb9H1udnB
	vVmCtGZDorB8VFr+UcEQ4tUcwd2tfQoCx67FaGLzbh5t8gGNK7/93Ckduk6WYnb6Y07LmTf/xbpR7
	k3LW4CZawE9Vyv/AyaoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgaa-00Elq2-FH; Wed, 08 Feb 2023 09:18:04 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgX8-00Ek5m-Gv; Wed, 08 Feb 2023 09:14:32 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 1FAD59008AA;
	Wed,  8 Feb 2023 17:14:12 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sjoerd.simons@collabora.co.uk,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] ARM: dts: rockchip: fix a typo error for rk3288 spdif node
Date: Wed,  8 Feb 2023 17:14:11 +0800
Message-Id: <20230208091411.1603142-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTUweVkxKT0IZT0keSUsaH1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTI6ETo6PT0UFCgBPjQUARIR
	HhIwFBxVSlVKTUxOQ09MTU5ISk1KVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUpDSUI3Bg++
X-HM-Tid: 0a86304dd4052eafkusn1fad59008aa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_011430_728197_D42956B6 
X-CRM114-Status: UNSURE (   9.72  )
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

Fixes: 874e568e500a ("ARM: dts: rockchip: Add SPDIF transceiver for RK3288")

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Change-Id: I13940ae543ba6ca597663aa5f209b1f5b0090b19
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 487b0e03d4b4..648fa6223351 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -942,7 +942,7 @@ wdt: watchdog@ff800000 {
 		status = "disabled";
 	};
 
-	spdif: sound@ff88b0000 {
+	spdif: sound@ff8b0000 {
 		compatible = "rockchip,rk3288-spdif", "rockchip,rk3066-spdif";
 		reg = <0x0 0xff8b0000 0x0 0x10000>;
 		#sound-dai-cells = <0>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
