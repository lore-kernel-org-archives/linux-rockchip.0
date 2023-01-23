Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5154C54EB4
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRWAWAcj5qKD9xvg+L7dLgNfKfceNb0SnTOlLjBJhq4=; b=tir00+nRfqrDx2
	qWYsxs1mnqf63PKmHzVctUeyNxC/7WrJxEhPtvMHfl6+ysKXnPQs8enZr9qy5NUsihGDV7EJrqchB
	n/DP7zetxH+jkdOEkZ+Qq7JLMrMJKLwioDcgS56cRDMu3QcftePMq+XACmkFNyiSLItPvprwsqI9r
	40lcrNlSSadSa3FSKiEMXc8M0RuS4gL2mp9nruXdCdR38MhAaHeoyfqpS4U0/X/UV17RhR7Qhekxv
	/7iHJS7UL5oJrEG05a6p5N5BwFHICuiG+K+TyhxwrpBlTO7PsUZNWArQQ+N7SuymOumRcbOibNP2k
	D4FLLTcnI5N9hv5lYzlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJzGy-000ObV-83; Mon, 23 Jan 2023 16:02:16 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJz1R-000Ibw-SL
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 15:46:16 +0000
Received: by mail-oi1-x236.google.com with SMTP id r132so10677632oif.10
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jan 2023 07:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nqapi86m5ALZWy/RQhVMucbK8z+wXggnyArRlewaq/U=;
        b=Qwe0skCavY5qRbDu2jiFMgzR4z5C2zb8bV/cJjwhIH8Vq/O2+H0iUxq7vDmWdQrUMg
         DjuacQNgoSwClV416+YOxN+aNzhehoYeQnUy79hFZjMcEKWUFyWtUED8FkT02rkFe2F5
         wMvDGL9BxIasMI+cvksJ3sPSiDJVcYejoV5LbN0uZTsqJwzmxZc5+gk7vL//rAFE2Q1e
         PQ6CQKQ5LxXv0hbad7rBsq8o0cHN8DFeD1uUY8ZZrrVQ2AC3EqAlCmm6uDipPR5RHo/0
         bhD0m2H7QDCQ7MyDk6c7pE6hzRXcjgE4XJOTJxB3ep1mhBLPX9ioVH4nNHfKxcD8vYXr
         qHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nqapi86m5ALZWy/RQhVMucbK8z+wXggnyArRlewaq/U=;
        b=leUVlkCEglHztbRpsLFNceaEKf/Cy2nlLZdLbtoezfL2VKEVP1c83ihkpqFlO7MWMh
         BsKGDnpoMF8OTlThpzMFc5X8Tg83jo/Bdz5j3Oui43HS5KCFW7AaPcItYS3XlNpDCsu/
         jgqj9swpnMnLwIeEUNMXJnKYoXqXv7Mpt5yczm6ccNCl7UrZurXxugySdQXpBIMRWIhm
         mIb2g+4jji6NAaS2VSJXqpg6UwttOBHUKYF9mG32jdfud4naB7OnEuXp8LrvyXuQRHAT
         wOekQvegr6GvirzYlWoF+UtVqjn1J6R/ubDF4kPPHllxwciir9I7ItQGlAHDtgsO+GwD
         gmjg==
X-Gm-Message-State: AFqh2krUeHkAmQhm4CtGaI2Z6EMoQVRi1v/j7D1nj2yIjJEsx8z3Syid
	A7idrda57crjxXXVdFl56+c=
X-Google-Smtp-Source: AMrXdXuuJJhivBWYpkIzc0L3kGnI/JKXyfvnSB76tjIHILIc+VJ/d4YPw9XD+jILhaObH3pkknwayA==
X-Received: by 2002:aca:5c09:0:b0:363:a9b1:54a6 with SMTP id q9-20020aca5c09000000b00363a9b154a6mr10104905oib.40.1674488772598;
        Mon, 23 Jan 2023 07:46:12 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id w13-20020a056808140d00b0035e7ed5daa1sm10040132oiv.26.2023.01.23.07.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:46:12 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH V12 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Mon, 23 Jan 2023 09:46:01 -0600
Message-Id: <20230123154603.1315112-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123154603.1315112-1-macroalpha82@gmail.com>
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_074614_023897_8228AA53 
X-CRM114-Status: GOOD (  12.22  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for Samsung AMS495QA01 panel (with Magnachip
D53E6EA8966 controller IC).

Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..58fa073ce258
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 panel with Magnachip D53E6EA8966 controller
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+
+  reg: true
+  reset-gpios:
+    description: reset gpio, must be GPIO_ACTIVE_LOW
+  elvdd-supply:
+    description: regulator that supplies voltage to the panel display
+  enable-gpios: true
+  port: true
+  vdd-supply:
+    description: regulator that supplies voltage to panel logic
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "samsung,ams495qa01";
+            reg = <0>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc_3v3>;
+
+            port {
+                mipi_in_panel: endpoint {
+                  remote-endpoint = <&mipi_out_panel>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
