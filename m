Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 04:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz2XhVt4vBT2foEpteBT25Ppa2AIh8UJz472kmt6oLE=; b=npbjHesXJe0AF4
	/Ns6ACeZQVCKPTKZVJ8LpCdk4EHbZLb0qRmrNM3mzMMqX2HNJpmWOV2+m90nlHgpf3dVRYLFfKM8J
	1HiHApbhWiPkchOdBACqGT/MKDp1of6jolQdjwjbFIHsX7cUGgRgP/cwktVOpHJRsNbPR8AfvhRaF
	kTxn9atEGVK7R9f9lR18mEp/cFJEWn9EPVn9DO3e3u14Yl3DsRW93JQW07g8tBWx/SYK+PjEbd54V
	/mGRio+LoGxHYQe0z5TsVsP+X5ToqH2upIR6a2rx8GusMeHMQWx3lrtUWiqVTqeH0obktWkb8/TWA
	qVwd2cMUGAa2Oluewpkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23pU-005ShI-FS; Fri, 17 Jun 2022 04:43:32 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23p8-005SXZ-55
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 04:43:11 +0000
Received: by mail-pl1-x633.google.com with SMTP id d5so2909280plo.12
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 21:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2fjP9Be4hnegvsgOyWKGbkMNBDmKFNmzp11PphlEg+I=;
        b=IZdqemgjM011t7qSaeazGC5ggc3b5p1NDSvXtc+PuYsJrlv/olkGHyV8kaSghNi7KW
         9TzKTQfhxWc31HVBifhIwFyTieKiEnksb0h9otWk5FFg9Xky6MpqgNSfBT8Am+60SFNX
         N/FsTDI5dlR673K0ktxd/t1h8azx7yqqJpME4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2fjP9Be4hnegvsgOyWKGbkMNBDmKFNmzp11PphlEg+I=;
        b=NyPUw97+6gWOmHaF/XZDn/x1AXi4tKJ8iI+1y9fgP8M4GkYd7m6d57WhkORN3jql5K
         BW7oSpfHRMfwhnwX83qkLJMVDVQYmQPvnuLV51lcLfYYY3G+JXWGRHQ79LjqE/YXZ4JN
         RnqBtYJFZoqK1enjBMQbpy+wly2wVml8Mo/O+Q7qaka/6H558hXEQnfP3vM89J0Z4gX3
         ys8gs6ulpuA9li1NisbjBB67Bkj8SJtLYJ9Mzry2F9ajcloamc8dmMwmiB5cCQnSBaY0
         9A9MaB2MpHBrg92VY5tCP8oPCJ+IroPQZPp9gUuLpYwJ6Bm4VRG+gKRDwqjNrfm68UvT
         /6rw==
X-Gm-Message-State: AJIora+46/dhfUsjbgE7vB07CUPskvSNgsPRvAW6IUFa/JhyBjqQYTKi
	oHVLzMEkQETrkotc2QuJTGY7HA==
X-Google-Smtp-Source: AGRyM1vLs55QXCgklZT2ekRxVqDn+icjviHTpjMZkA9w+4RQE27UUTrD8lRbDtZ8X4JwMc8QXD9xGQ==
X-Received: by 2002:a17:902:9b83:b0:164:59e:b189 with SMTP id y3-20020a1709029b8300b00164059eb189mr7540998plp.91.1655440988545;
        Thu, 16 Jun 2022 21:43:08 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090a778800b001eab0a27d92sm4491030pjk.51.2022.06.16.21.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 21:43:08 -0700 (PDT)
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
Subject: [PATCH v3 3/3] ASoC: dt-bindings: rockchip: Document pinctrl-names for i2s
Date: Fri, 17 Jun 2022 04:42:51 +0000
Message-Id: <20220617044251.4029697-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
In-Reply-To: <20220617044251.4029697-1-judyhsiao@chromium.org>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
 <20220617044251.4029697-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_214310_258380_48818EC8 
X-CRM114-Status: UNSURE (   8.35  )
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
