Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0D5FC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 22:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8axVLhh34/0nC2uiNsnrkTPglXZ15HF+lI/t6kHSH8=; b=VQCp+YlaqK+KRv
	bGWOSQTwfN4wnvp9JWBsQUFAFX0SAjjT9tw0sJbB6kZ7utPJnTTnxis/9Yj385bu26G97M/Z+2pNX
	ysRj/jXZBA+8tXYd8x7Gyvux7TwLCoQp7ELDS9MkUF3o7Gv6Iqobu0eJP4IZh6VRq6v2gokBPrPK/
	Czhq6c3XZAuwuvz6IuLzMEpLL2C0ll/cfBwRl6Ic/q9ogQjgjQo0oCADf82DYFqWzEGJXYBZpSSb/
	0b+vXWFO67rM/R8W76hom5zPvrFSs3MlbNw5Iv5PsF4cnUkQTcHgQ4MnfFAEcVmlwCJDNzA81pbe4
	zJHENPY5aEseyaGhszXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmvv-000AUX-GT; Thu, 17 Nov 2022 22:00:31 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmvn-000AGc-60; Thu, 17 Nov 2022 22:00:26 +0000
Received: by mail-lf1-x129.google.com with SMTP id bp15so5061396lfb.13;
        Thu, 17 Nov 2022 14:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2W6/23FsquU43CNgCohStnpDl0ZJOS5ZXPq3VPn16G4=;
        b=lIYxKyjH9QJR9a0slXCDFwZajAAiEGGepJMZnbUGqeyakq1mOa06y9QNy07SddhEmT
         Z9/C4CP13pWM0WyicplirIkI5dHu417IP/O6gZtXUoby0XBAT9j5UkvwUeOyVY0Z7og2
         fFcuh72KIsx4nQsxG+WeYtukzvdZsnfEJ8gP0c0i8wo0p6oT0KzJVcucV3SRQjKRH81G
         DCByJegEV33z2/lN53S4f6nZ6ne9t19SZV7VkTznD+bCCLc48AYxZWM62rDTax+WXi5N
         g3H02KEncVWIcq6PDYjwYu8+5jllixalDmFutOedcLAF2D3AVAdn7eDUu8Z7Cuf0p90B
         Sqiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2W6/23FsquU43CNgCohStnpDl0ZJOS5ZXPq3VPn16G4=;
        b=dQ1QSQvzLx/VnwOVQNbmK0GOD8MquD7cCYjPtNKL1VsuV+4b7Zr8UB6ARGFUci8UTj
         vO9oS7n+G4dwGNDAglivzfz0frH16VZzU4o6VlVj1fzpRACIwZDC7HFiir4lCFnL4oQt
         8UniXMubdns2It6eUBhG45W+eM1yQ5VbqQUw65tttjpvw2fM6YWzoE+PcFmQHtyNNpjk
         y1uzVz/QkT6JoqX97tdNUz0HhcR6qeVtaSrGwWuNOalGuZa7lWJ1KEAiZwvdsNcGsk6W
         JiUpuAJgBrXdFwg4muT0ComkEHr9vdggHBWquTnYw3dVPqu2owcs6cZd3npOsCIqiluJ
         /O3g==
X-Gm-Message-State: ANoB5pllPyqnRHSquAFZS01bsnd/9SmTAJLGZKOOL8ckIuiHZyoQqSxi
	c8QhcTnKGJeERPwnMdONtLqc5nYjxp1ycg==
X-Google-Smtp-Source: AA0mqf5ZcmtMpufHGsV3EL3jrTeOjZv/6OV19dYExWwwJTEoH6MndYU+EkYDUZ7wCA8d023V/JbaEw==
X-Received: by 2002:a19:ca08:0:b0:4a2:4eaa:9276 with SMTP id a8-20020a19ca08000000b004a24eaa9276mr1493468lfg.97.1668722407134;
        Thu, 17 Nov 2022 14:00:07 -0800 (PST)
Received: from localhost.localdomain (79.191.9.185.ipv4.supernova.orange.pl. [79.191.9.185])
        by smtp.gmail.com with ESMTPSA id q29-20020ac25a1d000000b00497aa190523sm342985lfn.248.2022.11.17.14.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 14:00:06 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/5] dt-bindings: arm: rockchip: Add more RK3326 devices
Date: Thu, 17 Nov 2022 22:59:51 +0100
Message-Id: <20221117215954.4114202-3-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117215954.4114202-1-maccraft123mc@gmail.com>
References: <20221117215954.4114202-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_140023_317995_6DECCC1A 
X-CRM114-Status: UNSURE (   8.52  )
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

This patch adds Anbernic RG351M, Odroid Go Advance Black Edition and
Odroid Go Super into dt bindings.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/arm/rockchip.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..d2748826cf39 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,11 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG351M
+        items:
+          - const: anbernic,rg351m
+          - const: rockchip,rk3326
+
       - description: Anbernic RG353P
         items:
           - const: anbernic,rg353p
@@ -468,6 +473,16 @@ properties:
           - const: hardkernel,rk3326-odroid-go2
           - const: rockchip,rk3326
 
+      - description: Hardkernel Odroid Go Advance Black Edition
+        items:
+          - const: hardkernel,rk3326-odroid-go2-v11
+          - const: rockchip,rk3326
+
+      - description: Hardkernel Odroid Go Super
+        items:
+          - const: hardkernel,rk3326-odroid-go3
+          - const: rockchip,rk3326
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
