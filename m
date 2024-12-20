Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FBECE7718A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlZFb/OMnN/2RIJMlhKeRYsW1Aciw/dzwMPZ0CJNcq8=; b=PffMP3Fn2PMNWp
	kAKPZLWfONr4lNJ88MITy5DDKh45wc7W5j47Uw6E6cWq1MgMBt9YsBiDpaMRHIqFNADJYaZgGsWPR
	XvkmxoTkqmF++UnZyVng5xwUeFQcZo4HP7gslHi06gli2DUB4Uv9PypYmhzPjTEbi2NVYEZBng8rm
	c0xd+fz8X/LJSjD9qpzq8qKYjxVvngBqZV2UAMFMtStPNHatqM7ybEaK5VmTkqwIADi2GYqbfl/2F
	BWMM9AyqqiuKu9Ex5j67trAx+iicc0ajPVNp+yRX8o0AvSgoOq4ej3JC4CM2G2MEJOBpH3oj/xVUw
	Q4JYYS5hFQ+Pq1O6M8LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayN-00000004jck-21nk;
	Fri, 20 Dec 2024 11:15:11 +0000
Received: from mail-m155110.qiye.163.com ([101.71.155.110])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapo-00000004fH0-1oCX
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:21 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 65729201;
	Fri, 20 Dec 2024 19:06:17 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 23/38] dt-bindings: mmc: Add support for rk3562 eMMC
Date: Fri, 20 Dec 2024 19:05:43 +0800
Message-Id: <20241220110558.3511994-14-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUMdQlZLHhhDGE0ZH09CSBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf2e3d03afkunm65729201
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NDY6Gjo4DzIVPggKCEoqSBUr
	M08aFBVVSlVKTEhPTUJJTExDSUpPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSU5LNwY+
DKIM-Signature: a=rsa-sha256;
	b=Ni8C1/I+l2aXXrl2PEtdZNV+yxqEa9aJzTPdmempQ5NNAuVzIEqdvyKR0hhKVKfs3KmkKfPwVqqj6dCvLTmoV76xSN9OmJf/jLxiNz3z6GbOBdQ8hPgopjpdoWd3mfqUJA/A/jPY3lWSNKHe/+J2ACQoTRiiTw0tulNQTVxQHUY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wMSsfqwa5bmn63UHEUOoBUvfn3odcZnTcOJ6npc9XFM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030620_671644_92B2F5BB 
X-CRM114-Status: UNSURE (   6.67  )
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

rk3562 is using the same controller as rk3588.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml      | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index c3d5e0230af1..33f4288ff879 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -14,16 +14,19 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: rockchip,rk3576-dwcmshc
+          - const: rockchip,rk3568-dwcmshc
           - const: rockchip,rk3588-dwcmshc
       - enum:
-          - rockchip,rk3568-dwcmshc
-          - rockchip,rk3588-dwcmshc
           - snps,dwcmshc-sdhci
           - sophgo,cv1800b-dwcmshc
           - sophgo,sg2002-dwcmshc
           - sophgo,sg2042-dwcmshc
           - thead,th1520-dwcmshc
+      - items:
+          - enum:
+              - rockchip,rk3562-dwcmshc
+              - rockchip,rk3576-dwcmshc
+          - const: rockchip,rk3588-dwcmshc
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
