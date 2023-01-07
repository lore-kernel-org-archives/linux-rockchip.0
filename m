Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C65AC54EBC
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 11:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FslyVTmqIyDhwue4bZTg9tsgqsJfNjgEvlgAtEfN4/k=; b=hPyS5xivZD12dw
	AfCAwQBTe7G2Sbhmc5f8ln4yescQI2tvITCuPfaiKaw90Bra4Y0quoIn87dtqWEjtK8ucLKDLCfOf
	5EiDwjEc5TSQV3ITrbRknbf9opZMKSgwk6LWHtBIlj0XZyvjVlvv+6ZbdN2ytOoGw2PE2UjbOvfQk
	gEpZmGMLZs22AJbmOR3Gv3WgCnk/ScaiM5mT/VDl7lP37587K/vLzeFbFSi4JIQUquNiZ3DQAw6gi
	rRjvU7jDX7dYDLszErH0y0eGVDJxEK8vdPeOM2jokZpWoJPRbFqyWfu7GcU+ufg78drMf7EdXKGT6
	kk8rt4p38MvVCl3VLFVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE7lH-004bNn-Uw; Sat, 07 Jan 2023 11:53:19 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE7l7-004bGF-1d; Sat, 07 Jan 2023 11:53:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=7pKMz
	uunzgd8Gl/u//B8xBMd+LHSKbAp95fT9I7HvY4=; b=FcdVETPnWguE1QZYNf+y4
	NDxqDmFQ61hvh6yYtzSdnw/ck8I2WcUhIKGY4z8z6BCiBdnRUe27zYwo4W5WQi8q
	o9wBw+S3nEplpcwWpMSr7sQ3UzK5McgYD+qkuZih5Lx29Kv1gYrnPOQhoMpUt6w+
	SWG1LHCfpwDX4oDkCwAKQM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wBHu7D2XLljEhFdAA--.29863S2;
	Sat, 07 Jan 2023 19:52:26 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: lasstp5011@gmail.com,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 2
Date: Sat,  7 Jan 2023 19:52:21 +0800
Message-Id: <20230107115221.2125368-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230107115159.2125308-1-andyshrk@163.com>
References: <20230107115159.2125308-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wBHu7D2XLljEhFdAA--.29863S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GrWkAF4UArykuFy7tr45trb_yoW3ZFX_ua
	yxZr48CFW8AFWFqw1qka97CFyj9w4xKrykC3WFyF1DC34vy398tFZ3t34ayFy7Cr47urn3
	CF4SqrWUKFnxWjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRJ5r2tUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiFgDvXl44WehpWQAAsA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230107_035309_834631_EE86596B 
X-CRM114-Status: UNSURE (   6.96  )
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

---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 058ed707f3cd..870c32f8574b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -100,6 +100,12 @@ properties:
           - const: embedfire,lubancat-1
           - const: rockchip,rk3566
 
+      - description: EmbedFire LubanCat 2
+        items:
+          - const: embedfire,lubancat-2
+          - const: rockchip,rk3568
+
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
