Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04BF8E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5DNtxqfumnVDQICt1p+Vx+soIcXsgp1r7iA6twSfYw=; b=NPy1uIr+k1Lmqj
	4hMZPb2xst1ii89CvpxHVYMupF7yvVBV2NRrDgQmDmQDPMuhYAgT63omQCBd2zKEfwB66CbplKHwU
	rf2AzrEqhyBgUvb8MJ6DyoWeSioGoTlA5l1flsE69AJ2jAKqhQGAUFxpvpBOskky86Wks26xi6O9V
	Byt2dqdLKTKTN/79REq+XBowQCssQXzotEuQps9y/mgMgNqRS6kLcVkEfVR9U9Q57Bid1XHBUsrCs
	hGXwRzGnD4WcpGMlef41jxwtrtIMdg7pfSJs0u9+C1CBWQvbVGlD9HUiP8mXH2tZJSjLSrokNJZlW
	J2e3XGNavRLI/IOkzRFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaxx-00000004iyG-176G;
	Fri, 20 Dec 2024 11:14:45 +0000
Received: from mail-m49203.qiye.163.com ([45.254.49.203])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOanl-00000004f5Q-0Xd4
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:04:14 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 657128ce;
	Fri, 20 Dec 2024 19:04:10 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 08/38] dt-bindings: rockchip-thermal: Support the RK3562 SoC compatible
Date: Fri, 20 Dec 2024 19:04:06 +0800
Message-Id: <20241220110407.3511882-4-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110407.3511882-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110407.3511882-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh1OGFYZTx9DGh1KHR1NSU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bd3e1203afkunm657128ce
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRw6Chw5ATIcEAg2NlYKSUlD
	PTgwCg9VSlVKTEhPTUJJTU5KSUlJVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDSk03Bg++
DKIM-Signature: a=rsa-sha256;
	b=e2QAx1M0GvnaCPhwlv3zzhvo7csXdyj9XfQ1ZasTiVOzCTHoGZTRF3piHWgRJ2KvP5KZVNiy4aLrvu5weQqXKzR4MbVeKFCmy005ZmBQSLmPML0WNC0aRVY7gdc7e9mbLHfWgXBVw1Mgx69X59jnF5PhAdVpzD2CQc2hYkRKS4c=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GsM3e7XTMaEdnzl6LqqgFbWzKt5lpe2maRUf73VkOp4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030413_342190_97977598 
X-CRM114-Status: UNSURE (   5.32  )
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

Add a new compatible for tsadc on RK3562 SoCs.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index b717ea8261ca..f55f2045fc84 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3328-tsadc
       - rockchip,rk3368-tsadc
       - rockchip,rk3399-tsadc
+      - rockchip,rk3562-tsadc
       - rockchip,rk3568-tsadc
       - rockchip,rk3588-tsadc
       - rockchip,rv1108-tsadc
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
