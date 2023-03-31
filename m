Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9BF3C761A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 16:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0x/zu23XVZQAY05SVCSTL2NTz8U/8u1d3qFpbT/RRfg=; b=tkaxqOPJq/uqyl
	us2W1JmjFkjf0xxQWjtYxWn+UcAsmEOu41y2RFEgS3QJLrAq57Xd1xkmzaVyEKhsnMScSmxnYNhFW
	ad+4TI1rJr2NHlH73r4fn+EZPMXsVEMq39eckKr893dLhmauvGS4UycAa2luyig8HmRqxhnSsfX7t
	fRakx9/BQ9Oa1qQxd++2fi+fpJKkRTVZgwL65155D8WJwJNZg7Y1jLprGsOeS9iY3s6sYO+0GpY0u
	0Eq9odOBwU7n2wrRVg9F1F2pXvKWMZhbQWYu9eCKBEOiJY8VDuKZMfiPLPxvqZ1bKaLl5e7psKVT0
	D9f/RZPpP1xYEpjUaW9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piHm1-0089jm-2L;
	Fri, 31 Mar 2023 16:38:45 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piHla-0089Wo-0T;
	Fri, 31 Mar 2023 16:38:20 +0000
Received: from jupiter.universe (dyndsl-091-248-213-136.ewe-ip-backbone.de [91.248.213.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A20BB660319B;
	Fri, 31 Mar 2023 17:38:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680280696;
	bh=Ang+ol8X8tHG4i9x5VTtRkot6uyY/w6cOxfWi5Scm1c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QwU6206cSlpL33GuYUrw1iMgQBkFj8NHBmYX6f+w1cGMY1chSiqS60D5K+k1BRqIa
	 W9YBEJLyHflYZpD8ZxqbM2i1J6++vG8F36EeFC0pguWuPU9MATZIZV8nvzmAyFnz0Z
	 qjwuDtj5PChcV4wzSClIkSbQNPKmDLM3lI+/EQURXnuUKioSYsvrMecDO9xCFwzQCO
	 CsinIMQTAVv/cic/R86I9X5WqzGH6wjzQ3RHLyHL8dUkxGsOTxx5ebm7PTexNRQBws
	 gHge9bLXo0vozsFKbD0d46WbtbgR7rNYqh56e9Ik97PtG0Q1/axq2PnM6oDh5HItIS
	 /lxAPLkR7Bu5A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id E8E3C4807E2; Fri, 31 Mar 2023 18:38:13 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 1/3] dt-bindings: soc: rockchip: add rk3588 usb2phy syscon
Date: Fri, 31 Mar 2023 18:38:10 +0200
Message-Id: <20230331163812.6124-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230331163812.6124-1-sebastian.reichel@collabora.com>
References: <20230331163812.6124-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_093818_337128_DFD071E2 
X-CRM114-Status: GOOD (  10.71  )
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

The usb2phy is accessible via a syscon registers on RK3588, similar
to rk3399.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
That diff is quite hard to read :/ The first line adds the compatible
to the list of allowed compatible values. The second line specifies
that this node may have /schemas/phy/rockchip,inno-usb2phy.yaml subnodes.
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index e697c928900d..a873f74564f2 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -52,6 +52,7 @@ properties:
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
+              - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -195,6 +196,7 @@ allOf:
               - rockchip,rk3308-usb2phy-grf
               - rockchip,rk3328-usb2phy-grf
               - rockchip,rk3399-grf
+              - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
 
     then:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
