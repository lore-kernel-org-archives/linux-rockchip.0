Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9766C53210
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Jan 2023 11:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pu7JdxfCbWaRDhPYR/MMUHU7twfbvxqdxjveeeaEhOM=; b=XLnoy7bvfRKjhO
	T0AWctIy7NtQyH4UbiL9m/EOLS3qex/4/7nb08thpaIva2mHaQOOvD6BcRuFnj93OpQlBoIjb6n1Z
	MTAScG7b7xS12Ouj8Uad5fnsmbgQcOPeBu0oqWrTFAwvDnhS1rJoHSvnwwMr0RiQEOn93SDyei4uH
	Zz1oFVrD6HfusVvsAd1437qBsl3SutjMoAGdTXgATlbKTnn9tM2peQaXP1czDiRLjOswP0VEin5dB
	imNIAWWWbtmyeioERHpBLjA41Sdqkae3OToZBOC7U3RjzgiGHLn1BaPNya3bR22mpYUpA/a+y8aML
	FfzvY/oWqUTsLtF1cHzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pETmc-00CtBc-OO; Sun, 08 Jan 2023 11:24:10 +0000
Received: from m12.mail.163.com ([123.126.96.233])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pETmQ-00CszE-Nr; Sun, 08 Jan 2023 11:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=uWVgd
	FKv8uXC1FyWceZYB1LxeZQTwMP3xvENwSOlOJc=; b=euWWRUaxuOnRSFsUJBxl1
	voWzqdTHENzNeZ8h4EwDCpvV1/l3BglPND2bbRp/twNBzUUyPH+attq4d3p4obmy
	ClcA5o9jVpWtvhBCRlBk3kSGR8C5os9tN60PZ74gHvK/9gbyg9B1fikrRifp4VZT
	piQ/zECtTOOJIcAT8IBX1I=
Received: from ProDesk.. (unknown [58.22.7.114])
	by smtp19 (Coremail) with SMTP id R9xpCgBX9DwApLpjWHWuEg--.44923S2;
	Sun, 08 Jan 2023 19:07:49 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: lasstp5011@gmail.com,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 2
Date: Sun,  8 Jan 2023 19:07:42 +0800
Message-Id: <20230108110742.2214800-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230108110708.2214718-1-andyshrk@163.com>
References: <20230108110708.2214718-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: R9xpCgBX9DwApLpjWHWuEg--.44923S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF4DGw1fKF15Gw13Gw18Grg_yoWfCFXE9a
	yxZr1UCFW8AFyYgw4DKa97CFyYyw4xKrykCF1FyF1DC340yw45tFWkt343AFy3Cw47urn3
	CF4fXrWUCFnxWjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRJEfYtUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbivAbwXmASam4hzgAAsN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_032359_169989_E1CA475E 
X-CRM114-Status: UNSURE (   7.90  )
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

Add EmbedFire LubanCat 2

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
- keep only one blank line

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 058ed707f3cd..c238c799dee7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -100,6 +100,11 @@ properties:
           - const: embedfire,lubancat-1
           - const: rockchip,rk3566
 
+      - description: EmbedFire LubanCat 2
+        items:
+          - const: embedfire,lubancat-2
+          - const: rockchip,rk3568
+
       - description: Engicam PX30.Core C.TOUCH 2.0
         items:
           - const: engicam,px30-core-ctouch2
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
