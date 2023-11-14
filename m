Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68CECC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 11:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrsHrtUfoymSwht2lWOxPwwiOUmNW7vnXwJrx+Tyl/8=; b=wYKHf4GCaosnYF
	sQ+wVqEgIOrZHqZp9quEsW32n7UnO96Qtg8Dlka1P0vz33EUaFfHROeH3NxOu+3xljOSGEhSZVm+e
	sJNeqyEVTUxC0XmITPRK53dYWvuuCMQTYF6PW6USFPQ0By/B9fyYHXbqqSuIhOyR4zv8aIs+unQAh
	6Ee+/HlDWNUkmhKpFhOjZuSTmmDJFDlR8h4IcjNvf4Hdp9frb0rsepSBfO/Vf1Jc6bLc9hdHDq7TW
	K8N1jN6ytgMwramkjQOJ0upE22wSkdU7dhnkxu3uypcccrUvBmGhuR/XX9FcgZw76kwCBnrrnKqu3
	xQRbbze5UH9Km2/r78+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rbQ-00Fg83-0C;
	Tue, 14 Nov 2023 11:29:08 +0000
Received: from m12.mail.163.com ([220.181.12.197])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rbM-00Fg5b-1c
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 11:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=TcUYW
	rUE6dSsZ+mpwiaV36VQAkvGr8J4nvY6L0HP74E=; b=nFJQc2HNLEUHs4DJ8qhIp
	YB7aL0prjMVERdSj3ONfsll5YVS/e0mbPtYSytRckrRZCY0GJKHcvtrx0urY/hre
	Kml/u/h2aViWkqYLA37NGW+HDTiECFBJC9T6Iz6VVS++PMpE2OnLdfZVv27oxdQ4
	hM+GqwFo522OR730YzNahw=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wD3_ujqWVNlGxp1DA--.55932S2;
	Tue, 14 Nov 2023 19:28:47 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 08/11] dt-bindings: display: vop2: Add rk3588 support
Date: Tue, 14 Nov 2023 19:28:41 +0800
Message-Id: <20231114112841.1771312-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231114112534.1770731-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_ujqWVNlGxp1DA--.55932S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7WFyUGF4fXF13Zr48Zr1fJFb_yoW8uF43pa
	s5C34UJryfGr13Xw1ktwn5Cw43KFs7uw4UtrsrXrsrta4aqwsYqF4a9wn8WayUCFn7Za42
	9FWDua4fGF17ZF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jweOLUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAEoXlghlUyjWgACsw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_032904_886004_8FF19729 
X-CRM114-Status: UNSURE (   8.20  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The vop2 on rk3588 is similar to which on rk356x
but with 4 video outputs and need to reference
more grf modules.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../display/rockchip/rockchip-vop2.yaml       | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index b60b90472d42..c333c651da1a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3588-vop
 
   reg:
     items:
@@ -48,6 +49,8 @@ properties:
       - description: Pixel clock for video port 0.
       - description: Pixel clock for video port 1.
       - description: Pixel clock for video port 2.
+      - description: Pixel clock for video port 4.
+      - description: Peripheral clock for vop on rk3588.
 
   clock-names:
     items:
@@ -56,12 +59,29 @@ properties:
       - const: dclk_vp0
       - const: dclk_vp1
       - const: dclk_vp2
+      - const: dclk_vp3
+      - const: pclk_vop
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Phandle to GRF regs used for misc control
 
+  rockchip,vo-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VO GRF regs used for misc control, required for rk3588
+
+  rockchip,vop-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VOP GRF regs used for misc control, required for rk3588
+
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU regs used for misc control, required for rk3588
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -81,6 +101,11 @@ properties:
         description:
           Output endpoint of VP2
 
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of VP3
+
   iommus:
     maxItems: 1
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
