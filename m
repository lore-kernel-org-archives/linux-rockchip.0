Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771B5C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 14:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Kr8Rzo5BxSfYRAx4XMj3um/UWXKFdNgGQZrWILatRE=; b=WXIKjjtMX1PduV
	Nl6Cwq5OUmOdlTF7jGogZ39bjo9sA5rbz7zmUpJgJagjr8kWf4dccFyJaxNQGm63WwRXVR9dg5qq6
	oizMaXjbc9RYT5Y+0YSgHRnCsHBTrfnFYdqW4wvVWlyMHLeTRTenm7JGzYcvu4m3dSYpYZ9D3zuTl
	MBtzrYZ4/48a9bVwAoJ3MDG8VZpsrqzrPqGsgkNoVn2UoEzvhlpbyq7tK1spBz2a26wVfWoO0xY55
	yT8SRWLJamNorIIlVTydfG6q4UZUT/bJx4/HLGMewVeuwq6+qPKp1vwliKpMykRJe9cWc2c3FvXoM
	V12e+F1PLaea1fCBdbng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvxV-006pH2-KU; Wed, 07 Sep 2022 14:23:17 +0000
Received: from relay12.mail.gandi.net ([2001:4b98:dc4:8::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvwQ-006oWF-60; Wed, 07 Sep 2022 14:22:12 +0000
Received: from booty.fritz.box (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id F2C2920000F;
	Wed,  7 Sep 2022 14:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662560526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VgbxwdFt5PQppcOV7X5ar9OBFO85n+/rhDp625ejemw=;
	b=K3xa18hD5THvri4wHGXS1ynPnBzxFd5Zor2sm9QM6SMroLfr12HiVYVsbewqW89p0iqgV4
	IlnnpUFS8seVJT3Mtv0E7rprRb3KqgTrVixWJN+fNMl6fibdHrWSEwwduzd3sEN9D7C5Kf
	7R+Hh0+gkO0A4KbbemjizLE5quL2C8M20AJgKZJhM1WaQ1sNXjU+2lpBbooX5O5HfXNQAx
	q/o/FegSFyelVAKO3y8zlWkcJtcN+6eGCdGElS9d+wfZg76iBu4oazIuQ7Bww9Ry0x2qvA
	rIYgWb+yghfJ2U2bCudSsu/kIAyKbz6kVQr6rHL9gI+PC6OAaCk3UAm1q4QbRg==
From: luca.ceresoli@bootlin.com
To: alsa-devel@alsa-project.org,
	linux-rockchip@lists.infradead.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/8] ASoC: rockchip: rk3308: add audio card bindings
Date: Wed,  7 Sep 2022 16:21:18 +0200
Message-Id: <20220907142124.2532620-3-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_072210_610228_7C8EE8FB 
X-CRM114-Status: GOOD (  14.75  )
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

From: Luca Ceresoli <luca.ceresoli@bootlin.com>

Add device tree bindings document for the audio card based on the internal
I2S of the Rockchip RK3308 SoC.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 .../rockchip,rk3308-audio-graph-card.yaml     | 50 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
new file mode 100644
index 000000000000..8445a69dcdbb
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,rk3308-audio-graph-card.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3308 Audio card based on internal I2S
+
+maintainers:
+  - Luca Ceresoli <luca.ceresoli@bootlin.com>
+
+allOf:
+  - $ref: /schemas/sound/audio-graph.yaml#
+
+properties:
+  compatible:
+    const: rockchip,rk3308-audio-graph-card
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    sound {
+        compatible = "rockchip,rk3308-audio-graph-card";
+        dais = <&i2s_8ch_2_port>;
+    };
+
+    i2s_8ch_2 {
+        i2s_8ch_2_port: port {
+            i2s_8ch_2_endpoint: endpoint {
+                remote-endpoint = <&acodec_endpoint>;
+                dai-format = "i2s";
+
+                /* The RK3308 acodec has no clock dividers, use the CPU */
+                bitclock-master = <&i2s_8ch_2_endpoint>;
+                frame-master = <&i2s_8ch_2_endpoint>;
+            };
+        };
+    };
+
+    acodec {
+        port {
+            acodec_endpoint: endpoint {
+                remote-endpoint = <&i2s_8ch_2_endpoint>;
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index d53a8e74cb1e..079bdd95dc49 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17594,6 +17594,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
 F:	include/dt-bindings/sound/rockchip,rk3308-codec.h
 
+ROCKCHIP RK3308 SOUND CARD DRIVER
+M:	Luca Ceresoli <luca.ceresoli@bootlin.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-audio-graph-card.yaml
+
 ROCKCHIP VIDEO DECODER DRIVER
 M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
 L:	linux-media@vger.kernel.org
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
