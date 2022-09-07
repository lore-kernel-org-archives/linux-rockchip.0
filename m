Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D2E4C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 21:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iRsdPXwZcmKB+6ivc5vF7kdAa15d076q7cyWsWLez7I=; b=CjHDMf3hInEHzk
	x54C4biRo3GEMQln2ZZX9Eot3qYTGFSnFLOn08OoxXQ522RJ4vKNK8AQ42o4fXmN9+MqvVqRUoxzC
	yANP8GDxX6SHnoTjrCTcFTMN93Pgjc0EtlRVY3C+3FRZKuT/Qx+cT+EQK5sqeRhAfKeijuUpTcQ5W
	U1IltbgKmNXrQv+1DIn2ruYglBZ5fXjwMObpOh3B7ax4796qZhKjpa2TMUAqVbR1IVFTSHaQLU40n
	QO88jpyENVKXvavx7T937zi28xjscc6m4zp8GjjoCktCAjMLWQqP9t2e3URoaQsb7s65GfMkoo8jb
	BDpipVFFt07O2ndVVBMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW2GN-009vKy-2I; Wed, 07 Sep 2022 21:07:11 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW2GJ-009vEh-RI
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 21:07:09 +0000
Received: by mail-pf1-x42d.google.com with SMTP id y136so10889127pfb.3
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 14:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=tm5/tm/bOKGw+ZnlX8h2AbJd7n/3kcmAPIwiCqemhIM=;
        b=x7ypNYi2j2uvb8XQ9craSoAh2QNE3532j+e+pZG6ZhxotdgrQgsztR4QwOhk5485Yg
         ZYQ439NwiR04A/2DWciEI4MqLu+Ay2Jt2Izj4I/uzLYqz77oMWjcZZxlr9e+u1dHV96n
         z3Svs0OdnJkfwBaMcdAq8+qT3PqaXmAP1GSOflxkFcsP678j3vlrUN8qMCLVuOugw4rF
         y8z7P1Czucmb1QSWC2a/hb5v0Q5lP3SvANK8TSpbKTw5ao9H68v4Z77W9jI71uqsIUs9
         maT5vsRIJ7F/eDxUr9k0eGGr4msmgmamcpae7Jy3tUE2RViDRHov5J1aVFmsRk3Zwehz
         kMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=tm5/tm/bOKGw+ZnlX8h2AbJd7n/3kcmAPIwiCqemhIM=;
        b=76L6T9yMID2FmCO+Bbp1pFvmJJJE+MefWLhCyMj1BRBrjxikjhwEQdB85BWUH1DyWY
         sM17Wo+xL/Q77A5ER93FHQ2O0LrfG77gax1ywoPOz9FTl389G3W0O95V9JSASpKcyEMQ
         C93B3Nj1rhJPpzzN4r2bCB5j72OvL/33TSwv6MBqNKZmX6vNdq3WdV42TiY5pYsq+O0j
         EdiBqwItzEDjEZSwj5pEiNdp+mVr6w0et/8E/QpmeFIDffftPpHP9nqQjNqZJYN68kcD
         ZM2RtKp3cWucTByqxHGB+mFK85QCEFD4VOcQ7KMcERmQ4KQQIZG983zo1NxQFabJeiVk
         gGrA==
X-Gm-Message-State: ACgBeo1i5EUFTcG0A2EQLjpfwG4BBGe5eBt/l3mQnbaU6xdxUEIeLLS5
	l8BNpavI1KaEO3scS/xUfvlm6w==
X-Google-Smtp-Source: AA6agR6KR05rx/q/yr2bK+5wDAzujpFCnEW70ybxCculrOSDfSrMK2grU+8l7dxRUgRSY5z/y1pe5g==
X-Received: by 2002:a63:1c2:0:b0:430:710d:4c85 with SMTP id 185-20020a6301c2000000b00430710d4c85mr4980472pgb.12.1662584822610;
        Wed, 07 Sep 2022 14:07:02 -0700 (PDT)
Received: from archl-hc1b.. ([103.51.75.56])
        by smtp.gmail.com with ESMTPSA id c23-20020a63d517000000b0042ba1a95235sm10999198pgg.86.2022.09.07.14.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 14:07:02 -0700 (PDT)
From: Anand Moon <anand@edgeble.ai>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [v2 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
Date: Wed,  7 Sep 2022 21:06:45 +0000
Message-Id: <20220907210649.12447-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_140708_066362_438076FC 
X-CRM114-Status: GOOD (  10.77  )
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

Add compatible string for RV1126 gmac, and constrain it to
be compatible with Synopsys dwmac 4.20a.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v2: add missing compatible string to property
    added reviewed by Heiko Stuebner.
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 083623c8d718..b28bc6774bf0 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -26,6 +26,7 @@ select:
           - rockchip,rk3399-gmac
           - rockchip,rk3568-gmac
           - rockchip,rv1108-gmac
+          - rockchip,rv1126-gmac
   required:
     - compatible
 
@@ -47,6 +48,7 @@ properties:
               - rockchip,rk3368-gmac
               - rockchip,rk3399-gmac
               - rockchip,rv1108-gmac
+              - rockchip,rv1126-gmac
       - items:
           - enum:
               - rockchip,rk3568-gmac
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
