Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE452C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 02:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYqElmZ7Ijp0t/oy8suAmVQeYSWSZTpMWGNVJlYaRCY=; b=P0nk0d5rxG6lNo
	oRRCRG9Z/0IokcxWfo53oORT7HMaIN6UJX5rLRjcGRhKZSletT/RaQFwZeB6Y7kZhCG5VDy0qDTIS
	crm7wqClQc/V6hPp6htemdurRJZOdlVg9Ti9MvgWSZPejPauQrv0vZE49Lms+klJ6zt0sEvDxaAKU
	oILmnf9QWcFv/6M0hCxJHW5PN/tdY28oh0QOo7tdUtyDE8PEgFg8uI0enwVOF0YJ1HCyih5kFKZ+K
	WeC6IOHAO8+MS7yaAxue49P6UYlthNcixVXmGOHEl8i3C+i63XjLDQ1x3fMJ/gKzD3kSd9C1eeu3d
	NeBaEIwMNw1lRvE48seg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CVh-00Cy9V-OQ; Thu, 23 Jun 2022 02:23:57 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CKS-00CtOR-G8
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 02:12:22 +0000
Received: by mail-pl1-x634.google.com with SMTP id k7so16928921plg.7
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jun 2022 19:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LO7XuaEC/0vDNLbgeDoJilJKS3NWSolp4n621az3TKo=;
        b=YTdodIHecq0rIHPbOUNfMDsBOBFCCQZTpt8Mae1FUo/OzFM6XdXMJqT6FAiu7e9CXF
         PxEgtptDJcI0oMyWCxN8NsK8HX4VKQAnnRy7sEUIStaqxwAiGptBSPMulN6V+Gcit6n2
         NDv7VnHGcSOV1n6yNb6uEy6L+zlw+RJ1HHkXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LO7XuaEC/0vDNLbgeDoJilJKS3NWSolp4n621az3TKo=;
        b=pnuJM3pWQXULjPEobHy+XWmWYqkiaOaU4m2pEE/WUIOaIKXsE9THv64kgn+fa6ucEJ
         rXGKVuVoYe/4FxgYSZ6EGIelabMRErW+r2oTsLDcR9h8MPYMavM3X5PSL4UVfGW6KYUl
         jzJu/DslTnDGY/7WRT5m4D+gsEDtVLpA8L1H//D57FsyrtTpf1JEA5fPTyTURTOS9xEd
         +n+7cA9xXuAI6eJUDOIwXcSbH4RucspNMETzZC9e1AwVsKyDTAOZnM6s/ATCEwrB0RKT
         01wtp6AJzI1u883gTkHjLsC8LwWnkBWxcCJo199fjQBcysw9do791Sh/sWamQY74N6U5
         O3bA==
X-Gm-Message-State: AJIora+DUpvulrkRLC/qx3ZPh2niydGTGvl9uQKRdss5VkQxe82AqhND
	Esj5Xq/1V5fXKEP6OypKhlVymg==
X-Google-Smtp-Source: AGRyM1vyoRc4GfoYYaOKyQJWI5gEHK7cxz3myYUl/C/h7waRa2CFuT2tcdE9FdsAox69KLspbd1rCg==
X-Received: by 2002:a17:902:ee55:b0:16a:5e4:26b with SMTP id 21-20020a170902ee5500b0016a05e4026bmr29350254plo.29.1655950337415;
        Wed, 22 Jun 2022 19:12:17 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id m6-20020a170902768600b0016196bd15f4sm6194000pll.15.2022.06.22.19.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 19:12:16 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v5 3/3] ASoC: dt-bindings: rockchip: Document pinctrl-names for i2s
Date: Thu, 23 Jun 2022 02:11:53 +0000
Message-Id: <20220623021153.587423-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.rc0.104.g0611611a94-goog
In-Reply-To: <20220623021153.587423-1-judyhsiao@chromium.org>
References: <20220623021153.587423-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_191220_661043_54476E3B 
X-CRM114-Status: UNSURE (   8.58  )
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

This patch documents pinctrl-names for i2s.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 5ea16b8ef93f..7e36e389e976 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -61,6 +61,13 @@ properties:
           - const: tx
           - const: rx
 
+  pinctrl-names:
+    oneOf:
+      - const: default
+      - items:
+          - const: bclk_on
+          - const: bclk_off
+
   power-domains:
     maxItems: 1
 
-- 
2.37.0.rc0.104.g0611611a94-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
