Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D8BCF36BA9
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 05:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LeT/iHj/l68j+2uKKnrLyqlTTrUxEkAVIb4C8RCOteo=; b=za74Ykh+D2cLRN
	mmYnvFICBj9VnnO7McFQr+u5LwWLFF9/VuACQJjseacWr3s3kuL07nm/uz2BeEVat0ZIpIPzJGJR4
	f0FiAbFEGyYJXyxFAqQysToBg5cb3zweVUo7LbWd2eTgFNyC/nUTxSFTSfSDl1ncJTZQITRI2VUNo
	0zu5N3o/A720eZ71oYOPlgzPCWGvlv7rJbZ6idKAkhj4Ib2FPYhztBUzSjHoikqnIYRfVQNGevGdv
	M7EAjQqku2vdWOI063JcdQJaVQHwxhS7NFtdn8hrThfhzhSGvl/9J6DLGh/aLAHumz23MH+S9WNJl
	d2UoUDdd6XVjTmfWfWAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB4qI-0000000BeIM-12G0;
	Fri, 10 Apr 2026 05:55:46 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB4qF-0000000BeHH-1D0v
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 05:55:44 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-3585ec417f6so689142a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 22:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775800542; x=1776405342; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eZONTy3jkQF6vvheJ4A4geJ0E0xBe92xQL8/wb4o+I4=;
        b=EdL+HPHhsjm2z7KKSACs4MGLV4Hdwn5zUdW0a9skwvrJq+nAFwg91Ze6Y+KEQ39s6G
         sf+N+v1BH1c8/0apvKJHNVp0GayFnhQKt+uTLnPEU5UePgXQIxugqx5NaACaZUDuEHHa
         DQ+SX+NuU5dMJ+qcqYAxicOZZZKeadfEtab5LEPFYW9RKz/ejsNExzCkpT4q74FDNgk3
         uWVKjWYNhBZqaUF9wPQxjn4aOrUWhZn33oFIKrUfNxpTyf/fmmdawf3ISrkUl9p+Lebq
         jqHUpIGjFyVkHKCKXtMjRq3MG+eEjoJ1n0v1d0XMcdroszXzJXJMTAD74sP+01JqAO0Z
         8tLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775800542; x=1776405342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eZONTy3jkQF6vvheJ4A4geJ0E0xBe92xQL8/wb4o+I4=;
        b=Cl8Am1Pe0oA+qju+HveBVjniQ42Dl50Dm03eFCTA0tNv7gBBwUlPqipdQ5R0cGkYgC
         C5iygJ9FB3p/Gz8vsYPGa5oePb/LLIimNa7bL6DmyGmgNqNilwat1tRqsW96q4u9+4UR
         wHOexP9VI3uPffcu7kcKE4AqdvUgI6nM+qPmLs/mArAjoO3pK9jPaSRShVi8UlkA8oWP
         uQ3J2Nan9Ky5u48aVIgAr6QDE1Z2GFu5WYy/UYOd37vplOYt2XCsdVChg+85QPz0XW4A
         /BqCkOePLL9qL0d35ppQO5cUeq/nmz+iDAoKX4F6Q2tWyhmVQ15bn0RwU+fnqyvNKMNg
         MBXA==
X-Forwarded-Encrypted: i=1; AJvYcCUXaw/qdpdb8NV3/d8CJwnOoKt04ez1yd862hUbm2kC3YDlCTRc2SpxtwVRxNbIz3Xuf17KKLXj57NbX0lXrg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCQflNWAWf5o3M9xENuCfMmiRCQpA+FBzmbmqEWaKzQ2h4oKiD
	06PgDxKSAOO9qrCxBiskX/SJrTH8qTXF8hfsU9m20AuvJWI1Ew15ANs8
X-Gm-Gg: AeBDievC/IoZJm320x+P/wuqrnHz1C1bZCj1a9wrhymWor2RHl9Gj1MjIfyOJewNP46
	rPOZgUgyus07B80nB1iyl3M+Yrig3h+uWBeLWsyI4QSOQsUG12wOHOURrgZmG0FNrrARCJ7d/g3
	v6sM/EzbS/19ozOmgTiqkJ+XSNoYLeWIbLkNFIoYs1A7sTOG1XCq0eSzCHKbCu1VKKCou0j6FkI
	8e+fJNoBmv3M2WT5BfZxLg2NO+OOFmJ91BJl1w3pqzB0/KiZolY/2VtdLxcIcDWgSWsZ7kkH9Ov
	EcBz0KijamL2S0zxysVD2L/L6WV02/KR2dyfWXByrV6fGONDgjdjy0pDjOq6oVlHcGI7Y9N8+Jn
	02uMqIqfAcXadFg7WFRWK0jw/7U06F0gWzopF2gxfas7XEGFOsC/zMTW8DvD8Yj+0e/fVdIeEWv
	tt9V0gUtqcnoUSS/Vq75Ok1bXX
