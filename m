Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D2DFC001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdHSf/3bUwup1gEDZY6GZKoLznIQiQtKPSDDBSyzk0Q=; b=jXtcYX07pJxY1Q
	o8pkk0C9EvoL8HEOe1TEfWIX2aVr7Ktcf8clhUVNxtVgZQUK08CNBZAueqas0K/1km9vl9QGI/cc0
	Ads3dYOZr4iemxgX3cRu+dq4PKZyzr2l2uFITXiikXpeDha4mgDaTmBEUqpBMoe62btspDAQ/j9Hm
	TKWDENJmO2y85jAIV5B/sJ0SIqv9ViQwCQ7wyb/Ygxem0VIuWEVCEiGL3wIRbNNH1+RcnOPrniBXJ
	e4bd8F0pyRaAfO3uKdZyORfEZkNHPTdV4pazNeTV0iCVtE4eBA9WRXdLllRzbU4hK4YbA/Qsk2IrL
	OocVFA1YGd7m76y/3lqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdw-00FEP1-2B;
	Mon, 31 Jul 2023 11:00:52 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdl-00FE9r-18
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:42 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1bc0d39b52cso5289315ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801241; x=1691406041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d/dEqRGg68M4eDYviYv5iZ5FREu+8Zk3M+fIpiipGM8=;
        b=wdpGiFO3eQkg3tLYWeeGQ2FKuFQeB+nMnArDI9HqCYtMCGU9n3Q8I2pJjMiTrUEI4T
         KMV9Xg5eDNKBD1MKfJ6oaudA2EngtHtfq4dtQ1xG0DGeawaOS+0MzeF7LDmUq17cTkPr
         LRoLpQfrpqjM3bVEnLx7e594gSuS9ucgg0ua0gmanggBnARSjZnONFWIBNZdRH7i67lb
         Ll+FYKnNhdfQsLRsdc9pay00UJ3OwfQmUFGMsm9HjCW8S43Q2jTPd8cI0kSEKUZ6p3yf
         BQsumaUkmGfVD21xbI+NLQe8J1BFI/d4kHSWm31UHRB/kMtq1spyJQ20ZdJyiDehSpYn
         DNLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801241; x=1691406041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d/dEqRGg68M4eDYviYv5iZ5FREu+8Zk3M+fIpiipGM8=;
        b=QMda5vJnDjeowluZbbVvyodD33Bk5eM8e4hUWQdZKvJhN3zFfp13okT5Z22jBCvxs/
         95kWWnGklxz766QDtKobGrX2mFI+AaMm2RWW33WpkEkkzJUrUcKVgkAcTzHQby9RiQiK
         6agBiHRVn01q2MnodDAwWzwkAnR7NZoALmK9k1ggXnr92T/4lx+zDxtxHOfYYnO18hYO
         6u5BiEmHHHDpyk60ftX0CaCaZ9JRNG+gIJ6dB3Dw4DYoSmcUvfYsECibvGAqpc3z8H+K
         orv2qJkbhLMzFs8ZXPR3hxnHBt5CXSzM8HhAcksvaKGp+0VFP4jvHfWhTiw3ezF8rvfg
         wEHg==
X-Gm-Message-State: ABy/qLaDDy00t04vEfb/RBpQP1vMAHl6GixWlCj2wcnp05pH5sdQ2MWp
	qMtzehbBlXvu3eaf/f0Fwi2U2A==
X-Google-Smtp-Source: APBJJlGYFd3rzRij7zv9gQDyA93YIQqoTFA5YyhYeAATlxG2yeHK6/pJtE10HCfOFvjSXOZxiMytrA==
X-Received: by 2002:a17:903:22c6:b0:1b8:41d4:89f with SMTP id y6-20020a17090322c600b001b841d4089fmr10528440plg.4.1690801240846;
        Mon, 31 Jul 2023 04:00:40 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:40 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 05/14] dt-bindings: display: rockchip-vop: Document rv1126 vop
Date: Mon, 31 Jul 2023 16:30:03 +0530
Message-Id: <20230731110012.2913742-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040041_402405_539A9999 
X-CRM114-Status: GOOD (  10.04  )
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

Document the VOP for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>

 .../devicetree/bindings/display/rockchip/rockchip-vop.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index df61cb5f5c54..b339b7e708c6 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
@@ -31,6 +31,7 @@ properties:
       - rockchip,rk3368-vop
       - rockchip,rk3399-vop-big
       - rockchip,rk3399-vop-lit
+      - rockchip,rv1126-vop
 
   reg:
     minItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
