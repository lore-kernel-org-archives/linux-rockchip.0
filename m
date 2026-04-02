Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5776ECC6B00
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Apr 2026 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k5wsHHPhHnrgfOTzovshO6ExllWG1C/nPF7JgVY7dXk=; b=bBm5p0qAhIp+R/
	Vn3+etYp0ithNZiBIGGtajaI1p1Ehuc0COH23xnnpOiA1oq3b5ho2P5azxzreSssX5VJFnWXMc8o1
	Ljf1LIdAEF2Vtvw34Gq1I27uMVsYqrDApFM617reYqGl3IRp0gYmjNhM0AqmWj/VE7OC8anvLeIgL
	emIiP/E37jMBvIXDf/xvQyLu8q+3mCq1K9+ujzdfTtLADxskmg0TPzBNokElbB+mojZC6dJl7tvXK
	pZEYJpRASEwilkLfjEt5/rWIb/8gGyXVdp0pnOtXw2GNsYwObBiw6eL+EuJTwiS0an9rzp1npHDFn
	T73Cus9yvNeTfRlSY85Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8B2s-0000000GqCf-1JIy;
	Thu, 02 Apr 2026 05:56:46 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8B2p-0000000GqBN-2siH
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Apr 2026 05:56:44 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-82cd6614a90so221380b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Apr 2026 22:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775109401; x=1775714201; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mPa2JorjoSVyHfMjtpIZG1uYQS3gSdgtgYbveNq9dMc=;
        b=i/ReKXZlQXN9auoARKGAGh27EMWMzBzFeVl/OGKMTqNKAT30+uEMnTdjjlnjI92sAF
         tyMkzCJqirANNOSX5R2wbjt28MnlGEYmNF3SNKrNoIlF+I0WTFtKdiReojRyJ+bBsCH5
         I6Or1QfeFQZBgBNHgsU49c3pJVyprsrrQerKzQuS6MYQ1//HYBq+gpMvIj5vm5sHrJif
         oilnydV3Ozi0WDNHmUp4S+vl9a1/19xZ8JX8os8KOwS8LKqFGr57jZDjB3BTQzSuLa2k
         XgLeOL+CYZ56jH7ncnCsDpQ7dpZTFepEGmkfcUs6yGCy8ZYXcpqXxvDbyojXXfWPlb+k
         3wiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775109401; x=1775714201;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPa2JorjoSVyHfMjtpIZG1uYQS3gSdgtgYbveNq9dMc=;
        b=rJUP74Xna8x4juDyS+Uoa7Smg5sTHnrVWVLKaSVtiwdvR9fjHtyp5KIRjpC58tjmSU
         QD/s+hqFi1yrs3Nzy5lQnY+DKs3R7aCXiO1geXPORpIH1w+ae6SuiKSHFrYkN0zYPFmB
         vCVENIok3ektnU5nwL77ZIJiut/zpXJiAL7FU6HbTwO3B8EzR241fwCVRFPAxjzM3MGe
         WkPFRyWE4KrsgjHP74zRz2r2B+UOL8+g9w2sypw/yRt2h7PKxnhIwOHTRmb4gyDXbVEX
         CuEvEtDrJbhiEwh+6H5wjuj3vpbGQ4Tb/QWUy3u5DPh0lO2DebcofOYvLS3lXZPybwF9
         F9eA==
X-Forwarded-Encrypted: i=1; AJvYcCVEikKEkOwJxReTXz7UZxit8nfbXzZsQmxpq519pQXcsQMeSRzoAiujuTHHpgd6Bj91oTuO/LbZnj0ABuM4MA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHlq9rqb+q06kgDuMMTTH707eH7s0UuofLWVVPzxuRyFZEeGjx
	0m+jlNQWX4zymf6cYhyAE+retgsrIbblNdAaK0m5LicOn9RCVY3+gx+c
X-Gm-Gg: ATEYQzzAeoVa9mdORKZ5erEnA7Ch6Yw0R+UFXOFEmcwkyVegPWBMZSunPxIqv8jsqOo
	iXZKjgvQAYZVkCJTn0P2fp+xKtp/ac5f0xnzZOWKSPP8JJJaBVaml2XmtMDcq0VRVCWo5U2NJ9+
	2FmWAitJphqJWUGWp1C8v0PD/y+hDqUCtf8va68hbgq3rO3/Ceyb0OCms+aS6BWJFkPjoiVh8IZ
	qF/8fXRULHt0IRG4lma8TZiUJvxEiRytvQIBJuwzPNkb3Oj/PmvhuCMWO7F4cO2LLSOVjk8OoBO
	QWjt2DR+xL0tQFVJPXTjkJt9a2rs/q+YYzinpk5hNPS3ryDecF4qqcPckAEblk7naXQj+wggQ97
	pkiggX7VWbDE8XvZZqKx4EIWmxXNaNuFqSm2Ky1zlsmBHKah28suUbW1PLNz8lNc2bWCgy2LWNq
	OE3MlYxQTsP1xxl2wwTsTYIOdI+HTruOnpIVj2yA==
X-Received: by 2002:a05:6a00:883:b0:823:3079:7c7 with SMTP id d2e1a72fcca58-82cfb9011ecmr2049074b3a.29.1775109401437;
        Wed, 01 Apr 2026 22:56:41 -0700 (PDT)
Received: from localhost ([2401:4900:36c2:bd58:77d1:5e5f:850b:d2c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82cf9c41bc6sm1760623b3a.29.2026.04.01.22.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2026 22:56:41 -0700 (PDT)
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
Subject: [PATCH] ASoC: dt-bindings: rockchip: Convert rk3399-gru-sound to YAML
Date: Thu,  2 Apr 2026 11:26:35 +0530
Message-ID: <20260402055635.8798-1-anushkabadhe@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_225643_751185_0A878C01 
X-CRM114-Status: GOOD (  16.16  )
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

Convert the rockchip,rk3399-gru-sound.txt DT binding to YAML Schema.

During conversion, property rockchip,cpu was changed from phandle to
phandle-array to properly validate existing DTS usage.

Signed-off-by: Anushka Badhe <anushkabadhe@gmail.com>
---
This was the error reported by dtbs_check when rockchip,cpu was defined as phandle:

sound (rockchip,rk3399-gru-sound): rockchip,cpu:0: [211, 212] is too
long from schema $id:
http://devicetree.org/schemas/sound/rockchip,rk3399-gru-sound.yaml

This error was found when verifying against
rockchip/rk3399-gru-kevin.dtb

 .../sound/rockchip,rk3399-gru-sound.txt       | 22 ---------
 .../sound/rockchip,rk3399-gru-sound.yaml      | 47 +++++++++++++++++++
 2 files changed, 47 insertions(+), 22 deletions(-)
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
index 000000000000..10001fd2f886
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3399-gru-sound.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,rk3399-gru-sound.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ROCKCHIP with MAX98357A/RT5514/DA7219 codecs on GRU boards
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
+    description:
+      The phandle of the Rockchip I2S controller that's connected to the codecs
+
+  rockchip,codec:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: The phandle of the audio codecs
+
+  dmic-wakeup-delay-ms:
+    description:
+      specify delay time (ms) for DMIC ready.
+      If this option is specified, which means it's required dmic need
+      delay for DMIC to ready so that rt5514 can avoid recording before
+      DMIC sends valid data
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
+      rockchip,cpu = <&i2s0>;
+      rockchip,codec = <&max98357a &rt5514 &da7219>;
+      dmic-wakeup-delay-ms = <20>;
+    };
+
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
