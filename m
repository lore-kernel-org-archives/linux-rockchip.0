Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8187E7718A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g91cVQcnWIFGhFaQzpXegIMY5ZTHRSXrwOk+zItRiCg=; b=dDyjR2xgFya0ev
	d/SZmoJZkSa9H9ildQmFYiSd5Z/LtSCySzBisuDm3++3ur9DGHBH6NHEGpjY1k/Xamk4jCrHIHqrN
	Er8yhg8pmh/ipzQ8Hy+iL+KQc/8qaEi7GIEFzTQKg1TReRZqu0+uh27YpZV9fmtKIvfuw0PFogCPH
	YxemvepGsQ+5/TVmaJqwJImtXF2kIfO5Dnrocrz2BpnRi+G+2E8HyQlxg1iLI2FocLDU5+kCAQcea
	ABEVnpJoMPmKWT/OUwE+FZTQNx5SFtPpsL4N4c0KpH0fZdNECYYMFKg1ZCE2fpZDF0VhRp24una6b
	cbjN2OAtGo43wg5ybeeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayW-00000004jtD-3129;
	Fri, 20 Dec 2024 11:15:20 +0000
Received: from mail-m127101.qiye.163.com ([115.236.127.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapx-00000004fM7-1GuW
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:30 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 65729231;
	Fri, 20 Dec 2024 19:06:26 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 35/38] dt-bindings: arm: rockchip: Add rk3562 evb2 board
Date: Fri, 20 Dec 2024 19:05:55 +0800
Message-Id: <20241220110558.3511994-26-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU4eTlZOShodHR1JQkJNSE5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf526b03afkunm65729231
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MCI6Cyo5LjISIggdGEotSEwi
	PCIKCjBVSlVKTEhPTUJJTENMT0hPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCSkk3Bg++
DKIM-Signature: a=rsa-sha256;
	b=iIEm0yZjtf0weN/4FWQGzP2P1rnESUEVh7jEVyikMNvAJeR014O/hvjIXK8GlkOR1KPEVLT8RngDSZvMnQikzCXvwzzn6df8XjLFo/rN9V5hOkFuHWgRBFvFyiKuTbXQ+EkeIyEI47AllRI88vzTbI1teiBIOKJCgHtm++dOsvc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=2geeYs43f5AI3Co8ZB8ubni0R02NXk4nf75athebFU0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030629_498380_E132653C 
X-CRM114-Status: UNSURE (   5.60  )
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

Add device tree documentation for rk3562-evb2-v10.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b2681a45867b..e300a817226a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1011,6 +1011,11 @@ properties:
           - const: rockchip,rk3566-box-demo
           - const: rockchip,rk3566
 
+      - description: Rockchip RK3562 Evaluation board 2
+        items:
+          - const: rockchip,rk3562-evb2-v10
+          - const: rockchip,rk3562
+
       - description: Rockchip RK3568 Evaluation board
         items:
           - const: rockchip,rk3568-evb1-v10
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
