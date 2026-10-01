Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FDDCCA5FD2
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 13:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4foTHqAqRhTwXUAjlB9zSjiNrGKSm+I6ZrwKIi66K0=; b=KH0GiRcidT0gMY
	0rL7DDXTKFwKAozES7yItbG1MzHfwr2rkzh713ZvPSMFzZdPYvXL1Vmu6K5TRPdcpg7Cv6ZJmRRXe
	PQJNgagjyyzb+YUE+mWdWqxoQDLC9ICJyxnaFY7V9NxdWKdo7D0f4SW6+ORQR2kDJGuMwsNfnFXt0
	0pcztr15sMWW/nfoaQ6cOioNoDuPv5r7/gFXrie2ZZ+BHxvOEkf4I+8W+e7WLxJW7be6i+431OiQI
	zu2UYDh1zeZTW+aiZ8fHmUr43OuBhO9l62aiPX34y/5TceyUIcXp87+aGPk2KZEtU3XIaSnm2Bu10
	go+2GX8WTfqHjzEEMmUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGeS-00000009Cpn-1dr5;
	Thu, 01 Oct 2026 13:16:44 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGeP-00000009CoX-0SXE;
	Thu, 01 Oct 2026 13:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID; bh=UkHYuan1PuG6FE1
	cRuk2LF2qvnvHGpPzEYvnaNQadyY=; b=FrsVBA0gCoKz7TA8FSAH7LP0UDw3sFl
	QzheViYsRhEga+rRNuK96MEw03nLRJi4Z+OUWHkkZOjLt0Z7Ee6gcTJFn7LTvDld
	RU3DRBqA9R4/6krw7NwOfBp05tlicziGu4jxW3AFUVaeFroCqSpttJzp4xD7vQJb
	9iBuY2jS7ovk=
From: BG9OXA <bg9oxa@163.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: add ALIENTEK QuarkPi-CA2
Date: Thu, 01 Oct 2026 21:16:37 +0800
Message-ID: <179086059727.25869.4898747284365209003@163.com>
In-Reply-To: <179086058377.25869.5809349568462938314@163.com>
References: <179086058377.25869.5809349568462938314@163.com>
X-CM-TRANSID: PygvCgB3zkU1Xb5qiV53CQ--.61784S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XryfJrWxWFWktFyxAF1DKFg_yoWfurbEka
	4xuF15uFWrXFyFgw45Aan7GFyjqw47Krn7A3WUAF18A34vkws3KFZ5t342kFyxur43urn3
	CFs5JryxXFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUjVyI5UUUUU==
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC+hWuHGq+XTWqegAA3x
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_061641_517322_88CF393D 
X-CRM114-Status: UNSURE (   6.15  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Document the ALIENTEK QuarkPi-CA2, an RK3588S based single board computer.

Signed-off-by: BG9OXA <bg9oxa@163.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843..a3191bb90 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -182,6 +182,11 @@ properties:
           - const: alientek,clrv1126f
           - const: rockchip,rv1126
 
+      - description: Alientek QuarkPi-CA2 board
+        items:
+          - const: alientek,quarkpi-ca2
+          - const: rockchip,rk3588s
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
