Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF07AC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 00:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSHFGkETJhDTEDCS8grzVwwAt+Wx80OewyDbTdhY5e4=; b=MUKZdUhyG3HOGV
	F92LGTUCDRlOWnWNpukWm3jk1d9vAt1NqeZN/jTG8q6EjKdigeRT2l4r7z2GJDTMzAdF0Gbo8lMSj
	SlyatJJVIqTGv34D7pYXdsBnqDB+wgu20mo2FJ6dOOG8oZeEcRZQU1tt39RjZHK1YguGAsKwmiFK1
	uaUJb75Lj91MMSPHRaHEXfEbCjTbDE3Hqg0KH9iQhX4+ngjViVIVqe5u/0pXfLja2YO6SlooRFEhf
	Y4yE/VBVEeUBpcBVP7wPO3nAD1RdBXoXsxCEHkpOnb7atL7OnlfXUqDXosb7NEAv1zE+ip2+xZGxs
	sdrc/ej+N/E4eWgMZSfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCr5s-00APei-21;
	Tue, 12 Dec 2023 00:57:52 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCr5o-00APdu-3D;
	Tue, 12 Dec 2023 00:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ALA6E
	1kxgqoyYdK+X/tV01Cv4nS2fQCV1ZSR7WI680E=; b=FStsEO0uHLWJqwximzbpg
	kRqRlujuNe6619REWsYePZpQ1B5Cv+psr0Gtv2/FKSQhuAcWEE1hFCb3RFGdHhY+
	fhCFztfy8uxsMWM9uogzwTROQidBzm2wdG9MYizO+tABPLpRfzdsc0UCLzwpAezZ
	ZqijZ/n1qZRMdLtZpr1DDs=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-3 (Coremail) with SMTP id _____wDnLx3nr3dlgINjCQ--.23988S2;
	Tue, 12 Dec 2023 08:57:15 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: iommu@lists.linux.dev
Cc: heiko@sntech.de,
	conor+dt@kernel.org,
	joro@8bytes.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	robin.murphy@arm.com,
	will@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Tue, 12 Dec 2023 08:57:10 +0800
Message-Id: <20231212005710.1837066-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDnLx3nr3dlgINjCQ--.23988S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7JF15GFyxXF45Jr1DGF43GFg_yoW8JF45pF
	srCryDXFyxGw1fWa9rtFn3Cr45tr4DAa1jgryaga17WFn8ta45GrnY9rn8ZF1DWFW8AFW7
	ua9rurW5A3yavrUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jrcTPUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBBEXmVOA5nBygAAsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_165749_455202_90F55714 
X-CRM114-Status: UNSURE (   9.10  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Add a Rockchip RK3588 compatible

I split it from the vop2 patch series as suggested by Heiko[0]

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

[0]https://patchwork.kernel.org/project/dri-devel/patch/20231207080235.652719-1-andyshrk@163.com/

---

Changes in v2:
- Add maintainers for the iommu subsystem to cc list

 .../devicetree/bindings/iommu/rockchip,iommu.yaml     | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index ba9124f721f1..621dde0e45d8 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -19,9 +19,14 @@ description: |+
 
 properties:
   compatible:
-    enum:
-      - rockchip,iommu
-      - rockchip,rk3568-iommu
+    oneOf:
+      - enum:
+          - rockchip,iommu
+          - rockchip,rk3568-iommu
+      - items:
+          - enum:
+              - rockchip,rk3588-iommu
+          - const: rockchip,rk3568-iommu
 
   reg:
     items:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
