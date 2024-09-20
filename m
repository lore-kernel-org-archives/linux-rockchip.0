Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98939CDD578
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 09:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AwIvYZ8C9qlRNKvj3z4is6x2xDjm5wwMkl2X2rqf2Jk=; b=OU48SV7NdEnaFI
	k4e+ficINtz7D2DwKfFO6rwBYYQLXZ7gjS113B33x6if927wW5yn4OfjBunDBDaAC3xqpXQr+M68C
	2zX1mgpsd/ETGIQmmJNd3nvwt6C9rgcsrjZ+BYEhoFfXjsi8a0T93cJXPX8Z6I1qcoKOYxvBdGceb
	iyHLFi8jiVWMeBPwX+pD66POKz33ZMTaKSkQzS26EVHJJonj0gds364+GnaCiZAA3MtbrCa9C4Rsb
	kMjVeS+mwsyfj5dz+E9ttyxGuR47rc2oN0ujGo3zC063AHtlHCz52srlDeK3b0lqIqiD6PxovyvyN
	QYptjXPl3MhjyaNssUHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sraIP-0000000Bxir-4613;
	Fri, 20 Sep 2024 09:51:25 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sraHH-0000000Bxcx-2Qsr;
	Fri, 20 Sep 2024 09:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=4Oz9E
	Gwjk4aZj3YbPGhg4yOE8S78lWrNZLAkB1wTa4A=; b=Kk3Be7dxCfYg2o7NiTFgW
	3/NHGYQ3PDBKm4YEQAJ4Xdw/Hb7wXMAgojNDFyeCcphlGTZEjha1j1BlWHn3eMFH
	cova2Mi6GVXkzB3tRml/8mVPjfSYe4aBeRLoaG/nOnL2Lo5C1CfYWtQLRgmxwaoL
	zEzz0tXf0wZJGFZ0AlZCE4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-5 (Coremail) with SMTP id _____wD3nx88Re1mbaaqNw--.52618S2;
	Fri, 20 Sep 2024 17:49:52 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: joro@8bytes.org
Cc: conor+dt@kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3576
Date: Fri, 20 Sep 2024 17:49:40 +0800
Message-ID: <20240920094947.7566-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3nx88Re1mbaaqNw--.52618S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtw1xZFW3uF47Kw4kCrW3ZFb_yoW3urc_C3
	Wxua1UXF4rtF4F9w1DZ3yxWFn8Gw12kFn3ZF98CFn5Ja4j9rWkJF95Jw15Ar18Gr429FyS
	9Fn3Wry7WF9xGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbxwIPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMx9gXmbtQAOVOwAAs0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_025016_040420_3BCCB102 
X-CRM114-Status: UNSURE (   7.43  )
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

Just like RK3588, RK3576 is compatible to the existing rk3568
binding.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 621dde0e45d8..6ce41d11ff5e 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -25,6 +25,7 @@ properties:
           - rockchip,rk3568-iommu
       - items:
           - enum:
+              - rockchip,rk3576-iommu
               - rockchip,rk3588-iommu
           - const: rockchip,rk3568-iommu
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
