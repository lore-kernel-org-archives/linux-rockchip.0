Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C465CA1003
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 15:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIv7v3owSP9YIVJLFdlmQxFISA492XgQ6CDgAOzplOI=; b=zN1mplwT9hKQTN
	P2XNhGxuUIO9Vlqvkuyg19lZzY4EGlKxf6UuAvjIX/5LC0VvrepzfUlYPh9XAIWnRKec+7bEKrgCC
	LEF7+HkVurRKQPleILMG+tifZsgVwTaas2eGtE/l3tHWs+qXqKPc68vzwAB1z6keNsmaZqe37F0IF
	cPrAZ2AFKOttCR2pkYzRddXrgtDk72V6S6UNotSvPIXdBTpcnkmmamyt1QgQvY4zizsViTlR4Wros
	3aVvJtKBit4H6Rmp482DRIriDbXJaOP74ORarg1hHuJJahfoRY0HVzy4MzqG4sw0jcX9yf4ZrKVvA
	qaKxK5cjq+wxIFLSrAaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3Zr-00000006oGp-32JN;
	Fri, 30 Aug 2024 15:30:19 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3YF-00000006nfR-3KUR;
	Fri, 30 Aug 2024 15:28:41 +0000
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-39d30f0f831so6920795ab.0;
        Fri, 30 Aug 2024 08:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725031718; x=1725636518; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqHvmoCIARVNpToj+eYuwj+OmsqaSf4MJ85C1291WbE=;
        b=leSNMRNd/ykJXhlpP1E8u88ArgmrjdPSC+Cabxbuvyl1UuBubBhnTth0bGurrLk3KH
         +YaVg5bjZ+xeD7Dy2LTkJRPpfgoUeZo/xvX4DgZaZoCh6OPoIndImAlcdKqHQMiwHa+r
         isaClu5Qm/h+WsXjeNX1wncBxEMhWeW5LeJkSbCJTadmuQ/L52sGPblDq4gWCREp1rLe
         6FpX8bNd5b3QiEKtZS8cowChifJVlKCwj1kIoAJkLJIQ32bvB9tuFfgAFWu2pqDkeVer
         oCZWoMny6ADwqIUafSc5H+hQdLo2r3bRbn3QpsHD/FQMIujP1LJD8oQXdno8n1wU+DDT
         6mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725031718; x=1725636518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LqHvmoCIARVNpToj+eYuwj+OmsqaSf4MJ85C1291WbE=;
        b=GAFteKyq2zOhbBLYW0ihgi+pZ55L/N5MHlk4Ba0m9sqdL29iHecWP5+McgHTXU6RmY
         Spk1RTk520QK44Ql/ZXD6t4oR70BFc5bbP5e8d5u1yU+b40DADVk1obuDnk51sR0kfqf
         nXyuMGMYCHBtJwOgKmSjncfnV1nDG3/gHpw9206wBV1c4x1i/xQTKip1Ff2/lQTpUuSL
         1FE8GiHYtEmUaujz+TrxsSw1AX5ToLsf31zrrs44KOcZ4ZW7nKXwMWksDlBP0ckkcOFo
         ffwnwl+KEIg7bBl7kERGiCvnwo0OvkkPxcq+w+ov/PGoCdYUB+8s0t+F+SrjbGFLg/Jh
         /hqw==
X-Forwarded-Encrypted: i=1; AJvYcCW8ZhalwOp5GGeq4N5J6aYbipxPVFyoCBbXceUAAPhhCWj+ZOl9+q012nlcN9zTM4GgsD9IG1d7ogyl/ib9q1SA@lists.infradead.org, AJvYcCXNrJalwcS47H3tLe3VcpVoPChvADGTUn6FQXrxRcNuka9gfOOj0EkNcbfJgFcdTPo+I8NlxsMIiqCmV69AvgE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrWic30qpZt9zWhnJm8vuX2DeSwBLdKs2vJ5v/+A/ZVl2ReDgS
	4Om216FzerJpkQ9RZM+/LJ0dOAwBNCnJ5WJbQN05MKP1qBT3vZ9wVuYhbqvM
X-Google-Smtp-Source: AGHT+IEVzWuJALU6+1aSVs6qiSwfELdZVdFHqAGu2Xy58PmOhzNnpMgp8wbA0kkenx3QfFsUSRnUGg==
X-Received: by 2002:a05:6e02:1d04:b0:39d:286c:5b72 with SMTP id e9e14a558f8ab-39f378acb8emr64917755ab.28.1725031718371;
        Fri, 30 Aug 2024 08:28:38 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3b05940asm8853415ab.77.2024.08.30.08.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 08:28:37 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: shimrrashai@gmail.com
Subject: [PATCH v5? 3/6] dt-bindings: display: bridge: Add schema for Synopsys DW HDMI QP TX IP
Date: Fri, 30 Aug 2024 10:28:24 -0500
Message-ID: <20240830152825.9053-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830152132.8894-1-shimrrashai@gmail.com>
References: <20240830152132.8894-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_082839_860235_5B42DE33 
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
Cc: algea.cao@rock-chips.com, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, robh@kernel.org, rfoss@kernel.org, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, ldearquer@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, s.hauer@pengutronix.de, aarnoud@me.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, markyao0591@gmail.com, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, daniel@ffwll.ch, andy.yan@rock-chips.com, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

diff --git a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml
new file mode 100644
index 000000000..141899ba2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/synopsys,dw-hdmi-qp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for Synopsys DesignWare HDMI QP TX Controller IP
+
+maintainers:
+  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+  - Shimrra Shai <shimrrashai@gmail.com>
+
+description: |
+  The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX Controller IP core
+  supports the following features, among others:
+
+  * Fixed Rate Link (FRL)
+  * Display Stream Compression (DSC)
+  * 4K@120Hz and 8K@60Hz video modes
+  * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
+  * Fast Vactive (FVA)
+  * SCDC I2C DDC access
+  * Multi-stream audio
+  * Enhanced Audio Return Channel (EARC)
+
+  Note this is not a full dt-binding specification, but is meant to be
+  referenced by platform-specific bindings for this IP core.
+
+properties:
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 4
+    maxItems: 6
+    items:
+      - description: Peripheral/APB bus clock
+      - description: EARC RX biphase clock
+      - description: Reference clock
+      - description: Audio interface clock
+    additionalItems: true
+
+  clock-names:
+    minItems: 4
+    maxItems: 6
+    items:
+      - const: pclk
+      - const: earc
+      - const: ref
+      - const: aud
+    additionalItems: true
+
+  interrupts:
+    minItems: 4
+    maxItems: 5
+    items:
+      - description: AVP Unit interrupt
+      - description: CEC interrupt
+      - description: eARC RX interrupt
+      - description: Main Unit interrupt
+    additionalItems: true
+
+  interrupt-names:
+    minItems: 4
+    maxItems: 5
+    items:
+      - const: avp
+      - const: cec
+      - const: earc
+      - const: main
+    additionalItems: true
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for RGB/YUV input.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for HDMI/eDP output.
+
+    required:
+      - port@0
+      - port@1
+
+additionalProperties: true

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
