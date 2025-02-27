Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F8EFC19F2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+dUx/0kMNTCkNold2Lrs4f+s+4U7FyNf4Lsih8HDeI=; b=hNYJnWXaEQ8R5s
	kefpOIXJAKgDCqdHyBfNwTUIuf30I/oCBurRcf2yEhZZViZa+8AxRPv2kCxovua5iHhBzUOymaIgg
	Oh+LQ0nnjW+0LDjGAIlfAzPJvnDXVH2USXKVA8IAlFDJUqvi+mPZq1bYsQqmXdn3vNHDfdTPhgvN/
	mab39i82O2ZQGsdXfXboOEGWQDr7ihc8iUq1oHacunNmW8QzrDBa/WOhBoMd6lMUjYvV/49yJNYDc
	M88PtaRwmE137g3guTswZ/vh3NEI5DrjVLl7Bc3sF+VPaJWlZLlFrGje0g9SWgCrE7K1r0WLTOsw2
	XvIMOtZh1FFYtqAF+Jsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncIi-00000007Dux-42n5;
	Thu, 27 Feb 2025 11:43:36 +0000
Received: from mail-m49244.qiye.163.com ([45.254.49.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbvK-000000079D0-2bY9
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 11:19:27 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65f97d1;
	Thu, 27 Feb 2025 19:19:22 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v3 02/15] dt-bindings: mmc: Add support for rk3562 eMMC
Date: Thu, 27 Feb 2025 19:19:00 +0800
Message-Id: <20250227111913.2344207-3-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250227111913.2344207-1-kever.yang@rock-chips.com>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhOTFYYTUpITklPHk5DTRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a954721f69203afkunmc65f97d1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PAw6DAw5MjITNw0RAkI4HlYU
	TQgwCRBVSlVKTE9LTU5OSk1PT0hPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSklONwY+
DKIM-Signature: a=rsa-sha256;
	b=RzsR3blOXsXwdI9HOvFzOcLEQVZBRtujcQhvm2zRbJadsYsjAdqa88MYo/taqnfh1GaY0m6Nicn1uKLkOGGjwJlRcWrCUcKd/nvb4c3AoVEhx9goLwFHlvDQ06ya2I3N3N1svmtzCtDbqUgxJHdkP+BcWjZW5V6e3/BhHsuY10E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wng6RPNu0umxr4Kc1/tX7hihuPkkSZn7r6Whp2T9fIM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_031926_856741_84B55A2E 
X-CRM114-Status: UNSURE (   8.77  )
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

The eMMC core on Rockchip's RK3562 is the same as the one already
included in RK3588. Extend the binding accordingly to allow

	compatible = "rockchip,rk3562-dwcmshc", "rockchip,rk3588-dwcmshc";

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v3:
- Updae to fix dt_binding_check fail

Changes in v2: None

 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index c3d5e0230af1..2d5c9931f623 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -14,7 +14,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: rockchip,rk3576-dwcmshc
+          - enum:
+              - rockchip,rk3562-dwcmshc
+              - rockchip,rk3576-dwcmshc
           - const: rockchip,rk3588-dwcmshc
       - enum:
           - rockchip,rk3568-dwcmshc
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
