Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E7FECCA47A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 16:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWsw/bGMGWYAfLnxGYFb6EeVO4sd+nqgVlHDL3nf3+8=; b=w6CRxWqf3l9/Mx
	jk9kUukGtE86zzhUfLSEhAhDSczjmUlMNQSFCVAY66bzyBGNQMnzutSKXCvhSB0OgsZZrplyz9RqS
	G/mmWd15maJg2fEl5joKQ3I5xSQO7ib1vtx4JuydkIIFFUm9kTyNDjH4yBeyolHHhu+ooQhoNGLHB
	PuidgFwr+Tm4lrGTjLPfNCT/KOqqcxwpy2iEghmo9ng8SIBP+GGijLxDJb4/5Kj8uRjcH4fA5tKUK
	ns6KYcJvfVTVKPkNRG8LkjRC1X3goGN/dgNV2oQ15EOwLiWS5U1N321U0hplQZfygnVSTcQ3pej19
	PO4od7dZiL8IwzSukuYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ruf-003HNT-MH; Thu, 16 Jun 2022 16:00:05 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rtv-003GtH-Rb
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 15:59:21 +0000
Received: by mail-pg1-x52f.google.com with SMTP id z14so1663454pgh.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 08:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DgrwewMce2rCEAP+XlA9uqVT9sKMIcKrgNTnswDM33Y=;
        b=j1+LKGPK//opsez1h3IZYLmloo+4hPEoxEk8xMICOmbOhqlBLGAMND2zjOoFyug2EY
         5w+Wt5QkKbiSzcJfiUrlZXilCZK7CzVdOKye1m0P35pjQXxCnDRhlzva6yupERBJDrHJ
         N5pZ4c/wqoz867w4DqOPA5KqOEfbKkO/oGYIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DgrwewMce2rCEAP+XlA9uqVT9sKMIcKrgNTnswDM33Y=;
        b=INu3iP3hY2DhFRFrkX9s6aFo7Od42mnkKM+SAEcPch+0cvMwnHH6knqv3keutJfNfr
         zBjZAMO/55BbWTdSQI+aGU3YIQIAvJPSFWwFwf8yxQksuJ1YbCzZCmDY/a593wFivyP5
         d4q4E2iimkXcXItE49erDdmsVb+o7dQaJM7sO2JgZIrDOEzeBE/6U0dC8k2e1Gb1GNsT
         i8xTc9ddH7tRwBkLgyT5xLp5x9LUYQSdKY6d3Fb7s4jCPTXCxglgwnLgsDDIuPVqOFWO
         MGBZ0YYpsM1kCjDjeuX5oatXudgPNReSpuRX4RhQe/6eYy3J1qS5USz7xxV5VWdwVW3r
         ysUA==
X-Gm-Message-State: AJIora8ZPs4HHM1ZFm1ReqCkoe7rXXNM/30YfC2VTVv5rP9RP8oy6ohj
	2uU7JbP155fwbU1ZxDKKhOezJw==
X-Google-Smtp-Source: AGRyM1tJ4+JyFVVgPMz5uyUA7b8XnLeEV3bIK43Yl9Qo91NqaGe+fP3lYzpmcrF6e9DSJkwDcLQiGQ==
X-Received: by 2002:a62:b802:0:b0:51b:f4d2:65be with SMTP id p2-20020a62b802000000b0051bf4d265bemr5477983pfe.79.1655395156957;
        Thu, 16 Jun 2022 08:59:16 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id f8-20020a170902684800b00161478027f5sm1779797pln.150.2022.06.16.08.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 08:59:16 -0700 (PDT)
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
Subject: [PATCH v2 3/3] ASoC: dt-bindings: rockchip: Document pinctrl-names for i2s
Date: Thu, 16 Jun 2022 15:58:36 +0000
Message-Id: <20220616155836.3401420-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
In-Reply-To: <20220616155836.3401420-1-judyhsiao@chromium.org>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_085919_954347_D3F9A106 
X-CRM114-Status: UNSURE (   8.83  )
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
index 5ea16b8ef93f..af1069278623 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -61,6 +61,13 @@ properties:
           - const: tx
           - const: rx
 
+  pinctrl-names:
+    oneOf:
+      - const: default
+        - items:
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
