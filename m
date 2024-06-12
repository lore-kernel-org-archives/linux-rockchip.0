Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C44E9C27C7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O36/eIdsEx+vfRamgdXf4Wy952MdN7UbAvKNNigeYi0=; b=VkBZ49/tn8WS88
	0osbBBKtuED+EfrXePaNgEuJZc6456p8m0y2sh3apWCcPuSEdjHuBAunHfK0xQiOrwZtZo9Tb8K6U
	yGMzdzQFmsfJrnYXoIgfIHxz1TNx0fZFcAyiwv7M+3044bo4NqTl946jQxmhfTsda4kZ8T1zDa5CF
	xuMAGWnqDVgBNEllk4cTgMdEaafK4K4Ty1xU/ev7oJjG2c0wGKcMRDcUVKkmt9FrbJoyvQijzD4/+
	F9Ga0CxdIhNlUEGFJL8tyeue9qGv6niPXLlmNnz5eiywWiyIgBmQ5xrCSypXsUFlobjjkhqq4kvIb
	6SbeUM/FqqOVqC+Iwi6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRpl-0000000DaPH-41DJ;
	Wed, 12 Jun 2024 17:32:29 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRph-0000000DaLe-1u45
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 17:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718213541;
	bh=VEM0T7Y24bsYJeE8dDbB44Yk+1yMMARS0IlFh2wyh1Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=R3rVf2+kdqNlzYfHpH2RTI8JqDoN2WFj5syMa9mpmmfCqCuqhgtRLmNVKdsspwBUu
	 UmJ/XQVmUmcmcGjVEN+dNTpJZKKJSCnq8omeNZqW3B/7ILsrEAZXYTUcWcxvPftGCN
	 WDL2EN4F+wu7myRdZKewoEck5+Z+rl4BGkQlS/e+F/RtN8WyGCh28HpGnhuKLYTU9w
	 kRKBRMHryUnDnuJiH51FKgXXKz5yM6+m/+1NkhnteJBO9N2BdFe8nit7cSzdFhVIge
	 HbwdYPDHOjoSfpZcdglomxNvmYYb8D4RA68MeQecWVzwh0uBzbR+FZ7HyHktwJoDx5
	 UCGb95SQ8XjEg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id AB3E9378219F;
	Wed, 12 Jun 2024 17:32:21 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5A8AC4800C7; Wed, 12 Jun 2024 19:32:21 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v5 1/5] media: dt-bindings: rk3568-vepu: Add RK3588 VEPU121
Date: Wed, 12 Jun 2024 19:15:41 +0200
Message-ID: <20240612173213.42827-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612173213.42827-1-sebastian.reichel@collabora.com>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_103225_710734_EC01BD45 
X-CRM114-Status: GOOD (  10.42  )
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

From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>

This encoder-only device is present four times on this SoC, and should
support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
encoding). No fallback compatible has been added, since the operating
systems might already support RK3568 VEPU and want to avoid registering
four of them separately considering they can be used as a cluster.

Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml      | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
index 9d90d8d0565a..8b9496e6a2bb 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
@@ -15,8 +15,9 @@ description:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3568-vepu
+    oneOf:
+      - const: rockchip,rk3568-vepu
+      - const: rockchip,rk3588-vepu121
 
   reg:
     maxItems: 1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
