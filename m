Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FE0CC3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 14:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Rq/+bEskDf4qxBgxAh17opaksMUFgXy3zWB+LIbdak=; b=eHXl531sCb5WFu
	SCHIDty6J0wb4z2UyitfqV+aIqqfgc45aCJFOws3S3sNR8CqgVPGcXcBOnReRZ4iMGF0oc1/8lzCU
	j3Cnf9/V0+hFxouPwyivODJUmhc2n0/+y67TMaOPZGcruVbC1m1gugxuNr1fgjtECZO8gpvCzYQ2D
	aSGYgjv2X7IOCbpiIaiqWMdTExZpYddm+ptaPLxwKCtY6SisuIr1iwq8p2+b8SgiaGOYDZ8BunTQZ
	1V5+pweepMkLQIJyjISW28n8zgJWeRrIBSQ9TDRUzOlZdf+fbBHWcX3Di/oekUVDiDJ2Xw1++CZ/t
	47OLUCzqBo/eHDi8YmuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD2JK-00000000wKd-11K7;
	Thu, 08 May 2025 14:33:18 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD1Y2-00000000nR6-2wIS;
	Thu, 08 May 2025 13:44:27 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 906A525C52;
	Thu,  8 May 2025 15:44:23 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMjFUx90zjFi; Thu,  8 May 2025 15:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746711853; bh=vbK2zlww38wck9vMVg+gzO7EFS+YMqh3QyFokhlVYPk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=XEDdEjmv+TFPMoZbsGPFMLUFPr3hv5wGVOsjsjMQTUgGxk5FaNTe2Fu7My9Rh88k+
	 RUOVKcWm+67PqrZHn76PVs0tzCwx9modPkz7qznkABZI2UjyoTkLYv8+qNnlThjjRE
	 TM9D6UHOlJWvMNqWKZcEuRSF+zDxe4QQBnex7qBLr1DAnXVIvgHnNZx8V8MnpDKQof
	 pfh9oBipnyxIogtXdyz7n0zFBmvGx2fosjVZYIx2SZCLnuFh4fgduyk0XePlz8zzBD
	 1Kd2jgxBeK6pvJDaLiGlJsv/9YFOApuTDUddmPC+McZFaGAANgnlz6G17CmGhL//51
	 lHIcDT+Qrieyg==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: phy: rockchip: naneng-combphy: Add RK3528 variant
Date: Thu,  8 May 2025 13:43:30 +0000
Message-ID: <20250508134332.14668-4-ziyao@disroot.org>
In-Reply-To: <20250508134332.14668-2-ziyao@disroot.org>
References: <20250508134332.14668-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_064426_867701_D34A972F 
X-CRM114-Status: UNSURE (   7.88  )
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

Rockchip RK3528 ships one naneng-combphy which operates in either PCIe
or USB 3 mode. Document its compatible string.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 888e6b2aac5a..bd064754e537 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -12,6 +12,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3528-naneng-combphy
       - rockchip,rk3562-naneng-combphy
       - rockchip,rk3568-naneng-combphy
       - rockchip,rk3576-naneng-combphy
@@ -102,7 +103,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3588-naneng-combphy
+            enum:
+             - rockchip,rk3528-naneng-combphy
+             - rockchip,rk3588-naneng-combphy
     then:
       properties:
         resets:
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
