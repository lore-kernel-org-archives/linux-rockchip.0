Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA388E77197
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jan 2025 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=92Jx4dIPlZDXDEWjG2D1WCbEaAXbbVz+HuykCV1PKpo=; b=Do0vOrrQ0KGo0q
	wrKsGYGzAuyJvS2MGNbUAdN717XWg80hV1yE4Z3AvuuSZ0vq/yjYIBGKBRnItPe9c6ObPEpIHilqu
	WNA62KNxQ4P9xtQ4jADa/urhRJ4eT2j54zfY2TqARdIlRgTbAP8TCWgSgyLVlMW02ee/x9asaKdeZ
	5KPx1dIaQM9DknKHhMvi3LEYeigenC7jdc7Wwbyhlp2+9BfKCZfx1/5bx+Ozr4fslui5zql+n2gLw
	lPZskWOHGJyisvbD11npGkrL79Hxk4cwjJDu6cAhd+gOq5pgtZB57iyPANp1h/Ba1TI35LvFDRIMz
	dZhN3BySSpM5fFFOrL+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBoV-00000005Uu4-2Xi3;
	Tue, 07 Jan 2025 15:48:15 +0000
Received: from mail-m15599.qiye.163.com ([101.71.155.99])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBoN-00000005Urt-1W7H;
	Tue, 07 Jan 2025 15:48:14 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 801e0ada;
	Tue, 7 Jan 2025 23:47:57 +0800 (GMT+08:00)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	jon.lin@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: spi: rockchip-sfc: Add rockchip,fspi compatible
Date: Tue,  7 Jan 2025 23:47:54 +0800
Message-Id: <20250107154755.2037197-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhkeS1YeHUNOQh1OS09CQ0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94417385e609d9kunm801e0ada
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PlE6Myo*TjIXAxEqKSoxKAEN
	Ni1PCzBVSlVKTEhNSU1PQ0xDTk9NVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0lKNwY+
DKIM-Signature: a=rsa-sha256;
	b=PEpMNyvR8BcHN0tcoj6vbenk8oCRdNnkKnCclgmfwjTRBjJJVpoLi0E7QgE45Bd2cNuoVBqof9+9djBscSSb3HReo6rs1SI3Ai7K0thSCuNxxjtcnORuTGG3yb/5wpFQReO8TROfUg0EdrVXKomYLGvE0VRTS+UuA67yDWcIKt8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8ZaCjqw3pN3r+klL+dtGLBICAVtHTeQRB+45CR/nm1c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_074807_938866_F18540A7 
X-CRM114-Status: UNSURE (   8.66  )
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

FSPI is an SFC upgrade IP that adds functions such as XIP.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 Documentation/devicetree/bindings/spi/rockchip-sfc.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
index ac1503de0478..4d64155d03f8 100644
--- a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
+++ b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
@@ -15,11 +15,15 @@ allOf:
 
 properties:
   compatible:
-    const: rockchip,sfc
+    enum:
+      - rockchip,fspi
+      - rockchip,sfc
+
     description:
       The rockchip sfc controller is a standalone IP with version register,
       and the driver can handle all the feature difference inside the IP
       depending on the version register.
+      The rockchip flexible spi controller is the next generation IP of sfc.
 
   reg:
     maxItems: 1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
