Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18E7CC28B20
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Apr 2025 12:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+Al8bz0J91EPxmtJ6No8wzDbKZVG7VDlxunQus2+aw=; b=Pnfo59Wy1zZK8z
	34vM3qSdMlnvaHz64kqZloWpc1eEFoilcKCRzyH2mNskqfEzgrtRWkW6BOzqmjU7GK5AZBLfCCXXd
	dmK4y6qFlc8i5wV4mVI8o3woXRzIwoWu9E1BRIiPp/9wkq++VcJGMGThXxDniVZn2pt1/iTtBolIg
	w7u7UCYUZhSBwsuHrxYXwMpbCIeK2lLVgzEQvaQR2UhU5au5o8WhYnqAzV6ySPhX/R8OUKfwxO0p2
	0v664D4ZBa7wK5Zg0nlZZ/NS1BxKBxgjSWfc7r1SwbLxjEQY207khG29CpbuplKidXVRtiVbJxuF3
	PD+/XHNooAGjfdM6giNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzxLO-000000066Fq-3ZE7;
	Wed, 02 Apr 2025 12:37:22 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzxGZ-000000065KA-1Nn7;
	Wed, 02 Apr 2025 12:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=SNu0F
	4yGXjEea7fLM5tg1tfl9TwC9mxjxgn2oB/nJL4=; b=BcEW+rvwQsMha7wu8x4wx
	zuHulSHPsqMBiF00ST0U4AZam9wNdb3QtjgiauVhfLPSYZeJEg8UuLoNMIE23VaV
	tP7lxr48GfjB/G66vGuRwUHO3BQCZ1mXi67Ex1fnKr1W070ttmoQoEviR5CuTRWo
	KaTi2V2O2SL9l75o5J9CM0=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgDnd405Lu1nJwOJBA--.36321S3;
	Wed, 02 Apr 2025 20:31:58 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 1/7] dt-bindings: display: rockchip,inno-hdmi: Fix Document of RK3036 compatible
Date: Wed,  2 Apr 2025 20:31:35 +0800
Message-ID: <20250402123150.238234-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250402123150.238234-1-andyshrk@163.com>
References: <20250402123150.238234-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PygvCgDnd405Lu1nJwOJBA--.36321S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7tw45GrW5ur4xJFyrWF45Wrg_yoW8Ar4Dpa
	93C3WkXr1xur1UX34Dtr18CrWkta4kAa1YkFy2q3W8Gr1j9a1DKa1agr4DZay3ArsrAa9F
	vFsFgry8A34SvrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j8pnPUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkA0jXmftKOaFiAAAsp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_053223_723603_96435F7A 
X-CRM114-Status: UNSURE (   8.15  )
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

The RK3036 HDMI DDC bus requires it's PHY's reference clock to be enabled
first before normal DDC communication can be carried out.

Therefore, both RK3036 and RK3128 HDMI require two identical clocks.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

---

(no changes since v1)

 .../bindings/display/rockchip/rockchip,inno-hdmi.yaml | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
index 5b87b0f1963e1..9d1e7f894ea54 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -23,13 +23,11 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 1
     items:
       - description: The HDMI controller main clock
       - description: The HDMI PHY reference clock
 
   clock-names:
-    minItems: 1
     items:
       - const: pclk
       - const: ref
@@ -87,11 +85,6 @@ allOf:
             const: rockchip,rk3128-inno-hdmi
 
     then:
-      properties:
-        clocks:
-          minItems: 2
-        clock-names:
-          minItems: 2
       required:
         - power-domains
 
@@ -106,8 +99,8 @@ examples:
       compatible = "rockchip,rk3036-inno-hdmi";
       reg = <0x20034000 0x4000>;
       interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
-      clocks = <&cru  PCLK_HDMI>;
-      clock-names = "pclk";
+      clocks = <&cru PCLK_HDMI>, <&cru SCLK_LCDC>;
+      clock-names = "pclk", "ref";
       pinctrl-names = "default";
       pinctrl-0 = <&hdmi_ctl>;
       #sound-dai-cells = <0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
