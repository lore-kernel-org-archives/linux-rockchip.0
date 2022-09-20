Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFDF6C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 14:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CHG0QWlLm9G5Up27bhwm9DpcXGNQ9V14TnuqTWuQmh4=; b=zPGbW/9XfMdERw
	5Gn370a2IpxanpVo1fz/nLq9oqTvI8iwAajjyHYUM0coOfsFCcXmKsX4y2GXgdpKe1yAB8oQM/2GH
	J1c/2RytlGd1aHoU7heFAuAn+uN0zALA/RpXXI/GJtj3HTr7to5irWLMyzYKBCWpmzZTBI7psET/n
	/ZkeGheeIvoHIhum49UK93XeHCOuYkrkY+K110jEJjvntz7ucH34YMcqrRMJJnYwlTfFCEPlU+Vj1
	FsRC1/A6QnYjsFM3zDiiQMFW6im7Z6PmZAtM7D5w4GwO3vLKgbLHn8cG7E6VZhhj2PZikUL3lUtQr
	TVEKBfNMc+WJXY2l8qXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadww-004MUy-MZ; Tue, 20 Sep 2022 14:10:10 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadwt-004MS9-BY
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 14:10:09 +0000
Received: by mail-pl1-x632.google.com with SMTP id t3so2514603ply.2
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Sep 2022 07:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=QPxEn/eAqZz49dBAsNJltwqDSnOVtKaOrJil3gAFfRA=;
        b=N1PWe3VdAKaEJkhr6bQzq/58UH5Sue2qiNbAqdjfQjsdDK6LY2n/NuEGkr/00VMU9W
         xb2V3+oi7ydfMqeGmh+AvRKBE8TIPQ6nEH9I8fOfZQDKWGowIz+1QiAFw2YDXJ3LzOJi
         kU+pCrBvp5GadVnVfjsDzKMhj3aO74rFJAWRpgoOM9SQl1JbH5y4V1oA2VedNqZfKpaP
         zhn+ZJiPHPewpHqouU+UywK6VvaZAtVHPYtf2L91uMa5tSxfeoLtNjYdDL1BnqPu0qyU
         JK+fYDH/iQQxc6Y8Zj6xvFjjxdi7TnKXWNEr1gGaXks9PeWD5iFfKc4jCWZZFUmG2bJS
         OlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=QPxEn/eAqZz49dBAsNJltwqDSnOVtKaOrJil3gAFfRA=;
        b=jPCtass0MHUu2+vvJXwWNeyEMTYqSXfFXzcTz79mLLQVLuZdxAHjnZhJkh3DGOrR2R
         uhVjQs8JXvSfJti/+3pNk8zWwxTq2gBwvRvqdxTB6lYeW+w8EaE+62UNMO2bEi7V8Jq6
         r4ui3q/EQSzKSShNLEuT0oquzMCw7bTM19FrlCUI3OSml+h4quEBdk0IWVpeqf+PiBc7
         LWstMCOtyLfriW0ZZ/KRaAn8xpis2+MGSkHf+OnMJ/nRTkykpRVBb9iB40ISkiKYKLCl
         4Rnu811VQmZ+mOETYknY+Srb6tCnMXLYwXSsuPu86wEKn95Yg8SA7kYAg1KuDHcGqFjB
         3Ygw==
X-Gm-Message-State: ACrzQf0HVR7aSdPkhq82l3TjZd+4Ij9vgrTVmDfzEuyYhU89CBF4aCxI
	TYHJoBE8xD2QqyTpMZLrQcNiyw==
X-Google-Smtp-Source: AMsMyM6lgdYkRh8kQx8SNnSS7OR+Dv+YX3GkVF950OMZj/IKhWpp/fejl4AeVrW6Ag60qZ6Iep6E7g==
X-Received: by 2002:a17:90b:1c07:b0:200:9728:b8cd with SMTP id oc7-20020a17090b1c0700b002009728b8cdmr4212275pjb.139.1663683004240;
        Tue, 20 Sep 2022 07:10:04 -0700 (PDT)
Received: from archl-hc1b.. ([103.51.75.120])
        by smtp.gmail.com with ESMTPSA id t9-20020a170902e84900b001782a0d3eeasm1499858plg.115.2022.09.20.07.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 07:10:03 -0700 (PDT)
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
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v3 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
Date: Tue, 20 Sep 2022 14:09:40 +0000
Message-Id: <20220920140944.2535-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_071007_616075_0DC18B78 
X-CRM114-Status: GOOD (  10.81  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v3: added reviewed by Krzysztof Kozlowski
    rebased on linux-net-next
v2: add missing compatible string to property
    added reviewed by Heiko Stuebner.
---
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 3c8c3a907181..42fb72b6909d 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3568-gmac
           - rockchip,rk3588-gmac
           - rockchip,rv1108-gmac
+          - rockchip,rv1126-gmac
   required:
     - compatible
 
@@ -48,6 +49,7 @@ properties:
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
