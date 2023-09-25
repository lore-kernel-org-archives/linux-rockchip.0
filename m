Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A557CE79A4
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 21:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=izsFzj8JrZSCErC04ULI/9kk1FUyZtz35e3ualN/nz8=; b=q1OuLOIt2HR0rR
	Mq4ximf6o8WTVqbV6kc3iBSsRP429KZUclnbcphQErdnqqvsmzfJtDSFSw+P8n+EI7dJLZ7I1p3/3
	AAWlPbRE3pMPnbpW5gzhb6ugnRtpLJaKL6/e1kWokfXwAkX0CP3ChqIJaIqmCgQHRuIvIax0Omo08
	WNOR5fDBBOwHoroxmgHR4SFXQqMWxtVY+KmSnjrQ+1JOSn45m26GV3ncTHfGL9sRfRhR6trh8jIYr
	iiAgdVjtLgO8TWrYxESM1VSMHCY8Fu3JsH4IeQcvTtl6m5Ujo8CNLxO+XPfPV9Wp/Crb569elRpFH
	jywEkRBC8DBHsRWWglJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkt65-00F2ya-1g;
	Mon, 25 Sep 2023 21:26:29 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkt62-00F2x7-0L;
	Mon, 25 Sep 2023 21:26:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7D7B6B80D77;
	Mon, 25 Sep 2023 21:26:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 955D5C433C7;
	Mon, 25 Sep 2023 21:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677183;
	bh=1PB/pYP1liA58pkSr90IN5P1R7dQ0eEBwcs0MZq2wKI=;
	h=From:To:Cc:Subject:Date:From;
	b=aWOVKf74D/+9i6FAzCEu4Ko/aqpoIRb5K2HZCEc+9dbhXlMfAWCAxvkvWdcvCCUvt
	 okgUSr6sC1B9XgQ6HMREHhFNnNhxaZLdcWV2EtlMBswYnUMK1jjSGAev2l8hi5tW5q
	 ApUuxPb+2NSqs2Eg7Ky7yQG6NbDu4/Tnhb40QeBZxxkEhsq2dbibhctiqYgv6LmbX4
	 7mUqnZSOC/TgIR6TVollDXugCNm0fa1Qw2rkEf1UuEkv+xBpIAXG7dQLwWf7WH3lUe
	 f4oBOqFFBv7CYZBtjbNCPte72Nm0Wk/LE+Ri9aHyYL8I4LRB0O2Nb5DxhJIpkmfgSR
	 rIW2a/dVvX0Iw==
Received: (nullmailer pid 1974640 invoked by uid 1000);
	Mon, 25 Sep 2023 21:26:18 -0000
From: Rob Herring <robh@kernel.org>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, Serge Semin <fancer.lancer@gmail.com>, Maxime Ripard <mripard@kernel.org>, Chris Morgan <macromorgan@hotmail.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] spi: dt-bindings: Make "additionalProperties: true" explicit
Date: Mon, 25 Sep 2023 16:26:00 -0500
Message-Id: <20230925212614.1974243-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_142626_470170_6EA85298 
X-CRM114-Status: UNSURE (   9.21  )
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

Make it explicit that child nodes have additional properties and the
child node schema is not complete. The complete schemas are applied
separately based the compatible strings.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml        | 2 ++
 .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml        | 2 ++
 Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml | 1 +
 Documentation/devicetree/bindings/spi/rockchip-sfc.yaml         | 2 ++
 Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml      | 2 ++
 5 files changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
index a6f34bdd1d3c..e1ab3f523ad6 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
@@ -46,6 +46,8 @@ properties:
 patternProperties:
   "^.*@[0-9a-f]+":
     type: object
+    additionalProperties: true
+
     properties:
       reg:
         items:
diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
index 28b8ace63044..3b47b68b92cb 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
@@ -68,6 +68,8 @@ properties:
 patternProperties:
   "^.*@[0-9a-f]+":
     type: object
+    additionalProperties: true
+
     properties:
       reg:
         items:
diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
index 9ae1611175f2..48e97e240265 100644
--- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
+++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
@@ -50,6 +50,7 @@ properties:
 patternProperties:
   "@[0-9a-f]+$":
     type: object
+    additionalProperties: true
 
     properties:
       spi-rx-bus-width:
diff --git a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
index 339fb39529f3..ac1503de0478 100644
--- a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
+++ b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
@@ -47,6 +47,8 @@ properties:
 patternProperties:
   "^flash@[0-3]$":
     type: object
+    additionalProperties: true
+
     properties:
       reg:
         minimum: 0
diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index a47cb144b09f..6348a387a21c 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -160,6 +160,8 @@ properties:
 patternProperties:
   "^.*@[0-9a-f]+$":
     type: object
+    additionalProperties: true
+
     properties:
       reg:
         minimum: 0
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
