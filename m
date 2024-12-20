Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D5A8E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7IXoxBH/wm5JEftp+x7lm2gfEgpIPkSmfSMYMTtbrs=; b=L69FymBdqPD253
	59KBfr2HZiJHQuGDRUasLEHIKY3UvxgQcapRGXx4Xxr72Pyv0xGP3TVQwxDxA58rZARA0VsDOkDeV
	SavgP0sN7QYsjl7f4ldlFlh5BfbTYsTtoMaTvkqWxOXclK3T+0JxiH6N7dleu7IAI7PZ0q3T4mq0R
	tw4mpHwA3rEW6dvqCicdaXJM2UevV4WUEwudm2HXBNbCpXKDdhs2iHOHtVxFwjcPKlXU4fmT33QFj
	VVywByg5EIpaICWwzYa31oVoYszRpwJ7I4t7pXxWuwUQks055dQU3MNZrS2/MoH7kV4W5Wh3GolT2
	bHOgu5zwDtLuowI1NxLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayO-00000004jfA-2iuX;
	Fri, 20 Dec 2024 11:15:12 +0000
Received: from mail-m127156.xmail.ntesmail.com ([115.236.127.156])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapq-00000004fHk-3MIS
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:24 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 65729208;
	Fri, 20 Dec 2024 19:06:19 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 25/38] dt-bindings: power: rockchip: Add bindings for rk3562
Date: Fri, 20 Dec 2024 19:05:45 +0800
Message-Id: <20241220110558.3511994-16-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh1IHlYZGR1OHhhPQkhPT0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf346403afkunm65729208
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRA6Pgw6AjISFAgdCFEdSBQ3
	KBcaFE1VSlVKTEhPTUJJTExCTE5JVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCSkw3Bg++
DKIM-Signature: a=rsa-sha256;
	b=Y52hKi59zJNuucXdMRpp1es2Ly4ZYYIdwREYiTzGrDSWlzQzRA53DZoTv6HAwaikoSK0RlBuG0hXXmj1M1eJ7CviRYbg/3oq67UgtYt/j75rEmOj7F6WTQVGk0ciUo80+7LtrNJV0Pl6kLj8AC62xY5A7HFtYNjivX60Uct8GK8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=p4APXEPlu62NaDEngIdwnOBnWqds0yxNMvAh5nMdISM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030623_026348_B8D54852 
X-CRM114-Status: UNSURE (   5.35  )
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

Add the compatible string for rk3562 SoC.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../devicetree/bindings/power/rockchip,power-controller.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 650dc0aae6f5..79b948518f0c 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -40,6 +40,7 @@ properties:
       - rockchip,rk3366-power-controller
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
+      - rockchip,rk3562-power-controller
       - rockchip,rk3568-power-controller
       - rockchip,rk3576-power-controller
       - rockchip,rk3588-power-controller
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
