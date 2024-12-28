Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D28E77188
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Dec 2024 12:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2TPDiN7QBKRrS9G8NG5P1uR72FboDq36U52JmEJLiE=; b=ETF25eePKSiizU
	ckTNVk+SCnOLwmOCeQ3k0R7cmZDuWI1IRLE9JVWoFjAwS2woq2G6gYyTfXoc4EJqSks7seFMtqF0a
	4lsPpau2If5dzOg1QutwrTRDXoH8ZsCmySfqltQ8b9ydnGlUdKNSB+XA8ejYbZh7NHM8M/4MxYL49
	4oP7tsLhtHIb4iWU1IPZKOfBFoTSEbNPep2mtswcEM8eMfeLf6hggBa9iTtQEdTk3em56UL/+LV6i
	NNLanBHkGRjHYO8cuWJQy4llXJlRKYDYURGLMYMuSD1U/1pSyVKO0dlHJizJNQSh26GRAhNsTp0Nh
	qPDdAe9mE/t+1qCDGo/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRVvn-00000001rfv-1GpM;
	Sat, 28 Dec 2024 12:28:35 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRVpu-00000001qWA-0nHr;
	Sat, 28 Dec 2024 12:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=FmSpJ
	+e209IgLZ68tXXKsnh3RVerdeFHGl/h+V8EMEE=; b=kbv58woRhslEWE41zJD4/
	DaaK000dFmsxacFSBISixE1I7kMoZgD9wO/T3qgPYtiyWORbhDqO1whKNILB/TtR
	nVN6tiaJeRlEftaA92cvcSJrMVl+qnXoSInAvkC/iS9Vtp926VxAJwOLbg3/sR4o
	MrItHXwFEgFKBAEN4+2PsE=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wD3t0tl7W9nUxdCCQ--.1009S3;
	Sat, 28 Dec 2024 20:22:03 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzk+dt@kernel.org,
	joro@8bytes.org
Subject: [PATCH v2 1/8] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
Date: Sat, 28 Dec 2024 20:21:44 +0800
Message-ID: <20241228122155.646957-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241228122155.646957-1-andyshrk@163.com>
References: <20241228122155.646957-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3t0tl7W9nUxdCCQ--.1009S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gr15tF4DZFy3CF48tF4kXrb_yoWfXFbEka
	4xZ3WUZFs5tr1Fqw1DAa4IkFn8Aas7KrykCF4UAF48CayqkFWkKF95Jw1akr18W3WI9Fyf
	ua1vqrWUGanxJjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU00JPtUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRPDXmdv5wS0uAAAsA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_042230_626751_B2E2E7B8 
X-CRM114-Status: UNSURE (   5.59  )
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
Cc: robh@kernel.org, iommu@lists.linux.dev, detlev.casanova@collabora.com, devicetree@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-rockchip@lists.infradead.org, cl@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

Add hdptxphy grf syscon compatibles for rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

(no changes since v1)

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7eca9e1ad6a3..61f38b68a4a3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -23,6 +23,7 @@ properties:
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
               - rockchip,rk3576-gpu-grf
+              - rockchip,rk3576-hdptxphy-grf
               - rockchip,rk3576-litcore-grf
               - rockchip,rk3576-npu-grf
               - rockchip,rk3576-php-grf
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
