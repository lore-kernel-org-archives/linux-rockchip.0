Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6F6BE7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 03:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUMDMW9AMh5Hm4rySBj8LakxI+1hhFpO66tu2Nebx3g=; b=Pw0F+nsHh/NNLq
	9BxDYEvo9LsmwmjXGriyyhIIYSwPOCeA6e1TXg53GdEp1g0DyARmbPBeyHFRR3dd2b4J+ayJRERA3
	MvB7u1Jz0C94tTzS4y+lkUyPJpsGGpGLtQEc39q6RIdHLQssdLj4XLsWdbCmlMeLPOpUEefQstFvG
	M7Er9NaLWLc5AIT/tCiIDlBdjbJvJP/6GGY7PDsTxX5RxHEY47T4KPoQ2YzTpOhEIZw72CGhRFodq
	e3ECmzC7Ijr5XMyJ3TJxDUFG6co9ugJmkb8moKTnzNZvWl2jLoZq2Tx4/LYCeDbUgTkEfyhoLsgtE
	7xHkkYiwON3hZbSA3W9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1fE-00000008usL-2ltm;
	Mon, 16 Dec 2024 03:20:56 +0000
Received: from mail-m12738.qiye.163.com ([115.236.127.38])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1Xe-00000008tG3-29ia;
	Mon, 16 Dec 2024 03:13:07 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5cf79922;
	Mon, 16 Dec 2024 11:13:01 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 07/11] dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588 HDMI TX Controller
Date: Mon, 16 Dec 2024 11:12:21 +0800
Message-Id: <20241216031225.3746-8-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241216031225.3746-1-damon.ding@rock-chips.com>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJNSlYYHh1KGklIQh5MGBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93cd7475e203a3kunm5cf79922
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBg6GDo4CjIXHCE5Ik4SQhFL
	Fk4KFBRVSlVKTEhPSEpDTENITE1JVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSEtPNwY+
DKIM-Signature: a=rsa-sha256;
	b=Cq1r8ZLlMoDk9yOD28skrxJIOCirKlq6q7gRSAQ1+pdKJsMSwr8WYX6cAHng4bHriJ8EFo5NOZ/XShFu45EeUFplmsLj+qaK7fKF+cJ24b8H6wnARE/sJQcn7D1wZAG1vh7PRhJOGExyoizK0ZLyUnroHkRM3d7EyLqJSzw2jx0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=DsE1WkVNoF+Jwn/u5/eTYNhUxfmsWFSRl9E2p5GwmYk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_191306_756143_FEF0A58B 
X-CRM114-Status: UNSURE (   8.39  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The hdptxphy is a combo transmit-PHY for HDMI2.1 TMDS Link, FRL Link, DP
and eDP Link. Therefore, it is better to name it hdptxphy0 other than
hdptxphy_hdmi0, which will be referenced by both hdmi0 and edp0 nodes.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index d8e761865f27..7a1ae31cc535 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -156,7 +156,7 @@ examples:
                      <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH 0>,
                      <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH 0>;
         interrupt-names = "avp", "cec", "earc", "main", "hpd";
-        phys = <&hdptxphy_hdmi0>;
+        phys = <&hdptxphy0>;
         power-domains = <&power RK3588_PD_VO1>;
         resets = <&cru SRST_HDMITX0_REF>, <&cru SRST_HDMIHDP0>;
         reset-names = "ref", "hdp";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
