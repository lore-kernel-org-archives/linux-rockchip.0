Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EA4CECAAD4
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 06:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c/s+SPxetz7B3ZSnOEtv95IDiIGswf/zChJUrCIfbgY=; b=ozJU5AZr3AF94z
	dGCbidhiVooOs6NVjBQ9vs6R24JEWJCvNr+RmIielcmVLf4S4ThCTwpouuJyvDSaaFEhCnpMzGbbD
	4ThaZnG95dIerEpUj6RFoLyl8clu5513SdKRLVwt4Awn2bLM7Qv3NiUh1vcAuK+bGD/rfP1BNBKnq
	+K/oDUAwsMjmNEFEfdeuUoOcaAVa5mUJuB3LsFMgJf0gugr+gWO7Xc2wCyOCWsTly9UHy0ff5bwBM
	QggJXKsdCZZuQk/H4EwvLsMr/7AA3m4kVM8NCYiLRcr8/3zUqGRLFD0LQg+u4wUvOZg67IM4+29n7
	xtr3yK6OG9hY3/gPnk9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSYev-005Set-8b; Mon, 29 Aug 2022 06:54:09 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSYei-005SXO-A1
	for linux-rockchip@lists.infradead.org; Mon, 29 Aug 2022 06:53:57 +0000
Received: by mail-pl1-x629.google.com with SMTP id x23so7082096pll.7
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Aug 2022 23:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=oNF3DLPEKA26Di+mpF1fWdN9sKEfroJeBJj0DtHKDGY=;
        b=dkqetvSqnaceCbhc1F0YyhJTZ4pds6WUrC6W87UpV7KTJ0hI4mBsTa1gfvooDAZPiZ
         clU+xYbSMQdPA21yWdd7/izK/QQ9qQIBuB5uhoT3xPBP9bCGb0Sz6L9hcuJGtzjT+YtW
         qPzqr67f4an9pfC5Oy+jHh79ZuSaTs6DTWC1JfF31K/xXr5Pj0OZjxXNkQCM1LaAKFyV
         cgCl6F1Ky7esI5WJvet0wby4O9zDOhFo7pzD5HxbW03nqY2DMyZt65FxnOZa4X0kEDfm
         19t7wYB8F4KLyRz5UN175PivAb1J5640k8lce3i7RSk5g8qCKIc1fuyAY15cW5Na83p0
         clZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=oNF3DLPEKA26Di+mpF1fWdN9sKEfroJeBJj0DtHKDGY=;
        b=Go4xOZcnniYJRXLAAPh0GL31LmdsFAugqZokN/WGkTYmyDJebxUuABhUY3gIJpbUw+
         +4ogSp+/80TKxAfExECB4xfMOblD9bT2ykPLek4AnaE3rpKL+CXp3t3flo5e3oh2frzJ
         /0D8+9Scgxz8Qdmv/g9+eZtjNedC4fKcd7c1An7zJicBWhaO9YHv1eS2RKdJ9vMZ3K+R
         00a60bm+LS/tRmVYZbmkoBsbaijqeOsjaVFgw8a5hVEY0BH5vwg66pUzJlVyt46j7PvU
         C9Kx4nGK8mDqGqDQvQA3Wfc4ITHBPKR1OLMD9bZ7bN4c1GlUvGx/+ybY8FeLJbjeIDYi
         e2+g==
X-Gm-Message-State: ACgBeo0mhgDwQS96yPLmkPCg6L3sMtE5zmhTq/UFFWtdJ/B7fLcaV7qC
	bVB3nx0v71qnCBUz2K/K8d2XPWl1bCCGCQ22/nE=
X-Google-Smtp-Source: AA6agR4EYLnKQyPXSeugxtSppIBJwCo/YTsNTMCQBiXve4UMYXufSVevVA8IRSIfdhYj71sFJx2XHg==
X-Received: by 2002:a17:90b:1b49:b0:1fd:dccc:91f7 with SMTP id nv9-20020a17090b1b4900b001fddccc91f7mr1922381pjb.200.1661756032840;
        Sun, 28 Aug 2022 23:53:52 -0700 (PDT)
Received: from archl-hc1b.. ([103.51.72.9])
        by smtp.gmail.com with ESMTPSA id k3-20020aa79d03000000b00537d4a3aec9sm5687314pfp.104.2022.08.28.23.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Aug 2022 23:53:52 -0700 (PDT)
From: Anand Moon <anand@edgeble.ai>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>
Cc: Jagan Teki <jagan@edgeble.ai>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible string
Date: Mon, 29 Aug 2022 06:50:41 +0000
Message-Id: <20220829065044.1736-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_235356_562089_94DDCE94 
X-CRM114-Status: UNSURE (   9.69  )
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

Add compatible string for RV1126 gmac, and constrain it to
be compatible with Synopsys dwmac 4.20a.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 083623c8d718..346e248a6ba5 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -26,6 +26,7 @@ select:
           - rockchip,rk3399-gmac
           - rockchip,rk3568-gmac
           - rockchip,rv1108-gmac
+          - rockchip,rv1126-gmac
   required:
     - compatible
 
-- 
2.37.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
