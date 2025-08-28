Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45FF1C8303F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vl2emWV2EAfYtmlah4p8tc/m5NNNXyYviMHC9v6ikks=; b=v80gwua0wJi6zC
	6Vmj79TPZId1k+8qSuiYdfqzYdYxTaI9it/lGJ2SppjqYuCm7/KVLd+DCyBFKJR9O+UI56zAXhhC1
	zpxObxBpQxSoCJiINfZ1IaSbN8Y+C8cpi94f4kYQGSBk7lWdeTIrbTp0UQBc03xI7Gm3mbDzDDoo2
	y9t2BW0LkIQlyVJc49BV5pb3dVsCyH9XSasu5P7j+JvZ+8P7eCwC5MTbQsKHhqS4UUcpbKLn73Qm+
	NFqNb0mymW735uZNYPvGd/d72qGfToCMc4MPbzQ4nHJKo+eLbJ08fW+uSAxCT4syQx80X7gOTMeYa
	hSbnXNvKmDbVUIPc/s+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgO6-00000002T1x-16Yj;
	Thu, 28 Aug 2025 17:26:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urcPI-00000001gMS-0avs;
	Thu, 28 Aug 2025 13:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=3tyat0CIDgWc47dqO8BykJDn/dhLK7zoSe+DV7NUmbI=; b=x8quDUAVkQG9AXuFi+lkThBD2o
	pRdCDBPdbBqQkUG5cSwKvDbPpJKk2ymQkhfN7hxCoofs30dn6m9SiK1GwafLhmEinE+iRua6v3Hjx
	bXL3bLR4h8tsO37W2KIaCUE9qE1bAhC3kUXRbNDCvoUm7MJja+TbfOzVbE7948EJ5ZNn5HLUatkWO
	XqdNGnPdk08WoM9MH/mmdzD4YLS1qwJLLljZynmzdGg+pkxKKLORmDgQKxRQiQw5Hv5mzgAKw58uW
	gcEDdGliidHwXpSMx/FmsnEjYMSPSvI4cFLQJC4sZatINPdgye9D/PGo+l7yVnrNhhESQnIHcVZbf
	hog/Ye6Q==;
Received: from [185.205.242.134] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urcPF-0007wG-HJ; Thu, 28 Aug 2025 15:11:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] dt-bindings: soc: rockchip: add missing clock reference for rk3576-dcphy syscon
Date: Thu, 28 Aug 2025 15:11:07 +0200
Message-ID: <20250828131107.3531769-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_061112_205037_929AA81A 
X-CRM114-Status: GOOD (  10.32  )
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

The rk3576 mipi dcphy syscon controls a clock, so needs to allow the
clock property. Add the missing entry in the list for it.

Fixes: 0e3f3d7c7ae3 ("dt-bindings: soc: rockchip: add rk3576 mipi dcphy syscon")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202508271156.z3wDB6bX-lkp@intel.com/
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 6a94c271a6b1..1d0f35e26311 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -301,6 +301,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3576-dcphy-grf
               - rockchip,rk3576-vo1-grf
               - rockchip,rk3588-vo-grf
               - rockchip,rk3588-vo0-grf
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
