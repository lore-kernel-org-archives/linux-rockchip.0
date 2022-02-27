Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AD9BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9Uv1TZIcI42EdMQEIhBCHY2Ol23AYhXP6JFNMzA6Ic=; b=y4VA7FAt1nCA/7
	HLarNaHSmx/eW5fP7PbBYSkQngOCK2aorfXJQ/Y8ZAt0/3hBdT3sFOOxaPVhGlohDMxwBE8GKwqgZ
	ziKHEsWlCkiYz/gjR60LucRZEWnjBgZP+2pHM+9pCTEP32n4g8NLAya5creK3uMKyBQFRTr6VNZU3
	H1Es61QhGUhipURWLfvyPhfCLijSzcFT5hCb1nJdoqriGURu8CNOmiRP/vet8CD9mGQKwWd4n1cv8
	D3iJ6YsBBqkSgtpA9COiJKqEJ3y2L+qSroQ2yy98hor4AHwoJhG+xmHF9CWnukH9aI7uXkZ89xzWH
	P/41r1iFRG8Ks1P4c9KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLVK-009ZHg-RB; Sun, 27 Feb 2022 15:30:34 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLV6-009ZAf-TX; Sun, 27 Feb 2022 15:30:22 +0000
Received: by mail-qt1-x831.google.com with SMTP id b23so6957325qtt.6;
 Sun, 27 Feb 2022 07:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RL6lgc9JQzCOWChXKBrpjhVjZkUp1FLcriOwSbYz2iE=;
 b=hvgOgznrh30xXh+nkSrsBMPkCB4ujzOxoGmBK/u9VRcgkqwymxg6Mxu8hYKJG8vCnc
 YfmFcT74a7dYNXyvozTgKNHdwRcPRmd8KP0iZX2dIbRbL/9rT6caMH7Tfke0C811BgeN
 QvWQvpWPeh5n8G4wUOZ2BV4IdUF1Djv68inIz+GeeIQHbV8+zqmWxMU4hhdPwPWP23Ky
 2bbbvy+DX0naoadktFKmGu2zqbYwZpZLaTi4NKwoTQh3ZXFaYFQJvc05p3g5tlBR28p/
 MAteWdW/xil/F+uzEsEwvIUJQ2KHObSBEDbTJNTfVwstTk11sOiwQR2S4fo1AsHWoIXN
 G+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RL6lgc9JQzCOWChXKBrpjhVjZkUp1FLcriOwSbYz2iE=;
 b=gaZq4fprHicjjCD/i8LEXlDv9Rv2w3zYMPgVvK+jhp1KA2UE+sJd4qhAVQ3dC1irR8
 /r7jwcOEWu0Q4ipR9/iQyAqEblviLXujIxRkukBmGsToWO0Ow5yv6lJs61s6T05a5sv6
 dO4ZSlXaRTJEs5zx7XCqLf1LM53MNsMHcnog0gkgpbY8ZhwJcCvD8ds2vJw2QG4Qj57K
 o/pz8QLELx43h1k/JAGIBT9CepI8b2y7nh9AccT9v3dqxSIMMW/iiA6nxdlSIT/dkv6/
 C4DsYa+eGg5nunV3nIgMPi/TzvoYMj7FIG8qea5njwMqkbbbn1E0nll4UHls/iAdbN9p
 TK7Q==
X-Gm-Message-State: AOAM530wWBJr67V1StLphA01TaoeCGjcgSssgOeXxdlatG+T6gxW+PJT
 j9xpi5RRfKx/rzzfJOHYhPzdjXtNSy35rg==
X-Google-Smtp-Source: ABdhPJwsjJ4rXnuZsZt6SzbdunncOBf1dPZk6WG4fCqgA687+tb1CfuSAGeppBjNxh0cIZG0GwXynA==
X-Received: by 2002:ac8:5993:0:b0:2dd:c4df:35aa with SMTP id
 e19-20020ac85993000000b002ddc4df35aamr13528206qte.369.1645975819897; 
 Sun, 27 Feb 2022 07:30:19 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:19 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/7] dt-bindings: soc: grf: fix rk3568 usb definitions
Date: Sun, 27 Feb 2022 10:30:10 -0500
Message-Id: <20220227153016.950473-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227153016.950473-1-pgwipeout@gmail.com>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073020_973225_0FAA77DD 
X-CRM114-Status: GOOD (  10.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rockchip,rk3568-pipe-grf and rockchip,rk3568-pipe-phy-grf
compatibles were incorrectly assigned to the syscon, simple-mfd
enumeration, vice only the syscon enumeration.
This leads a dtbs_check failure.

Move these to the syscon enumeration.

Fixes: b3df807e1fb0 ("dt-bindings: soc: grf: add naneng combo phy register compatible")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 072318fcd57b..5079e9d24af6 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,8 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
@@ -39,8 +41,6 @@ properties:
               - rockchip,rk3399-grf
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
-              - rockchip,rk3568-pipe-grf
-              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
