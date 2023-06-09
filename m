Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F332CC7EE29
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jun 2023 14:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wY+XFTeeVMLk8kNc91k2nogj6VOh2CA05JKreSsE3Qk=; b=mz7kbpd+PB/QQn
	/w8IR/vDnw82ACVDYpu/BZfPvHy9hvTDLrxcOypJ4JH3WoNY7TcJh3naKE8N2Y54WBFRewb+rXWWu
	CJ0xjXM/t/DGMUALjeEu/MNGvuVQ+zozN68vkq8masWH5nlmH1N11HxFgMVPYUKclwczY9ruME/LF
	Jx3Z5pmMejbOSDeDRIToeFd25rHtodi8tR4qRlK1NGDMy1yNB3qtWUBVVVRiWWLyLBqhpI0oLo6Zo
	1oHlyyBDKoWWnosOyYbC+6K2iGiVtNEs9z8QtJ3whP4uDHUmaA7msjco50pKn594Q+GOmP3udaZLP
	Fl6QK3MExjRQ6kfnebAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7clq-00DCTZ-1M;
	Fri, 09 Jun 2023 14:07:18 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7clk-00DCMR-3A
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jun 2023 14:07:14 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5149bdb59daso2733945a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jun 2023 07:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319626; x=1688911626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OToptLfKkpAj+EMrcxNGnflmwbvM6WNt+MwCx6/njFk=;
        b=o/aNa3DxA3cMiE+xzApZI9BwyjcEuMYHmp8UTzc2gUPsdCh2SbdVkEvR46tZcX24OM
         4oXv6GWZVCkJxsTbvmSbkbV8/El8rjidT1vNJkk8r2elfgeWTg9hYRQ/Eszq/lbmBMD0
         8kjZl940Noy5PBv6lGeLW9Ws9QS3nBxpTeqM5chjRqRd/Lu4B5PasQNfzVeExBqZ3d3L
         h/RCTjbUQeQer335wdG2ziHx18ZhTQWtrhjwFRP9JLo07XLPUMXk6FEiaRxoIpkBh419
         2LAvCS96sI069WaM7Zfp+P2VX4vOc6b141G1b4VBHHu+4E2I86SXoaBBLR8RW8V30dx/
         xarw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319626; x=1688911626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OToptLfKkpAj+EMrcxNGnflmwbvM6WNt+MwCx6/njFk=;
        b=U51BFu3RgHeRFd98DZcGldS6xAV0n5ME/1Ii9hYgR/HObdGJ/t2mPqfRczmk9tUBxl
         gRlLkQu2mqa11EtrLk+TsQsn5PAaL+23cxhOE8R1nHh918PpftRflXAK1EuynNViLGRT
         8Pc57+NynGd9BVCOYTyR6tYhROzqKhZeCuPeFcIQpEYIblWqDDTjxPuu3dKOzhWbiGnv
         aipBBRO+K0+8AbBUDpfV3YlxsdpzkQmMEUckLNwzrqHtx8+tyz+1MnQGA6dlGR2p/nCz
         h5ikG8uMauX/nWB8atpwBOSCgTdZDfBp+pQ+96SL70NBdpWN4a3szsZAINntVKWTrLAI
         BgiA==
X-Gm-Message-State: AC+VfDx+GvtQeHKLNVbsh7QSIcEzX2KzPC2aeGC+gEwcPFnAX0WVBB1J
	uVEMYFZkZwVs0W63q5GIUMGVKA==
X-Google-Smtp-Source: ACHHUZ4cKa4ceRDfYpuqBNzldnl+6HGlfQBymnqN4Qe8hvlJWFONnyWZIwMKNaSai++5+c4RkU3c3w==
X-Received: by 2002:aa7:cd66:0:b0:514:938a:67cd with SMTP id ca6-20020aa7cd66000000b00514938a67cdmr1166102edb.38.1686319626157;
        Fri, 09 Jun 2023 07:07:06 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7c74d000000b0051823c1a10bsm61961eds.54.2023.06.09.07.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:07:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: rockchip: grf: drop unneeded quotes
Date: Fri,  9 Jun 2023 16:07:02 +0200
Message-Id: <20230609140702.64589-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_070713_047150_250AC26A 
X-CRM114-Status: UNSURE (   8.56  )
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

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soc/rockchip/grf.yaml        | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index bf2370c66ed9..e4fa6a07b4fa 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -121,7 +121,7 @@ allOf:
         usbphy:
           type: object
 
-          $ref: "/schemas/phy/rockchip-usb-phy.yaml#"
+          $ref: /schemas/phy/rockchip-usb-phy.yaml#
 
           unevaluatedProperties: false
 
@@ -136,14 +136,14 @@ allOf:
         gpio:
           type: object
 
-          $ref: "/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#"
+          $ref: /schemas/gpio/rockchip,rk3328-grf-gpio.yaml#
 
           unevaluatedProperties: false
 
         power-controller:
           type: object
 
-          $ref: "/schemas/power/rockchip,power-controller.yaml#"
+          $ref: /schemas/power/rockchip,power-controller.yaml#
 
           unevaluatedProperties: false
 
@@ -158,7 +158,7 @@ allOf:
         mipi-dphy-rx0:
           type: object
 
-          $ref: "/schemas/phy/rockchip-mipi-dphy-rx0.yaml#"
+          $ref: /schemas/phy/rockchip-mipi-dphy-rx0.yaml#
 
           unevaluatedProperties: false
 
@@ -186,7 +186,7 @@ allOf:
         reboot-mode:
           type: object
 
-          $ref: "/schemas/power/reset/syscon-reboot-mode.yaml#"
+          $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
 
           unevaluatedProperties: false
 
@@ -241,7 +241,7 @@ allOf:
         io-domains:
           type: object
 
-          $ref: "/schemas/power/rockchip-io-domain.yaml#"
+          $ref: /schemas/power/rockchip-io-domain.yaml#
 
           unevaluatedProperties: false
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