X-Received: by 2002:a17:90b:52c8:b0:35b:a44f:b80 with SMTP id 98e67ed59e1d1-35e42fe6580mr1407691a91.1.1775800541645;
        Thu, 09 Apr 2026 22:55:41 -0700 (PDT)
Received: from localhost ([223.233.84.165])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35e4131cfacsm1777318a91.10.2026.04.09.22.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 22:55:41 -0700 (PDT)
From: Anushka Badhe <anushkabadhe@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anushka Badhe <anushkabadhe@gmail.com>
Subject: [PATCH v2] ASoC: dt-bindings: rockchip: convert rk3399-gru-sound to DT Schema
Date: Fri, 10 Apr 2026 11:25:32 +0530
Message-ID: <20260410055532.60868-1-anushkabadhe@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_225543_339879_FD213AB7 
X-CRM114-Status: GOOD (  18.30  )
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

Convert the rockchip,rk3399-gru-sound.txt DT binding to DT Schema
format.

Update rockchip,cpu from a single I2S controller phandle to a
phandle-array. Add an optional second entry for the SPDIF controller,
as seen in rk3399-gru.dtsi, required by boards with DisplayPort audio.

Signed-off-by: Anushka Badhe <anushkabadhe@gmail.com>
---
Changes in v2:
- Fix subject and body: "YAML Schema" -> "DT Schema"
- Fix title: "ROCKCHIP" -> "Rockchip"
- List items for rockchip,cpu with I2S and SPDIF descriptions
- List items for rockchip,codec
- Update descriptions for rockchip,cpu, rockchip,codec and
  dmic-wakeup-delay-ms

 .../sound/rockchip,rk3399-gru-sound.txt       | 22 -------
 .../sound/rockchip,rk3399-gru-sound.yaml      | 60 +++++++++++++++++++
 2 files changed, 60 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.txt b/Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.txt
deleted file mode 100644
index 72d3cf4c2606..000000000000
--- a/Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-ROCKCHIP with MAX98357A/RT5514/DA7219 codecs on GRU boards
-
-Required properties:
-- compatible: "rockchip,rk3399-gru-sound"
-- rockchip,cpu: The phandle of the Rockchip I2S controller that's
-  connected to the codecs
-- rockchip,codec: The phandle of the audio codecs
-
-Optional properties:
-- dmic-wakeup-delay-ms : specify delay time (ms) for DMIC ready.
-  If this option is specified, which means it's required dmic need
-  delay for DMIC to ready so that rt5514 can avoid recording before
-  DMIC send valid data
-
-Example:
-
-sound {
-	compatible = "rockchip,rk3399-gru-sound";
-	rockchip,cpu = <&i2s0>;
-	rockchip,codec = <&max98357a &rt5514 &da7219>;
-	dmic-wakeup-delay-ms = <20>;
-};
diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.yaml
new file mode 100644
index 000000000000..e9d13695cc77
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,rk3399-gru-sound.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip with MAX98357A/RT5514/DA7219 codecs on GRU boards
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3399-gru-sound
+
+  rockchip,cpu:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      List of phandles to the Rockchip CPU DAI controllers connected to codecs
+    minItems: 1
+    items:
+      - items:
+          - description: Phandle to the Rockchip I2S controllers
+      - items:
+          - description: |
+              Phandle to the Rockchip SPDIF controller. Required when a
+              DisplayPort audio codec is referenced in rockchip,codec
+
+  rockchip,codec:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      The phandles of the audio codecs connected to the Rockchip CPU DAI
+      controllers
+    minItems: 1
+    maxItems: 6
+    items:
+      maxItems: 1
+
+  dmic-wakeup-delay-ms:
+    description: |
+      specify delay time (ms) for DMIC ready.
+      If this option is specified, a delay is required for DMIC to get ready
+      so that rt5514 can avoid recording before DMIC sends valid data
+
+required:
+  - compatible
+  - rockchip,cpu
+  - rockchip,codec
+
+additionalProperties: false
+
+examples:
+  - |
+    sound {
+      compatible = "rockchip,rk3399-gru-sound";
+      rockchip,cpu = <&i2s0 &spdif>;
+      rockchip,codec = <&max98357a &rt5514 &da7219 &cdn_dp>;
+      dmic-wakeup-delay-ms = <20>;
+    };
+
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
