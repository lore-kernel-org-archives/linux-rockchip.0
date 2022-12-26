Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1157CC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 06:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7blNDF5HfPOB5vczbSDYE95AO1Q3PnHrhQlxjcfYPLs=; b=bfR8nxb3QiQJtW
	xjG3P2SXc7I3DCK4d1WwWxXG5xKptXHBObK1QMPzRaYfoEjI+E4kPojR5zv1w5qQItxnE0lDL4Vy8
	Ig4VXSlYHFmqQeXQDx6xxX6tzNChPE0QzIHO1sqlqtt9lus0d+/r3gzOo/7j93Mckgwd43XbUHYgz
	HNktmwKBVHXsLfOQ2NrQswije9Rg1Q1VddMxyxGX5OzR0paXBnI47tqHLOnynLKzApElIMdP7DXiD
	eh8T0JbymsXvA512ofuULkUpX9nD4giq14St+/rtXsha+hMWZMais5oSYL1XgJJY6+RaYCxMAbmJx
	lpfErZX6FlsNSTUsdJww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h6K-002IXI-Tr; Mon, 26 Dec 2022 06:36:45 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h6G-002ITt-3Q
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 06:36:41 +0000
Received: by mail-pj1-x1030.google.com with SMTP id fy4so10008071pjb.0
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 22:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QyEqd2PVsLQtBlO0g1CJLpuYJZzPUU1GAxcKYIzhawY=;
        b=EdxnySLRFTX3rqNJ/4GMnwbtg/1RaMLcV2mZTGeRNdlwywweKSeD5eDmbqA9jOU3QX
         aDrvmExpKF0MDmSVQONxbVtNCV+mNw84AQlq2967G6P31rpiUZQrYp89q+YtXGxL7b5V
         VHpktZo3tiOC0wmqkUp/I98/Epx70QYt2nfgnDwo1HfsoKDWSKUFZKrwqU0zHwwN8qTN
         kpbG6MdgRpxlSuuNvvWJRpLIIFgBLyeEbxTZON1oUa2zHvnrXsdCjLInCwZgVooy5Pb3
         fQQQQM3+YvIV7VqFlODx2+pOCfHffH3kiLREPsTHTI0nHaeMHyefWO7MVim6754f8jb+
         Hppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QyEqd2PVsLQtBlO0g1CJLpuYJZzPUU1GAxcKYIzhawY=;
        b=tuE/3WrvN1szEh+Yle8wTOTCZQfb1zKfZMTa+4Yf58Holjxv/Fd2opy4j8qkZgQyWC
         6UT6KS1vMJYAaEFt06auTnK5tEw3Z7tboUc7Vty3s/Xcqjp4N0JXnVL7R1Z4hjv3EAFf
         1mMKzA38FCoVQ3dGAqZdS0xETbz0JNs0YdAQ0ZVdfklwqp3CM2eLqZmIE4Awh6hOCepJ
         GtG3W1zY7RopnIIFY4LD8AIchnRb6LGDCbR5keFA0IziGOZQyB0ofE5P9Yw0tbahK7Ff
         9/NoIKvQ8nf8cpFH1XnkVY6fK8Rj99innGA0hKfZAnBHLQeHjdmcCTLaWdcdCW+C+Be5
         1SbQ==
X-Gm-Message-State: AFqh2krY/P1Xej4AGUJ9Mp+DKfPWv9Vy0Ref8RtC+mLHMW/AI+LdxYPh
	kCb6N4xaWBNmAdkHiY5GieOqyw==
X-Google-Smtp-Source: AMrXdXvgSx1AaYCgFjX1t5DhrtDXePyDgmbNAy5h5LshIAGiVY96/pgizVT4a00Ryoh0kJTExtlL4A==
X-Received: by 2002:a05:6a20:4985:b0:ac:a2bb:96e6 with SMTP id fs5-20020a056a20498500b000aca2bb96e6mr18549643pzb.56.1672036598255;
        Sun, 25 Dec 2022 22:36:38 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id 31-20020a63145f000000b0047048c201e3sm5730659pgu.33.2022.12.25.22.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 22:36:37 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv2 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix rv1126 compatible warning
Date: Mon, 26 Dec 2022 06:36:19 +0000
Message-Id: <20221226063625.1913-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_223640_224686_D5FAED73 
X-CRM114-Status: GOOD (  10.74  )
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

Fix compatible string for RV1126 gmac, and constrain it to
be compatible with Synopsys dwmac 4.20a.

fix below warning
$ make CHECK_DTBS=y rv1126-edgeble-neu2-io.dtb
arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
		 compatible: 'oneOf' conditional failed, one must be fixed:
        ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
        'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']

Fixes: b36fe2f43662 ("dt-bindings: net: rockchip-dwmac: add rv1126 compatible")
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v2: drop SoB of Jagan Teki
    added Fix tags and update the commit message of the warning.
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 42fb72b6909d..04936632fcbb 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -49,11 +49,11 @@ properties:
               - rockchip,rk3368-gmac
               - rockchip,rk3399-gmac
               - rockchip,rv1108-gmac
-              - rockchip,rv1126-gmac
       - items:
           - enum:
               - rockchip,rk3568-gmac
               - rockchip,rk3588-gmac
+              - rockchip,rv1126-gmac
           - const: snps,dwmac-4.20a
 
   clocks:
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
