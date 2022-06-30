Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B95E8C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1h4kGQEj+ko78BwAY3SWoTJ/tJmQbJfHJE9f3MdSqQ=; b=mKjUOiSWElyeD5
	rI0hI4fUiWdK4ic1OBPpm+Bm8x4H5IwoLui9QY0kgdRedrPWkC+Nt/menjrOjICGhaeFT5tBzBDl9
	aQ1w5hhMJyio6gHjUjmjHzJOhzGx49Axnr8lA32VjnafbxhiWueFPACHXVRpoeK+aW2MTVhEYJ2B6
	/6VsOmsnap0zd+YO2ZnuOpdIRjpM/okmuawguBcqwgwTV9Th9WxZo02FUVHxEM2IqbdF9pbKRa3jI
	A202hg3S1DhTkoULdeg4vL2q8RfxMQRSh7zc+3ydioHPiHGTKoD327mDR4tB+HAKIfsYn0odb2Bzw
	q6SzqRkEVfRElCLZo6Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73H1-0020p9-5A; Thu, 30 Jun 2022 23:08:35 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gb-0020V4-No
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:22 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BED202A4E;
	Fri,  1 Jul 2022 01:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630488;
	bh=jX2xREptjTcdw3Dt0HLdq+66A0eTeJEwSsBRZlLZKZg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EvZC8Tay6ZZf3hId1Peivl/WpYQTPS4d9QT7MRg6/icHhbW10EV+CpIekr63gLCrh
	 QoJ2BhBaE/1MKPMZWFz5L/NQdU3Rs9NDfYePknZ9Y2xZ5zMHNQ99j2ktcXg+saxpnX
	 JLAIE1sosJJ3XhzRmScxbMeE+Wj5L3i6ouCSqYSw=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 47/55] dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
Date: Fri,  1 Jul 2022 02:07:05 +0300
Message-Id: <20220630230713.10580-48-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160809_955980_B3A7CB89 
X-CRM114-Status: UNSURE (   8.63  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

The i.MX8MP ISP is compatbile with the rkisp1 driver. Add it to the list
of compatible strings. While at it, expand on the description of the
clocks to make it clear which clock in the i.MX8MP ISP they map to,
based on the names from the datasheet (which are confusing).

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index b3661d7d4357..95cf945f7ac5 100644
--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -16,6 +16,7 @@ description: |
 properties:
   compatible:
     enum:
+      - fsl,imx8mp-isp
       - rockchip,px30-cif-isp
       - rockchip,rk3399-cif-isp
 
@@ -36,9 +37,9 @@ properties:
     minItems: 3
     items:
       # isp0 and isp1
-      - description: ISP clock
-      - description: ISP AXI clock
-      - description: ISP AHB clock
+      - description: ISP clock (for imx8mp, clk)
+      - description: ISP AXI clock (for imx8mp, m_hclk)
+      - description: ISP AHB clock (for imx8mp, hclk)
       # only for isp1
       - description: ISP Pixel clock
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
