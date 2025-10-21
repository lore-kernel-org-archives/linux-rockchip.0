Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B0ACCCD1A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 22:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B6wOOCj0Pp/Z0NPiOaQMK22jgp0wkHblWtyAOCjB2gM=; b=HqIJxUgdqCPy7H
	bSuNgAfikBI0DRu1fjwBzFw51+Rt8sIx3S7ypa47teWnWUgBU+p+/zjNpYrVnGZkCxJZorcH+jSfQ
	qJDzTD+5ks8D3CQaZ3GxVsgz4JQSFgl1Zj8hbdwZlPubIW0LZQByiQo9YvSIz9DXqJRBevhW1RhMU
	cSQ21+MNBLJ7WcOS2DOyhoI4+j7SYj2IjMZX/qoByV8Qri5rnUdxU3JF7V3G9Bmr80P1E734OljGP
	vxxwHHD3cddd7K6rDLYEoS9NBuFFClY0GZkit7JNeGncb7210yWqmcCUxIIBCAHHwfB/XvrLVvIvZ
	B1QAnO8+gVBX4AFiLfRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBKrl-00000000nd8-45y0;
	Tue, 21 Oct 2025 22:30:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBKrj-00000000nc9-2CKS;
	Tue, 21 Oct 2025 22:30:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=JOqXWQaq3hbi4YpvtGsddkEQ1aOnP/muTiS+mWoANSs=; b=C10ZUdJkwWItkwiy4+X8dFPGeO
	tw1dN3wb13cdOYfLar3mdlKZRvIEzmqPCFHfuxM9Jrbn5GEAakXAWFSLa39RqHpe0OsUDFKFrhhWt
	7nfbZTZNAekNjVDYMrD/lcjpj2Ep9+Tsih4VTtrwPTxGI7ZGlYx99VUhAn4ZwWD1ItYtyTWMfiJkM
	+DAcUXidUhOoj957446vClWuKKwk81UQqWMYBZ75kA81kI/9bLJBmlLG5mFuAjVZVFpLNWnQcFdYn
	l6ARDgXBVM8Ap9ioAGhtSYO9xHimXc6eM6UBNAc0Flgp4TnI8KPCEwcwsHm1yVl8I1PZ0JtXpCva/
	e+IKJg+A==;
Received: from i53875b19.versanet.de ([83.135.91.25] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBKrg-0006hP-N8; Wed, 22 Oct 2025 00:30:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for RK3506
Date: Wed, 22 Oct 2025 00:29:55 +0200
Message-ID: <20251021222955.193323-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_153003_561043_3F8A38F7 
X-CRM114-Status: GOOD (  10.22  )
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

The dw-mshc controller in the RK3506 is compatible to the one first found
in the RK3288 SoC, so add the RK3506 to the variant list.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index bf273115235b..acb9fb9a92cd 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -38,6 +38,7 @@ properties:
               - rockchip,rk3328-dw-mshc
               - rockchip,rk3368-dw-mshc
               - rockchip,rk3399-dw-mshc
+              - rockchip,rk3506-dw-mshc
               - rockchip,rk3528-dw-mshc
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
