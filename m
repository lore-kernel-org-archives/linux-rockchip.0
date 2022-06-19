Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47172C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jun 2022 09:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz2XhVt4vBT2foEpteBT25Ppa2AIh8UJz472kmt6oLE=; b=Dlr1NlD2eFUDh9
	Gh2zE7Te9BuxDv3BRhc/TuRn2Intl3U38iltivc5guEFsslIgy5bxyPBmAZ+QHClryMfzxYb7oDqR
	+QXdcDEMxCz5e4uxPqSnFTzazEFi0pzfqqTdE7wQwRef3cuqAC8ob/phfPLQ0V2w60s04SVKPxFr5
	F/oDdolRrp7WrPk3yb2gcBkaCPTMO+eeYECaI3qEPtYysHkREIlo3c4ldZqCs7tq9uN1yyrhGJ4J2
	lRAPBQbU+2J1Nowo63bA1uI2uxYM9MvDoIsoxz7Qz9PsPQhVJNb6Xw7atMz5nM4TgTStGSZsyzt+B
	Zl8D67yVINg//BCXaG/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2rdM-00DoIg-Vi; Sun, 19 Jun 2022 09:54:21 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2rcl-00Dnyz-SG
	for linux-rockchip@lists.infradead.org; Sun, 19 Jun 2022 09:53:45 +0000
Received: by mail-pg1-x52f.google.com with SMTP id s185so2025000pgs.3
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Jun 2022 02:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2fjP9Be4hnegvsgOyWKGbkMNBDmKFNmzp11PphlEg+I=;
        b=TyGlyA6041iqq3nmsynOTfJ21vEfUvDYCG4nSwbrENb4R/wm4mKgHSJhZomtxv5MwJ
         vEC3hgZrSrypBzETpsbBjyhi+gFB50/DBY5Iwp0MB2kUmSPXxiU2I0B8UesLx61Nd7Gj
         +/kHxoFNHBpp0VyXgbT0IdwmPtCUm+uijFxBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2fjP9Be4hnegvsgOyWKGbkMNBDmKFNmzp11PphlEg+I=;
        b=ejRz0QhVsCWHDgcSSVd3dFm/ZFHMyzVrt+IUtOArWY2xzH8tZ9C/benW1bFOq39fGW
         PD1xSvwprGwKWM0Ccdgua3twoXz5Tj38/A8FBXhKD6zHVhAeS/dgkeOUpafuAFG8DDEg
         5+bc44i7NHQKVZ+tFyNeAJ96N3P0YTTHzfNnfRc2Im8d79dKItoK4Vuca91eA5z06BPg
         oqWe9aaPhddXQDujUZPoAEFs3iiMlm5MX551s2K+2FERByZOTr0JvkbkCwlyJtIAwtyb
         HvZg4cHQK6u6+HDnSVbNwUWIIAH21TMko4lhJQdpEiOsbwTjMM5txM9Z34K6uRSGRA9e
         2VAw==
X-Gm-Message-State: AJIora96WNgfqf+78NqQk7R9zjBImTfkYLOfX9Wm/GwdIb8YDrJuCUvL
	6EiI59ChTtngXQ7Z+TP6nRj7qA==
X-Google-Smtp-Source: AGRyM1sE4ddG0U8OSTKG5E7HfKRJdGT18RC0WV6uVpoOpoAIl/cjFPO7PDHNBgm+VZoiSBuDSBih7g==
X-Received: by 2002:a63:d94e:0:b0:408:9aeb:c55f with SMTP id e14-20020a63d94e000000b004089aebc55fmr16482677pgj.287.1655632422791;
        Sun, 19 Jun 2022 02:53:42 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id 135-20020a62178d000000b0050dc762817esm6799971pfx.88.2022.06.19.02.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 02:53:42 -0700 (PDT)
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
Subject: [PATCH v4 3/3] ASoC: dt-bindings: rockchip: Document pinctrl-names for i2s
Date: Sun, 19 Jun 2022 09:53:24 +0000
Message-Id: <20220619095324.492678-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
In-Reply-To: <20220619095324.492678-1-judyhsiao@chromium.org>
References: <20220619095324.492678-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_025344_012421_D19120C6 
X-CRM114-Status: UNSURE (   8.75  )
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
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
