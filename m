Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0EDAC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 01:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7OVZYLBZFKMNHQUGjsdLv2VSytFxaN7m44yhJRxJEo=; b=YH7GVGtIpjr4On
	D6Y5N7Cl5RTyeMVIvuIEoVOtjAWDhueKzLAR98uNBu2cIDlb4rAIW8hOhRoo1qsEzYsN4EeogFiuV
	Iu/ZbSX7miHKhTOAxw4d0BPQONcGazNByNzzEJCQjBbcwBrc/2FiYEBPH67Sba6Uy1YbW3SdG7yRy
	HnYIZkKqBjn498AHTOxHY/ke11ooG0L8o+biwipcpaqOF4d34ZZe53cRscBsRcfhrn0sivQlvvCFg
	CZ9425BwcBkUaAlBWvx3jjdVbxC7FfvO+hLeg2PRO6HjBCQvmlgm3LFPpsr+CuwP2koaKY1mQvWw9
	UjQbmTJMD6wI29KSwReQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBmVO-00Gvmq-1o;
	Sat, 09 Dec 2023 01:51:46 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBmVK-00Gvli-0y;
	Sat, 09 Dec 2023 01:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=hDOWo
	ySA4CZNBE7lDkM9JvLOpbEJ+zrh02ycvkDH8j8=; b=YHbdN3p44zuvEHiPDNNxd
	8rnOhUySjsWhqV8PWkh60ad0I5el+QC0jzmNBF3uLH56/c70hO+SqEqwQTX+kwAU
	llELJdBt+tD5AqILXfcJi9cIgyj5BaF5/+WUukv+fybAxchFu9WvbYul7F0VOM3U
	uzW+4nk+u3EvACfxwOP+YI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-1 (Coremail) with SMTP id _____wBXn4Dwx3NlPIyWFA--.59698S2;
	Sat, 09 Dec 2023 09:50:43 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: conor+dt@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	robin.murphy@arm.com,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Sat,  9 Dec 2023 09:50:38 +0800
Message-Id: <20231209015038.1457967-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wBXn4Dwx3NlPIyWFA--.59698S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF17JF4DJF4rurW7KFWrAFb_yoWkKFX_C3
	WxXw15XF48tFWFv3WDA3yxGryDGw12krn5XF9YkF1kCw1qvry8J393Jw15Aw18Wr47uFyS
	93WxWry2gF9xGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8GYLDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBdBXmVOA2VgAwAAsO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_175142_740942_623EDDE9 
X-CRM114-Status: UNSURE (   7.69  )
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
