Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE24CC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 12:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sk8qVT4muLmQHVgyPLekTbEik79feU6WqL+QRnB/h1w=; b=5F34xZLX2HuZaP
	bXJ1tuHlzNnUp/I/uxtGW75IoPkGv7cBMtjV+u8qC7Va/mIYgtMQMx24O+inS1Z88G/z62IOZ4L+V
	VQjHwysRubvCfxeaUQ2lTWj4rEjFc8ONIieD7J0W3BpXln3lxCpsJE+ZChMzW6DquaBhEXw75tV+L
	AHgEBQrFbSGAn9USsvLlUaXvYGKxIl8wuyBgiSxsD3A+3FB0DjQAyu6LowgF3vfbpdxpukGn/GBUV
	vkEAibRa3Q5ZY7Bt6ZBcrzyCayapl9U7XvQO771/1AMjdJ6DBLKTqkCTC5MGfJrJAAcqyL9Dqi3aK
	oGw7gJt8n7BaF2dl+a3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g6e-00Aqls-0y;
	Thu, 30 Nov 2023 12:25:24 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g6b-00Aqjh-0X
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 12:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=/4Iua
	fg2hhPzAVvzMsQQEyFbtwMDIUlEC3dLvK0EF3M=; b=jRnlGiYG/xmMAfrj6CeQr
	TN3MsHGd7q+lhtHmN4wCJlSSIJUctjk+IdxdkEH5SV+acJmhIiIJiqmlOAB0L7m6
	5TsaXzItfujHJz2tc+Rtu2aar/fxNZnET88VqGBFkhN2Un0z9q3o+uSFK5RjG5ZZ
	TduBK0UHpYx5zyl8zOWXKY=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-1 (Coremail) with SMTP id _____wD3_7Ydf2hl0M6qCQ--.51188S2;
	Thu, 30 Nov 2023 20:25:04 +0800 (CST)
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
Subject: [PATCH v3 13/14] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Thu, 30 Nov 2023 20:25:00 +0800
Message-Id: <20231130122500.13491-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_7Ydf2hl0M6qCQ--.51188S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF4rZFW3KryxGr15GrWDtwb_yoW3XFb_u3
	WxXa15XF48tF4F9w1DZw4xGr98G3W2krn3ZFs8CF1kC3WUZrykt3s3Jw1rAr4xWr47uFyS
	9F1vgry3WF9xGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8KFAPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAU4XmVOAquXMgAAss
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_042521_600214_D1094978 
X-CRM114-Status: UNSURE (   6.90  )
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

(no changes since v1)

 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index ba9124f721f1..3febf0c3c404 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -22,6 +22,7 @@ properties:
     enum:
       - rockchip,iommu
       - rockchip,rk3568-iommu
+      - rockchip,rk3588-iommu
 
   reg:
     items:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
