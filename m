Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F062DE77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2vslgJfbMRMUp5MmIOrFyK+86+5n7tIvXYDaLDfQ0c=; b=KaWTZHfsNPthTj
	cpTDAbkxPSu9nrSCo6qD4vSABSqEdq0lMKZ+UUfWncCPTERo8n/p6i26byu6GpaaBIa4T/Sna4kII
	t7L4I5UhqMRC6alE53sM8l5FonlULb0hSnTLFz3/oboZyddrwGXeExvatHTthAGo+jOMggGnsMa+F
	sHyyqVJUfAV9oQdns35qL7+7lHNuTYQvp1R+nj4UuHxK8b2lQM3nrYmxBJLY6lT+9HrGnRqsmkuSN
	eDFJJh0hqgRxtHGkzn2FpWtlDvml6q0aIQA7hdlSLst09rfT7cSsjoxnk86W+F1itQRjwbBzrnIib
	Lm61AVoRlf6R1ReR2PxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayR-00000004jj3-0DJC;
	Fri, 20 Dec 2024 11:15:15 +0000
Received: from mail-m127172.xmail.ntesmail.com ([115.236.127.172])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaps-00000004fIJ-16b8
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:25 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 65729212;
	Fri, 20 Dec 2024 19:06:20 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 27/38] dt-bindings: gpu: Add rockchip,rk3562-mali compatible
Date: Fri, 20 Dec 2024 19:05:47 +0800
Message-Id: <20241220110558.3511994-18-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx0YQlZCQxpDHU9DS05NQxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf3a4003afkunm65729212
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBA6Dhw4KzITCAgCNko0SAhK
	HlEwCRxVSlVKTEhPTUJJTENKSUJMVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0hINwY+
DKIM-Signature: a=rsa-sha256;
	b=hh4zEQXO8o7SrUIu9HNV4HZUMgC+JKxQQ7hAma5G3tFX4Ls/YZkmiuYJY7WvZ+j+5Uh4ITIbhv8ra65uvAvKaQylnZ/hVLymVwtWQHyGb7uBXXuoTKBFSkBhn/eeJ4AFva6Nsqa3fSSH8h03QaOQzr6KhN6iYrYBtchNF3o9ITE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=T8COvhL+BDdgw7vYemx51PLipvcbT8krugpPgMSZJjA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030624_501726_6E36E677 
X-CRM114-Status: UNSURE (   6.18  )
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

rk3562 has 1 ARM Mali-G52 GPU,.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 735c7f06c24e..b0d4806614aa 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -25,6 +25,7 @@ properties:
               - renesas,r9a07g044-mali
               - renesas,r9a07g054-mali
               - rockchip,px30-mali
+              - rockchip,rk3562-mali
               - rockchip,rk3568-mali
               - rockchip,rk3576-mali
           - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
@@ -60,7 +61,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
 
   clock-names: true
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
