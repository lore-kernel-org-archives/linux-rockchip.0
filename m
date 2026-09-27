Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33416C9830E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2026 13:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHtW3amSnU27yFLGgoZWq6hz6NstoWC0B3ctWHacDts=; b=5AWZRVHLWhY4Yl
	l/UWgxU0sKZXDYxX1czCDcZw4cxBVfoJAnmIh1qiX9TabG7X8kXsKpGugGDqnl5DIZsuTIND01Xq7
	nqHwzfAVn7u3bVN/fuO5xqkSLTrBdhbxy0x+kUJ657GQfkUgc0GAd8BCXo10H+ItODWpkLJ1vp6Te
	WjgZSnaVnoz4K3aqxOapHT4WmsHBYHDzQRDtRb8g49rtqGMEAewTtBhdHwMOELirmIfBUOgrLGj2J
	KXg05YqyVjBj40eVxxhbGhUbcG7fvqB47H/yyyf5Hq/deok4hFCZbAGjLlmi/OeJ4LhIdOOSuppT8
	/akEaEHusKBdMbYBGsAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xApHz-0000000GPZB-1UK8;
	Sun, 27 Sep 2026 13:51:35 +0000
Received: from [117.135.210.4] (helo=m16.mail.163.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xApHw-0000000GPX9-1RgX;
	Sun, 27 Sep 2026 13:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID; bh=copIDOk9MPWo/ov
	98Kor/uunS41vMva72FnQRKJ6hn0=; b=eyjhIqByEb7NWcYOuRw1WM89U7ynErJ
	AbdwcUOtGjoVYbZcb4aU+6a63pWFjJ/EhooZD9bq38TQ1Bkb1ddTQpqjIDBlqEjI
	Lb0CdcP2JrJzBfzwt5xi1fRbZ1oyyxQsIh9GhgTliA1DSeQYn277gFySRddjorC4
	PdsLcJNdNRWs=
From: BG9OXA <bg9oxa@163.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: add ALIENTEK QuarkPi-CA2
Date: Sun, 27 Sep 2026 21:51:28 +0800
Message-ID: <179051708845.31632.10915026963421643453@163.com>
In-Reply-To: <179051707448.31632.10412780322071844492@163.com>
References: <179051707448.31632.10412780322071844492@163.com>
X-CM-TRANSID: _____wD3X6FgH7lqPRllBA--.6436S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Xry3CF48Cw47ur1xCr1xXwb_yoW3ArXEk3
	WxuF15uFWrXFyFgw4rAFs7WFyqvw42krZ3AF1UAF1kA3yvkrs3KFZ5t342ya4xWr43urn3
	CFn5tryxWFnxJjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUj22MUUUUUU==
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC3gDoVmq5H2CLkAAA3X
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_065132_826014_EF846335 
X-CRM114-Status: UNSURE (   4.02  )
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
diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -182,6 +182,11 @@
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
