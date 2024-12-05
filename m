Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18747E7716C
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 08:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4bJDXJcnUfSK2Qkl+rIOsGT6/FC4HXzqTfptyK6lMw8=; b=Ul3jZxdx2YLdku
	wglJ1lvQq7j77SfJBMaSPyE0dfL/WvkYu0R8wD3H4JEVcYVGRFltQJnCw0MlkdInU9DsGlXbnEvXa
	GnarnnLr5+t/zMa9w4y1H14HVfxKPsIjSG9/ZmHBDQeN8CDktZG/XhLNf2xzixyol8TDPR8ttVjPp
	DlC+uI3SMYGZ72QQe4i43eizCl926fe314cOQKQeWcSxBu5Z3iJ82UgdQDC8Y4Br6RbACv5IcjVQk
	3rrqCt/0ToY/9YU/FfJiHCGkgn3q9T6kVihcUqGBKSieyRwgEQMXT5HA4Px9zFwS6Ca4CekqDV5/c
	HVtgQU4EdqAb2u5cNSpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ78y-0000000FAFU-2zuy;
	Thu, 05 Dec 2024 08:23:28 +0000
Received: from mail-m25491.xmail.ntesmail.com ([103.129.254.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ78n-0000000FADx-08Sw
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Dec 2024 08:23:18 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4cb1edb4;
	Thu, 5 Dec 2024 16:23:12 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: vendor-prefixes: Update rockchip company name
Date: Thu,  5 Dec 2024 16:22:58 +0800
Message-Id: <20241205082258.857018-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx5DSVYZSBhDSkofT0wZSktWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9395ea7d9503afkunm4cb1edb4
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pkk6DAw4PjItHQ0PHCgCCAgO
	IhlPCyFVSlVKTEhISENNQkJPT0pNVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDTEI3Bg++
DKIM-Signature: a=rsa-sha256;
	b=CguSG57m7fMaCiHvFyoDvQ2skC2gwEwzB7H0fPqT2SPkbVpZcm2AygYCvPSHUfH/kP1Oe6nMHonI36sBiVHJcOGKdCmE+RDee7wcxngFLl89h6BgehsiethW3jUrNf/UeBuArxaM0Ns507PH78ttSTPwl/griL0qi0N6fgbtQFQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=SnchjJcA4w+G8vlGm0jH7kMfnqakh7U1nII57Iby3/I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_002317_275842_C6AAEECF 
X-CRM114-Status: UNSURE (   6.23  )
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

Rockchip company name has update to below name since 2021:
Rockchip Electronics Co., Ltd.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index da01616802c7..6e3ed21ab4eb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1261,7 +1261,7 @@ patternProperties:
   "^riscv,.*":
     description: RISC-V Foundation
   "^rockchip,.*":
-    description: Fuzhou Rockchip Electronics Co., Ltd
+    description: Rockchip Electronics Co., Ltd.
   "^rocktech,.*":
     description: ROCKTECH DISPLAYS LIMITED
   "^rohm,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
