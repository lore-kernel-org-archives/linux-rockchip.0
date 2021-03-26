Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCED9C433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:31:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57AEE61A0A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:31:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 57AEE61A0A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a8YSECxGDH3kKNFZEE+f4vml5UP0aBWV43vFSwn35Hs=; b=iuzvx5xm5ncu8Eyfp7JIk3hEgn
	o+0gWCRWlPHlXFwcg6uplHwS+MVoU3mF2yutudC+rsLcYkb/5Q7r+7uHTfh4C4cV8CRGn6N49rLmv
	SQU/cUp9AgeSPIziv6FMe9zOD5k/fXFuAL+TEwamlXx5acITVm6ejV141u1AwtplcuPVLuVZOMmUt
	rnx4YLB8FElQ+jyI9e70bAhCPotV2W9/JYzMS2fJCPDmCaOTguRebb1rxNcBCmOe9MhXqM6hjhhBI
	qv4MyFGdcxQvXuvV0HJtMq3ag/EooEZfJ9A5fkFgDidFb0I6bgt71Ray5Ia5+ZT7D4HwErCU72wkF
	AmxUGCdQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPjkD-003JH0-0Q; Fri, 26 Mar 2021 10:31:09 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPjjx-003JDA-Mb; Fri, 26 Mar 2021 10:30:58 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 41C2DCCEAE;
 Fri, 26 Mar 2021 18:30:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26788T139903503918848S1616754649776038_; 
 Fri, 26 Mar 2021 18:30:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3b7ba403f71ff80503f55a95118fc2c8>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 10/11] dt-bindings: power: rockchip: Add bindings for
 RK3568 Soc
Date: Fri, 26 Mar 2021 18:30:49 +0800
Message-Id: <20210326103049.15364-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210326102738.14767-1-zhangqing@rock-chips.com>
References: <20210326102738.14767-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_103054_418971_6822C440 
X-CRM114-Status: UNSURE (   8.99  )
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

Add the compatible string for RK3568 SoC.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 9fec9e227432..a4d223255c3b 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -37,6 +37,7 @@ properties:
       - rockchip,rk3366-power-controller
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
+      - rockchip,rk3568-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -90,6 +91,7 @@ patternProperties:
           "include/dt-bindings/power/rk3366-power.h"
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
+          "include/dt-bindings/power/rk3568-power.h"
 
       clocks:
         description: |
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
