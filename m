Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A5AC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:43:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 70D9160BBB
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:43:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 70D9160BBB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fox5Th+P/446C/R6OaPx0HYdkhYEtXiYlB+WJXjSYaI=; b=Cdw+6wAq3hEIthDCPPz4ALMRD
	ItGIIu1quoNQShL49VcdOqcIPo+36rL6ZIONA2xw6pzCjr2MgrZYYnfwNb2hLJEwfszFZ8VT3ma6Q
	EliOZJ9s+vMAgRvZwI8Urj4zUglQjOOJIdUujQ7KO4fWg81vBx0HuS5RC2Ebq5Ikt3m2EbsSMvNzD
	Zl8ZHI+TCWZAFiur2wojCcRc2LSUZMYvN+Bon2JQrkN806xWI+iz42IXamb15fB1JGkQkH41Eajwp
	A4EQIEtUyGvqpxucpC5YLbaAaFu0dT9fAWBnrSeMSTeixZAqAqZA/pZt7nH0FWydwT6ioInEnuid0
	4GKKuIs/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldqeU-00Fmau-Ho; Tue, 04 May 2021 08:43:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqcy-00FmHk-8A; Tue, 04 May 2021 08:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2nJM3yWi7sE6UlOKUOXINBaqxaQ42tZz+PBaBNgLS9U=; b=I37llSR+kXhSWB2EpPeEzFf4+V
 JJDZNUozs7a2PGHOYEsGxbqpAzxxQyr2F0ruMzaxqzt0NGGYQwJzWFSnqKzfc3zHxWD7pZHE5lnr2
 XdkYRq2IuF70dHDr5BPy6g7MzdMEhOHxMcrCcO5cEgYv0CBPbrB67KN6PWm4BUOk0yhhO9A5fYrd2
 3GGUDxZS8qpiTgPbZRdSsy5ISQ0W5BBpYernPmS5G+k9cCLkrGgfB+XUycL4pX9LmLuMiYc7rY+Wu
 ad90cg8FtxZlUkBjvat9YGeKkpEqxrniKOaTxEaw63okY6CHDe5PDqD/t/09yJgZlzsoeph/LSFmt
 qE1etWeA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqcv-003pBR-1e; Tue, 04 May 2021 08:41:59 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:3951:839d:24c0:e20d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0BA931F423F4;
 Tue,  4 May 2021 09:41:55 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 2/4] dt-bindings: iommu: rockchip: Add compatible for v2
Date: Tue,  4 May 2021 10:41:22 +0200
Message-Id: <20210504084124.131884-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210504084124.131884-1-benjamin.gaignard@collabora.com>
References: <20210504084124.131884-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_014157_244500_3237B450 
X-CRM114-Status: GOOD (  10.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add compatible for the second version of IOMMU hardware block.
RK356x IOMMU can also be link to a power domain.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 3:
 - Rename compatible with SoC name

version 2:
 - Add power-domains property

 .../devicetree/bindings/iommu/rockchip,iommu.yaml          | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 0db208cf724a..7f6bca185b5f 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -19,7 +19,9 @@ description: |+
 
 properties:
   compatible:
-    const: rockchip,iommu
+    enum:
+      - rockchip,iommu
+      - rockchip,rk3568-iommu
 
   reg:
     minItems: 1
@@ -46,6 +48,9 @@ properties:
   "#iommu-cells":
     const: 0
 
+  power-domains:
+    maxItems: 1
+
   rockchip,disable-mmu-reset:
     $ref: /schemas/types.yaml#/definitions/flag
     description: |
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
