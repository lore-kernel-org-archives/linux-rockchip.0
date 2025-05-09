Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9E2EC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 11:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MDyLzd+XOhTdFZfUJUNT/OjjxsmitlHsZ4EkZ0s/Qs=; b=xGMwqYZFSBvFd6
	HByfUktdP5dv5pANad0CyBDb2lJjUvwI/v+J7hZfhaGKO8MRwVDK8LBImuwr2iFRMSisObxXUDJUU
	BzXNWMxRVy2Bh/B5ejHibUyFhm3mdA7vVrzfzLsISRu4pa1iNuTwHc4iuynzlZDy+phEIARr55h8U
	k5EmWiX829MKV5xAQYpuUWWt5gR7QfecMFW+u5rzCx4Fn5X5vn11oXrHGdttJUQURJhPFxwlgcJWv
	2xoHctRU2rt3iZ8cbkotkf0Hu5lMFhmPNb5Y6PDgYazz31CkPxl4cwO2R2VSQnNomRgFo5pLt2aXO
	sdnh55LBs/pIllfjpQnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDLqY-00000003QbW-2QTl;
	Fri, 09 May 2025 11:24:54 +0000
Received: from mail-m15580.qiye.163.com ([101.71.155.80])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDKsx-00000003G5Z-1FND;
	Fri, 09 May 2025 10:23:20 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1483147dd;
	Fri, 9 May 2025 18:23:15 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v7 2/5] dt-bindings: soc: rockchip: Add rk3562 syscon compatibles
Date: Fri,  9 May 2025 18:23:05 +0800
Message-Id: <20250509102308.761424-3-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250509102308.761424-1-kever.yang@rock-chips.com>
References: <20250509102308.761424-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkwaH1YdQk1PGU0fGRlNGUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
X-HM-Tid: 0a96b492175503afkunm1483147dd
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MVE6NCo4KzJDFQFDM09CMCpI
	HCFPCQxVSlVKTE9NTENNSkJNQ05MVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJTkJPNwY+
DKIM-Signature: a=rsa-sha256;
	b=WMF1dXzxwMdFQ3uiPlJZfUC9pW0fnyoUE6tcJfc8kVsaid0W/0HjZhNDTvNFlPSIM8qxbtWkMbht1N47ggdh9PQJTeP/VQzwJSiJMG9fPohG+E2eoQZaOQdQzRbhxJWPlDG0fQ4jKVX4zTo0tyJiKfEgU6E2smTHTis9N087OhQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=0wo+VkSsab6C/JpBBT+y/yBauqlRn7TCbXRtxMgbQnM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_032319_511571_972BC41D 
X-CRM114-Status: UNSURE (   6.14  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>, Frank Wang <frank.wang@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Detlev Casanova <detlev.casanova@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add all syscon compatibles for rk3562.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---

Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4:
- Collect ack tag

Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2f61c1b95fea..8cbf5b6772dd 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -18,6 +18,12 @@ properties:
               - rockchip,rk3528-ioc-grf
               - rockchip,rk3528-vo-grf
               - rockchip,rk3528-vpu-grf
+              - rockchip,rk3562-ioc-grf
+              - rockchip,rk3562-peri-grf
+              - rockchip,rk3562-pipephy-grf
+              - rockchip,rk3562-pmu-grf
+              - rockchip,rk3562-sys-grf
+              - rockchip,rk3562-usbphy-grf
               - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-pcie3-phy-grf
               - rockchip,rk3568-pipe-grf
@@ -82,6 +88,7 @@ properties:
               - rockchip,rk3368-pmugrf
               - rockchip,rk3399-grf
               - rockchip,rk3399-pmugrf
+              - rockchip,rk3562-pmu-grf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rk3576-ioc-grf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
