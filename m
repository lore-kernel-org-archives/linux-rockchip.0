Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 127DECF9C68
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 22:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlDtdjSLAVVLjRM/abz78kQY4b5CkN1GhnPOwVekSPk=; b=dIp1yZo9jdtrYh
	lBolyfVl3JX7/thfy3da11OUCZIfu3mzPjsMEUKXRThV4Ziot7dqsG/aZuzjCdrzaB4Er04l8CRAW
	ePKY0XjIi+8VuIf+tzxg69m4nFo8Ex+iQBAWfgzzj6axgkQPYVRQ0HD0188H/jhttBygClDxX2gyO
	bpuou5FzazTu+n9z5vujjOy3gACQLQMANT6GFJPSk66FeBSXq9G8VQm9COb2CwXxyAw9xxhit4eZu
	ZbiWbXvjNrIgCi2DLKIAz63V5LW1GsMDZhpA1Bbolkv21htuY6GGYxuTTzZmDM3iu4rwbPUSNmrOx
	c2ku8ZMiWO/Nu5G+QzAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8Wn-0000000ELv7-0690;
	Sat, 21 Sep 2024 22:24:33 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8TR-0000000ELQT-2kjj
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Sep 2024 22:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1726957241; bh=83YVW5OYUCMyv+K4hF+rZLCGivVi+6ztPahHaGSzq38=;
 b=KAyi3mxcuaykdnHyb/UcXZwcOTQhrHtUXCiA3t2a6b+m6FCoVYmLQLRSj41xFiYCpsqFZjVCq
 Bs2HLZl1byfOqRM+DEMs8F+h7KFdrwTE6NIgtpjclzLVVJbSUnkGq+k6jnhar0kKaoyT6cQoBjS
 e1wk35rqqCadBcwggWnFBJP+vctxOBgaYII6l/NPPuRtqrI4fmWQ2CeiHEr7jfgJY/fLoBUHNtH
 gXdGgAcusIulsjpIqBsUWCdjdNhFYD6U7cNiWJ+PFUYwQ/0g+mnrohFiUhGHs9//iqn5q4/uTP4
 3D226GaR2jzNj7BBQB7tMliyh0glhJ4w3MPwE8g4dr0A==
From: Jonas Karlman <jonas@kwiboo.se>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/3] dt-bindings: display: rockchip-vop: Split rk3288-vop into big and lit
Date: Sat, 21 Sep 2024 22:20:01 +0000
Message-ID: <20240921222007.2301868-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240921222007.2301868-1-jonas@kwiboo.se>
References: <20240921222007.2301868-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ef46b718c10b4d4a165d05
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_152106_014901_2631BE87 
X-CRM114-Status: UNSURE (   7.34  )
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

The Rockchip RK3288 SoC contain two different Visual Output Processor
(VOP) blocks, VOP_BIG and VOP_LIT. The VOP blocks support different max
output resolution, 3840x2160 and 2560x1600.

Add compatible to differentiate between the two VOP blocks.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../display/rockchip/rockchip-vop.yaml        | 36 +++++++++++--------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index b339b7e708c6..ce4169b030af 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
@@ -17,21 +17,27 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - rockchip,px30-vop-big
-      - rockchip,px30-vop-lit
-      - rockchip,rk3036-vop
-      - rockchip,rk3066-vop
-      - rockchip,rk3126-vop
-      - rockchip,rk3188-vop
-      - rockchip,rk3228-vop
-      - rockchip,rk3288-vop
-      - rockchip,rk3328-vop
-      - rockchip,rk3366-vop
-      - rockchip,rk3368-vop
-      - rockchip,rk3399-vop-big
-      - rockchip,rk3399-vop-lit
-      - rockchip,rv1126-vop
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3288-vop-big
+              - rockchip,rk3288-vop-lit
+          - const: rockchip,rk3288-vop
+      - enum:
+          - rockchip,px30-vop-big
+          - rockchip,px30-vop-lit
+          - rockchip,rk3036-vop
+          - rockchip,rk3066-vop
+          - rockchip,rk3126-vop
+          - rockchip,rk3188-vop
+          - rockchip,rk3228-vop
+          - rockchip,rk3288-vop
+          - rockchip,rk3328-vop
+          - rockchip,rk3366-vop
+          - rockchip,rk3368-vop
+          - rockchip,rk3399-vop-big
+          - rockchip,rk3399-vop-lit
+          - rockchip,rv1126-vop
 
   reg:
     minItems: 1
-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
