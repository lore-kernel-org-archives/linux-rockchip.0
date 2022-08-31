Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCBDEECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 18:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpzyykYkbVVX4m8Y0OY19mpYpSUNipApAR9qeM/tse4=; b=dQKqAhvXYp7wXs
	Xep8Gx+H6YWDNPeOmItj5jfS8qexNAnxS91RvPvjzXyl2o7X2GkdyUeakLYHL//UjDmKk1QDmu97B
	nyk/lMmHbW9wbzxO0pnjJDnqjsKy3hVj15BmrQxls/q005XT8w1oeKdadTHD/k8tMXPOMo3s0tBki
	cPevu/JIsTg6563irEv030F1NZcXnl2LYsxErgFkhgO7BodGCmg8BlICK0cP56Q20sAat1RTm5bHp
	d8874Ur/MLXb1vIsy31ZFTRwzE8rfaUbseOr3Cspg+a1A0cEmHv8muq9i9i/6fwzD9leOh5LQG16R
	8FXaXSQV4C7u6rvBMDjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSRQ-007ZCg-C1; Wed, 31 Aug 2022 18:27:56 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSQE-007Ybb-BW; Wed, 31 Aug 2022 18:26:44 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5CB426601DF1;
	Wed, 31 Aug 2022 19:26:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661970398;
	bh=fnsl14rfGYEmkIp2A1dCzXkTFoWLVwiIpOGwws0KkzI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=boeReBOn0Lr3fHRoOEHyNVTKt3eaDhdSwmtKxjEi1PMwPYkFGWjLK3A2ZbPThLDjC
	 W17U/5CUgXUh7EUS5X/abu7docCnqkTd2VyM/KNJ+ph4VM0ndISn5tchI9MjEIHybQ
	 vZDcbSfIwZTTSkhJg4xK437VVnGvdHGttdf7tyQGsRaSoYLxjcwsdCOW65NHenyJJJ
	 Pc0GcrEFBjKcdgtQXf3yn7xyNzKUAGUd/tWe6mh2Szkvw8t+veHK85ZZK56ijPXytk
	 bkVRffJmX157rLwAYUQQgAUVcR4GAWg1UakjSPm92CoAXBqypw2GNB+c/C6mkYrhHA
	 AP/3CNe7WbuIA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C5E274805C4; Wed, 31 Aug 2022 20:26:35 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register compatible
Date: Wed, 31 Aug 2022 20:26:27 +0200
Message-Id: <20220831182629.79255-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831182629.79255-1-sebastian.reichel@collabora.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_112642_555406_EF30BFF3 
X-CRM114-Status: UNSURE (   9.32  )
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

Document rk3588 compatible for QoS registers.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index c10f0b577268..5369a56b8be1 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rk3588-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
