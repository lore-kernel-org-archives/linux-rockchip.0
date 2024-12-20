Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 007D4E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xiW1FtEo5rjrw87Pz8XHJhhPYX3if0UDoFiy+MDc2A=; b=RoJmfEEgZ3ioRz
	mIQgWbU9p9PcLGmSn+M4iFNhExP2ueyu1BW0y/JL+251g8JjzaXNLBdkR3YtBnYj6FNwyNi33XuJ6
	Sb8rPy4P1gk8/xgTaDC1n69Nn2ABPD/4uTZk0kS7aEUag/PoNF61x0J1ollaTQIoKQbTJeWmq53L+
	vV12bjPvFdCscxrS23liZ/UMbAiY7ZWGlQ7fTHqnf8kHb00LXffVRqICFPvUHA8k22Yofk2ZcvVGx
	uk/aM1IJ17+QaSo6+LlptI87TZyFN6KKsJL3tNZnubzKTETEBYoDKL3BKa0fKv7Kzj1i185K9IliH
	hQM2C06UgVMwNOba6JLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayA-00000004jIl-2tEk;
	Fri, 20 Dec 2024 11:14:58 +0000
Received: from mail-m15591.qiye.163.com ([101.71.155.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapk-00000004fEv-0DGj
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:17 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 657291ef;
	Fri, 20 Dec 2024 19:06:13 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 18/38] dt-bindings: phy: rockchip: Add rk3562 naneng-combophy compatible
Date: Fri, 20 Dec 2024 19:05:38 +0800
Message-Id: <20241220110558.3511994-9-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhkaGFZNTB1DSE1KTEMeTE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf1e2c03afkunm657291ef
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCo6SBw5PDIODAhOTUo3SBcO
	SwxPCxRVSlVKTEhPTUJJTExPS0JKVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDSE03Bg++
DKIM-Signature: a=rsa-sha256;
	b=eYgZnT6D+LWznI/QFsTw8soiJMOksswkq7bC3z0MZw4A5Jd8uBjuB1JgvXxvSkwo57n3BIupFLpfrvgOOxIBgWwBqXN1kQ4ri1gX5ccaoK1YA8eIDWZpXD7Q3aAApUMvMULOMf0g39iOXVnRIOZqlIxFcF25c4EddMTdIP8yBPM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=dHzeIUe7fozDj8cUe5wnNwhlFJjGkU1QFipvtmXGK6U=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030616_267784_6EBAD58F 
X-CRM114-Status: UNSURE (   5.08  )
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

rk3562 use the same Naneng Combo Phy driver as rk3568.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 1b3de6678c08..888e6b2aac5a 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -12,6 +12,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3562-naneng-combphy
       - rockchip,rk3568-naneng-combphy
       - rockchip,rk3576-naneng-combphy
       - rockchip,rk3588-naneng-combphy
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
