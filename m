Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 650B0C48BC3
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 02:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNssJQ8Y8WbNGh5jkMI1G86mrfRMFUWV1WuXITeyJ9A=; b=s7dCKceh3Ug/c6
	cu6hXMjpscgJDOFG2Co3gOAb5MJsB4ZySOgDImoyyGAlKR5LtH8SUF/P2uBtIiUuSkG/YCTnusUy3
	Sb6IJSn13frOhbraV/AduUTlr+cRUDuuunIwL4kGC/JoKD0fyMikerBKOI6q8G1N0cXZCx7E5NAkY
	eP/TrN3LTy6yr4fJCwGLY78nF0hq6XkoDsvtvnYbEwTibTeJE4lWIm4CvJWIWXtoXnO7R9vm0xuiz
	Pli2RMdd2bSKSo1q5S3qihNnqPhvF1LnWraiorlBPD8cjT8hV5gilgx3okMjbyjtrq117TElLZg0a
	xHRFjGy+ObwDj1vz1qAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rccOL-0000000Gsfm-3nDg;
	Wed, 21 Feb 2024 02:31:25 +0000
Received: from mail-m92102.xmail.ntesmail.com ([103.126.92.102])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rccOJ-0000000GsfG-2LUj;
	Wed, 21 Feb 2024 02:31:25 +0000
DKIM-Signature: a=rsa-sha256;
	b=GYmhSy8b3DQvLH8AKVVc4plknLVoNZKnArUxzqkd8yLxr8TzLWUPALshEFGn8ZTKWk7x4JtrAiESM9tuPHaj6rT5oWWzXYPe4g5pS7TGiLFyGvFBm+/X+2bLLPY69tKTWII9anzJygBay7g+BsM3fWc0MMteACfWdJWL2jRMnJs=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=s+djMZiOg/oatebJVJNtdf28VXXHPNCfX6vs4XlvzIk=;
	h=date:mime-version:subject:message-id:from;
Received: from zhangzj-rk.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 5ECF72A0144;
	Wed, 21 Feb 2024 10:31:03 +0800 (CST)
From: Elon Zhang <zhangzj@rock-chips.com>
To: heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: weizhao.ouyang@arm.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Elon Zhang <zhangzj@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/2] dt-bindings: arm: rockchip: Add Toybrick TB-RK3588X
Date: Wed, 21 Feb 2024 10:29:02 +0800
Message-Id: <20240221022902.751528-2-zhangzj@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240221022902.751528-1-zhangzj@rock-chips.com>
References: <20240221022902.751528-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR8ZHVZCT0NJT05PGB8aSktVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSUxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8dc980960403aakunm5ecf72a0144
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAg6PSo5GDMTExoJCwEhFjkY
	GQhPFAtVSlVKTEtDT0NJTU1PSE1IVTMWGhIXVQETGhUcARE7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFJTktJNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_183123_819717_B69031CC 
X-CRM114-Status: UNSURE (   7.30  )
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

Add devicetree binding for Toybrick TB-RK3588X board from Rockchip Toybrick.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Weizhao Ouyang <weizhao.ouyang@arm.com>
Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..d29df97c7b25 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -878,6 +878,11 @@ properties:
           - const: rockchip,rv1108-evb
           - const: rockchip,rv1108
 
+      - description: Rockchip Toybrick TB-RK3588X board
+        items:
+          - const: rockchip,rk3588-toybrick-x0
+          - const: rockchip,rk3588
+
       - description: Theobroma Systems PX30-uQ7 with Haikou baseboard
         items:
           - const: tsd,px30-ringneck-haikou
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
