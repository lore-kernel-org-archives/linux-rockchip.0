Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C30C0502C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 01:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osI3o0z9EKulsfRCKu6FGIA0wjfSHrsrCFT89FfNNNM=; b=0r8a08QD8vVz1V
	qI5FwfrLwxR0Cxz5OKAkJXBTzD94uIXfy6wUqSXBHVR9Qia75PkvszAEm+6oJqsbdS7d2SqMRIv3p
	6v5G96axW4ASp1zjiSRTSkktVmfngvreDAKb9ni+aV2JO2NsHZMfQgl8Hcj/69XDBBpu733sLjc8Y
	kcizbTBMfSji+JG2NeK9yzGT12wvfJAOc0ICZliYkuaahwQRR6hJ72ybO60ffos1+XN9+EjoIOnfW
	CavRNIlIJzTOLpI4WzXhkj2G2iWFOLUCuEgbkvioJaFuSRCBqCiFA24Laiol1Ete0EBfuR/Y9k7eT
	YIqcUr3lVkkv6/MNHkjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ20-008xZO-Vp; Thu, 01 Sep 2022 01:30:09 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1q-008xU0-V2
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 01:30:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id E17D79004C5;
	Thu,  1 Sep 2022 09:29:48 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 3/3] dt-bindings: gpio: rockchip,gpio add optional 'gpio-ranges'
Date: Thu,  1 Sep 2022 09:29:44 +0800
Message-Id: <20220901012944.2634398-6-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901012944.2634398-1-jay.xu@rock-chips.com>
References: <20220901012944.2634398-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQxlDVk5KTU9JQxgdTU5DT1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OSo6Qxw6Vj04N00xSAhIFi4v
	DjoKCQtVSlVKTU1KQkJOTENCTktPVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlIS0g3Bg++
X-HM-Tid: 0a82f6ab2b1d2eafkusne17d79004c5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_182959_169862_809ADEC5 
X-CRM114-Status: UNSURE (   7.94  )
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

Add a optional property 'gpio-ranges', such as
    gpio-ranges = <&pinctrl 0 0 32>;

When the gpio nodes are under pinctrl, the property 'gpio-ranges' is
a optional property, but when they are under root node, the property
'gpio-ranges' is a required property.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml       | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d4e42c2b995b..7a075fcea75f 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -49,7 +49,12 @@ required:
   - interrupt-controller
   - "#interrupt-cells"
 
-additionalProperties: false
+additionalProperties: true
+  gpio-ranges:
+    maxItems: 1
+    description: |
+      The property is a optional if gpio node under pinctrl node;
+      but it is a required property if the gpio is under root node.
 
 examples:
   - |
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
