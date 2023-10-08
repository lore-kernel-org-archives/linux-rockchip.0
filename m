Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C89BEE95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDn+pwNrOb7u91j7J8HxyaQsocFHFEAWip5yz9v0sD8=; b=gqxeGPwcc6iN+5
	etppkAiBAjEFSwweWTp79DgGv2dVUp5VBo+Q+c8DoODnr6ZGiTxqD7IPQvhLyn+6OTthpL4gHKwKD
	izPZ68UlErR7Q1ujXD8tUOPPOm8dMK5c2mKuxHxXcAeE3ChEdbFr/l0+kGBCWvv4XOZlJR52/86mz
	3XG5GoLilWhnS1FVauZDT/V/3dOiyT1rXnbY6f34Trceu7ghzhVdci2n9LsywSKS34Y1+T+9tGh+h
	ZrEjh9C3KG2n4/VBANSrln78wnxdgR0+auxgF6Ex8sORlhIy2qSaPBRhL7ow85coPQbg8EYW21RbP
	4JVqdOsqhkYpvjkckVxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpVgc-008zJP-07;
	Sun, 08 Oct 2023 15:27:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpVgW-008zIG-2k;
	Sun, 08 Oct 2023 15:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696778828; bh=r8N+wfxnCeE/Jl/nIUcgHOkS6aF17ptQCuQGzv4X2jk=;
	h=From:To:Cc:Subject:Date:References:From;
	b=yhvqiwEomuo53yXJrjDoaOTXxSis5fL8DkHMfWI9HrmrHQKX/RlPHuBQc6qnErKIZ
	 kvDBi5hM77Pcu/69STbZC17sm7tV/BHjudAvaBSkThBaDzXAML0xupHJzi2mP1aVm9
	 cNj+5piG6F8W4D0BBDwp7bxG7o3wXJw1ErUnZ0vU=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Pine64 QuarzPro64
Date: Sun,  8 Oct 2023 17:26:56 +0200
Message-ID: <20231008152703.1196370-2-megi@xff.cz>
In-Reply-To: <20231008152703.1196370-1-megi@xff.cz>
References: <20231008152703.1196370-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_082713_665837_441B40D7 
X-CRM114-Status: UNSURE (   7.57  )
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

From: Ondrej Jirman <megi@xff.cz>

Add devicetree binding documentation for Pine64 QuartzPro64 SBC.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..0bd51ba0d6a8 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -660,6 +660,11 @@ properties:
               - pine64,quartz64-b
           - const: rockchip,rk3566
 
+      - description: Pine64 QuartzPro64
+        items:
+          - const: pine64,quartzpro64
+          - const: rockchip,rk3588
+
       - description: Pine64 SoQuartz SoM
         items:
           - enum:
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
