Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76BECE7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 08:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qftq24d10+FNOYhC65bcWOCjVIuSkKylxppd6kyWiMw=; b=anhFvg6wuZMHY6
	5NI3Jd2H0eimgK5sE2ebVbwCzHvM69mukv8Puub8k83tSubfSWz+C0BbpP8leXs0IAQQ49dG9LiQk
	DNSS7P7Ov9fNBXCnN/7m0Woo47f0MPhs1+VHxFOKJrLsN0WTpiUDX+LGKQgQBHjTYn12S1Ys15Ta/
	UAfODO3rxPzJ/H4HqVtyeBAFIncPqY+VVpT8EIISzVKy3nqFHwN1dszgujFSwHZ+h8zZyFILx2KcJ
	EiLsk0GqWIsa5SXRPKZRbCtOyaWahxI3Rd99dx0CoWrPuMwrAtdeOROJYhYYJSfAVmQmnZMc/6o4F
	2gH6Fk700WQtRL5NfLdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBaR-00000001DVZ-05G1;
	Thu, 19 Dec 2024 08:08:47 +0000
Received: from mail-m127213.xmail.ntesmail.com ([115.236.127.213])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBYD-00000001CxE-0Kvl;
	Thu, 19 Dec 2024 08:06:31 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd61e;
	Thu, 19 Dec 2024 16:06:24 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 02/15] dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
Date: Thu, 19 Dec 2024 16:05:51 +0800
Message-Id: <20241219080604.1423600-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241219080604.1423600-1-damon.ding@rock-chips.com>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0xMQ1ZCGUxNTU9PH0IaHklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf4232003a3kunm633dd61e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NS46Szo5ETISOhUtHz85DVYe
	CEtPCjlVSlVKTEhPTkJOTkNNT05LVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTU5DNwY+
DKIM-Signature: a=rsa-sha256;
	b=fUhbjdt8//e8BE7vEFmMqtcAM1+yPgj/aNMEIkwaA0aiUqJBKU0X2EXi3jMC8OyoePSe2uJzf2UgxmVhe/gxTOtO+WlDw6qtBYjRXAbENukiQrbufBBnYHuNEX8ZQ5+cWxqhuebYV0wea/iXi70MAE5BmrmpH+3/jVota17eU3Q=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=c1sg6KHlXI22dWqBp3fPba24VJxSDDAwzfhV75On2qo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_000630_503228_6537F4EA 
X-CRM114-Status: UNSURE (   8.95  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Compared with RK3288/RK3399, the HBR2 link rate support is the main
improvement of RK3588 eDP TX controller, and there are also two
independent eDP display interfaces on RK3588 Soc.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Add the main defferences of the RK3588 eDP and the previous versions
  in commit message

Changes in v3:
- expand the property clock-names, resets and reset-names
---
 .../display/rockchip/rockchip,analogix-dp.yaml     | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index 60dedf9b2be7..4f84e8849876 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -15,6 +15,7 @@ properties:
     enum:
       - rockchip,rk3288-dp
       - rockchip,rk3399-edp
+      - rockchip,rk3588-edp
 
   clocks:
     minItems: 2
@@ -25,16 +26,23 @@ properties:
     items:
       - const: dp
       - const: pclk
-      - const: grf
+      - enum:
+          - grf
+          - spdif
 
   power-domains:
     maxItems: 1
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   reset-names:
-    const: dp
+    minItems: 1
+    items:
+      - const: dp
+      - enum:
+          - apb
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
