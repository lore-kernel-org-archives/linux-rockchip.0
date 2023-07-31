Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AEC6C00528
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GvCUgXQMqND4yfzSyakvLAMWhMbrCt2r42xps39m9g=; b=IGoEwcNTn2neu4
	AkFtatcgupamR4X56LNn7oyV4xmzS7SxYAkXV/bzJghLSZlNnNJ5UHU9JE9UASL+anKWL7iXWxiOF
	kp9dXsFp7f8qZXP2jEG2u5nA4IWre0jFASK0dWFjfVhnyixAJN8clXrd3ygaJ1Hz/gjCFaTgIQ34F
	OZpuAYkimDkgeAQGy9s6892xYZlQoq5K16PTsI9V1P7KOFw3wYlDQMu//Xw2ZRfb8565/PkHDAcnl
	Ol8pXDlgHjz0bdl84PgTAXUzntEg0USKfAcduRXmL6RE8nmHKMyxi09YNFpLz/DXjqgjWW9WFUKpC
	JOPhq1Q17bWJEZCioDHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdu-00FEMi-1M;
	Mon, 31 Jul 2023 11:00:50 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdh-00FE3T-07
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:39 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1bb9e6c2a90so34523245ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801233; x=1691406033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1jP0HLi5iSHOi8Z3s8AoTEtv1xUnfOh/1w4uA8oZ1C8=;
        b=2FgELMPX0iC03w8yv5a+jHnW+r6p/iK8CdEQAmkhGrzD3gBhPxC169nCe+ztk/F1PP
         nFvxDdvhJj6n2aqLEXqpK0dzEH83J/QLG9fvkzPlLPhDpBd4telbjN/jbBkGOpnIYb8a
         3il0dYWJtbA9A1zTiTp4KSJeYHuiiQcYgHEh5Kg8HmkfWjFayBnUcs8MyLM0zFSkrIPX
         ArWnQ7sqJ55Am3XRLQ3U5uhqbu9B96mckKbM+DceMLRQcInXzYmnnl0RLw+7Huf6+hHQ
         PKz1GGcsuTJziSe7huWsSjAidbMa5HWBgXLgoPEQ+vyU323EmyWMMru+ZSHMVlzMNafz
         QYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801233; x=1691406033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1jP0HLi5iSHOi8Z3s8AoTEtv1xUnfOh/1w4uA8oZ1C8=;
        b=Sk9Laoy4mNHRtCPsMzvzblqVGAWBK1Y5E2h12A3hf9pmJJEHrsRPDUa7QNu3mKgN9A
         LAHx0wO72qI21e/eb/A6aRUX+7VSJlsUKtLAMZnP5KCS01EmAFXi1NcRtBwvKZ68s+pF
         fpxPnPs+a1OVsGyBI7ld0UvjW1bYSvfjYOIZNGigSijTzfhYZhmcHDZEKqLG+Wh5ofZU
         mpSSN+5706VyW9bzVUq3nP/g6sKZFdi3hXkqj13N79gR8o4o7s6bg/HrbJ5EkXUpXY30
         UqSwuzXqH4o0coorcA2oH68qYG96lmJxrYT+XLATjvtMPcv+CJskTaFFsogDDHSXJ04s
         Y1Zg==
X-Gm-Message-State: ABy/qLa+bEh0pUJy+SaCvDmuqAyuJNeUSZr4BObOfNCnajO0LvBQ+RhA
	R/U0auokvTQkmY91VlOS4lcZ9Q==
X-Google-Smtp-Source: APBJJlF1fW/kkMkTA9HRVUtJsncJ2wrXby1awhzYBA08MEkd3zOioa9tGcY2NYeekLTXVVpQp1heaA==
X-Received: by 2002:a17:902:820c:b0:1b8:4b87:20dc with SMTP id x12-20020a170902820c00b001b84b8720dcmr9063249pln.37.1690801232812;
        Mon, 31 Jul 2023 04:00:32 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:32 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 03/14] dt-bindings: phy: rockchip-inno-dsidphy: Document rv1126
Date: Mon, 31 Jul 2023 16:30:01 +0530
Message-Id: <20230731110012.2913742-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040037_082080_A567DA4E 
X-CRM114-Status: UNSURE (   9.24  )
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

Document a compatible string for the rv1126 dsi-dphy.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 5c35e5ceec0b..46e64fa293d5 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
       - rockchip,rk3568-dsi-dphy
+      - rockchip,rv1126-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
