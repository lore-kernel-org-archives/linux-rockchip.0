Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66AF9C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 09:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrG8JoOjfe7Jqjw2/soKezq8jeGr0es+PcXq9HJ/nAI=; b=A+/xWvjlmaJPU/
	v73b03meynyMc6igGVZnj0vL0PzhEEZ9xzCY1Rdodk2HyrbiVevPHmNlzcO9b4x2FVoSF138pcohh
	maYCHQGsowBSzeATOgwqCU3EDhF49LjrFkAcU46P6keYA5Oh6gw7GRyhzO/QLfJWzPxb1WENOE+6p
	qVjC0IbJ7Naa3/RxYKvbntaL5uNvzL6Urtp3bPEOGsz2eUJHxouN2o8d1XH7TlV9+TuO48RhTG+yR
	Iuc/hSgceUpSfmcUN2RqOk2HPx0cbZY4P8T6Lcxc7wKQsNvDjudVfx4tke8JO7b5RMi/9b3oQ+0KH
	xh82+RRTphrnb7feYXbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHMZi-00DB8O-7d; Tue, 08 Feb 2022 09:14:14 +0000
Received: from mail-m17635.qiye.163.com ([59.111.176.35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHMZA-00DAxJ-4x; Tue, 08 Feb 2022 09:13:42 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17635.qiye.163.com (Hmail) with ESMTPA id 97C7B400379;
 Tue,  8 Feb 2022 17:13:34 +0800 (CST)
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jbx6244@gmail.com, devicetree@vger.kernel.org,
 vkoul@kernel.org, michael.riesch@wolfvision.net,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 p.zabel@pengutronix.de, cl@rock-chips.com, kever.yang@rock-chips.com,
 lee.jones@linaro.org, wulf@rock-chips.com, david.wu@rock-chips.com,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v8 1/4] dt-bindings: soc: grf: add naneng combo phy register
 compatible
Date: Tue,  8 Feb 2022 17:13:23 +0800
Message-Id: <20220208091326.12495-2-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRkdHxpWS09PGEpPTEwfGR
 8eVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PhQ6OCo6Ij5PGiEqFDgNL0ko
 PDYKCjZVSlVKTU9PSEpKTUpOQ0NMVTMWGhIXVQISHR4VHFUBExoUOwkUGBBWGBMSCwhVGBQWRVlX
 WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUxDTzcG
X-HM-Tid: 0a7ed89c1667d991kuws97c7b400379
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_011340_436863_C7A08DC0 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Johan Jonker <jbx6244@gmail.com>

Add Naneng combo phy register compatible.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v8: None
Changes in v7: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index b2ba7bed89b2..5079e9d24af6 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,8 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
