Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 207BDE7718D
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 10:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yK+BhUqwZi5pgQla8ohw83CcaYi5HIatthHDEiyJYHw=; b=4EhWXg2grJBZl0
	z2DN0YWR15AFzQg6jmkp794rxSrhS0z3Geo7Amphuspxe7+kyiSRfH5wZvDzAlXmQjYNX5JZ4oe6g
	0jSeVu/WzKK2jW64PSahnxhB7rHHUOCGU3N40tJ60j2Z3xEUbOikzaF3BgDt0Q1ULpz4AxvLFPmR4
	SPX0UDthUCxpCkGfZka71lTmRxXxOOtTQDu3i4PvYwoXh8vT4733+uGnKrI4Dg9s3GrrvvXhLeprj
	6Ye/AaxtnkAAtjp1UABXVmdO2irWrjLx2JSmR2vxg5ga2U5e8xbryGtXP4Hit9HGUbRGhzdX2kqAs
	j9qXbGdkdUWMgnFvOI6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1iS-0000000BgI9-25eL;
	Tue, 24 Dec 2024 10:00:40 +0000
Received: from mail-m155116.qiye.163.com ([101.71.155.116])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1Xg-0000000Bdyo-060X
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 09:49:33 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4ee8;
	Tue, 24 Dec 2024 17:49:26 +0800 (GMT+08:00)
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
Subject: [PATCH v2 02/17] dt-bindings: mmc: Add support for rk3562 eMMC
Date: Tue, 24 Dec 2024 17:49:05 +0800
Message-Id: <20241224094920.3821861-3-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0kYTFZKSEkYGUhIGkNNT0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f812434003afkunm6aad4ee8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nxg6Ayo*STIOTUozS1EqLDUz
	EBEKFCJVSlVKTEhOS0hITE1MQktMVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSUxINwY+
DKIM-Signature: a=rsa-sha256;
	b=UW7X+YjqDvlBxMNOu0sjqZY8HpN2ytS3XGlGuLaq57xynPQJOnsuJoZA3VpTSP8y2QQe8Vcj0FXLDp8zYndIQ0L+jFeCIGjKy6G4rHMI3KRlW380htcLRuCvp3KH7iSZtc0fAl0LfNzAC8bo20Eyocv1KhB6cZYs8NN4Q0nrUs4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8Vy2jX1P5CcfS+k88EOexLOM32haPI+pYQW5JzkIYwM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014932_222983_02EE0B17 
X-CRM114-Status: UNSURE (   7.41  )
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

rk3562 is using the same controller as rk3588.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml      | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index c3d5e0230af1..33f4288ff879 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -14,16 +14,19 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: rockchip,rk3576-dwcmshc
+          - const: rockchip,rk3568-dwcmshc
           - const: rockchip,rk3588-dwcmshc
       - enum:
-          - rockchip,rk3568-dwcmshc
-          - rockchip,rk3588-dwcmshc
           - snps,dwcmshc-sdhci
           - sophgo,cv1800b-dwcmshc
           - sophgo,sg2002-dwcmshc
           - sophgo,sg2042-dwcmshc
           - thead,th1520-dwcmshc
+      - items:
+          - enum:
+              - rockchip,rk3562-dwcmshc
+              - rockchip,rk3576-dwcmshc
+          - const: rockchip,rk3588-dwcmshc
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
