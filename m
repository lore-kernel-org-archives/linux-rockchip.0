Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5671C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 08:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDVkQ4McYGL/F4axaU1KA8ZwM6JiohiywPQvqD88CGk=; b=39ZDn6ihZNkXME
	TTNkdnM0yCIPEZJ5KQUSRQt7T0/ZdvL/GJOC7O0nDk+cfPSGHtxWCrs2Pve11aX89/zJDVikJ4cT1
	3k8ZlwCnZRCw79e/87Zm5zd0Js1YVHV78NxKPA6HjftmJlKXjVJN1nwnO/o+hcCBjjdlFmv5yH4X/
	XJP4ACV84tQoUTvdbWQW7Vvf/7g+hHJSKNPFhq3HkD6eWMdVDCnd+H/nlaq54sLtnmp0v59nqOBe+
	hVK6O5A12M0ZWTivZAIWxU17vAfHZq13pNRhhByopx48x9N9tHQsNhOh6CluYslEnMQL843BrWYVe
	UFHk/BTfcdHlGGkjZ2+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9MJ-00C9hs-0I;
	Thu, 07 Dec 2023 08:03:47 +0000
Received: from m12.mail.163.com ([220.181.12.198])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9MG-00C9gp-0x
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 08:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Eagjj
	KWNWKSpKBM+wTEZQyp+boVbVHbVzJJ39PCuk0M=; b=TfUvT0RUFYc7U2/AlB+F5
	UFEjE8ZxIUvKFTTlvaIjLSSd5yLel5Jek3mV1A833tuQNQkFRyizA1xoAYACBvzx
	ng4IYufs223SmaK8LluDXg0ozVxzHLEE4PXq6eGZ0+3LZc1Lg54jmxsI7oOuV+b4
	DTT0vhR4f8h5Mkgv0S7qYE=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-0 (Coremail) with SMTP id _____wD3_wsefHFlU2WcEw--.43577S2;
	Thu, 07 Dec 2023 16:02:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 15/17] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Thu,  7 Dec 2023 16:02:35 +0800
Message-Id: <20231207080235.652719-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_wsefHFlU2WcEw--.43577S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF45ZrW7uFyDKrWfAryxKrg_yoWDJrX_C3
	WxZw45XF4rtFWF93WDA3yfGFyDCw42kr1kXa9YkF1vya4q9rykKr93J34rAr4rWr47uF9a
	93WS9ry3WF9xGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8KFAPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgM-XmVOA0XAIwAAs+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_000344_698215_A1007FFA 
X-CRM114-Status: UNSURE (   7.64  )
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

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v4:
- Add const for rockchip,rk3588-iommu compatible

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
