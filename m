Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83890C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 01:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+JBmWuHW/n7hQXGenZFAUa9HLprCtRKfyBmOzWksMaQ=; b=LeFDhWJhRcKy0d
	I6AK8BYelwsD5eGvdaiD0MDpVQdG097aMRBLOmrKMCLkuwpWarPHYi3bPTbZkBCFyXsK9MJ+bXXXB
	lP99ZmANBIl8eIGEvxFsPLhkPDP2GSkVKXPKzhvf+pVhil02Mp8v8DIPlqtovbSfYtthFxgYgZUIR
	k1dNdcsusDpdhV6KdXK2YkJWQF+ln8/7tU3FM4QRWGWCxtGmWa9DPYUwJOehj5XmaBPdw+lfKgJ2u
	UrZpZ7XfY6ZHpXiQirMz8A7owSsQkMSS1410frMiILCB2dm92aksOWE5QMe+DZ7CpbxsQqB+Jx2on
	zUGnXuUEu9/3avNcl8iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA0Be-003Tlq-KW; Wed, 19 Jan 2022 01:54:58 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA0BP-003Ti0-8d; Wed, 19 Jan 2022 01:54:44 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 g1-20020a9d6481000000b00592d01f2b6eso1030386otl.5; 
 Tue, 18 Jan 2022 17:54:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qwNF7gDQbaVP4ndpQ6YMR5OTB3DEGyDODGB0cvvqRfI=;
 b=uEYedR7Ovzvu9hWciufYXXEtH85YpGYsrlYs7kEjbCbHhaBTf3w0uJVRqlwcp7KBFv
 dHO9Af9zoyrdW1Wj8BLYc95P/4EZxxe556JQZuK5JYsopbxeV/9X/5ClXoVAxDe+buMW
 kxVtNzRLI/uO4BGZTQ5ZDZVEA0LrYnpSj+0c49vCWDNr0MscUSvcR5/MY6apC9SnXTxR
 zW8Mj8m2vLRS6ZTYPyTBxyt4yVi2kmbTn1DbQV8uKO7oPbzFhIZ/BU+7mF1NfpVIoeEl
 GXng3XUJp3jgN22WsUV/eJu/Kb9QV/ZqMER1Dt+4GD2fdHMWujrpnNcH4ikJn393BPl9
 XeEA==
X-Gm-Message-State: AOAM532SN5ZFnWVHK7hSkHg64zkksB6yN/w5hTNf2Ncs5AijWcfJvuts
 675TGi6dqVFElZxazAQKUg==
X-Google-Smtp-Source: ABdhPJzVUKXAC2YcMFSv4hVv2ACgxjnkM4ifG2UCVa32kabvoUCd5Cz5lVIyctz4yYEGV/7yATw++g==
X-Received: by 2002:a9d:4b13:: with SMTP id q19mr22246546otf.300.1642557282257; 
 Tue, 18 Jan 2022 17:54:42 -0800 (PST)
Received: from xps15.herring.priv (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.googlemail.com with ESMTPSA id x26sm8030086ote.78.2022.01.18.17.54.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Jan 2022 17:54:41 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 - <patches@opensource.cirrus.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-gpio@vger.kernel.org,
 alsa-devel@alsa-project.org
Subject: [PATCH] dt-bindings: Drop unnecessary pinctrl properties
Date: Tue, 18 Jan 2022 19:53:25 -0600
Message-Id: <20220119015325.2438277-1-robh@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_175443_344605_EF5595B2 
X-CRM114-Status: GOOD (  12.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

For a single pinctrl mode, it is not necessary to define pinctrl
properties as the tools always allow pinctrl properties.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../display/rockchip/rockchip,rk3066-hdmi.yaml         |  8 --------
 Documentation/devicetree/bindings/input/gpio-keys.yaml |  6 ------
 .../devicetree/bindings/pinctrl/cirrus,lochnagar.yaml  |  9 ---------
 .../devicetree/bindings/pinctrl/cirrus,madera.yaml     | 10 ----------
 .../devicetree/bindings/sound/samsung-i2s.yaml         |  6 ------
 5 files changed, 39 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
index 008c144257cb..1a68a940d165 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
@@ -26,14 +26,6 @@ properties:
   clock-names:
     const: hclk
 
-  pinctrl-0:
-    maxItems: 2
-
-  pinctrl-names:
-    const: default
-    description:
-      Switch the iomux for the HPD/I2C pins to HDMI function.
-
   power-domains:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/input/gpio-keys.yaml b/Documentation/devicetree/bindings/input/gpio-keys.yaml
index dbe7ecc19ccb..7fe1966ea28a 100644
--- a/Documentation/devicetree/bindings/input/gpio-keys.yaml
+++ b/Documentation/devicetree/bindings/input/gpio-keys.yaml
@@ -88,12 +88,6 @@ patternProperties:
             which can be disabled to suppress events from the button.
           type: boolean
 
-        pinctrl-0:
-          maxItems: 1
-
-        pinctrl-names:
-          maxItems: 1
-
       required:
         - linux,code
 
diff --git a/Documentation/devicetree/bindings/pinctrl/cirrus,lochnagar.yaml b/Documentation/devicetree/bindings/pinctrl/cirrus,lochnagar.yaml
index 80020539c3bb..5cd512b7d5ba 100644
--- a/Documentation/devicetree/bindings/pinctrl/cirrus,lochnagar.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/cirrus,lochnagar.yaml
@@ -51,15 +51,6 @@ properties:
       appropriate of the LOCHNAGARx_PIN_NUM_GPIOS define, see [3].
     maxItems: 1
 
-  pinctrl-0:
-    description:
-      A phandle to the default pinctrl state.
-
-  pinctrl-names:
-    description:
-      A pinctrl state named "default" must be defined.
-    const: default
-
   pin-settings:
     type: object
     patternProperties:
diff --git a/Documentation/devicetree/bindings/pinctrl/cirrus,madera.yaml b/Documentation/devicetree/bindings/pinctrl/cirrus,madera.yaml
index e50d7ad5c229..c85f759ae5a3 100644
--- a/Documentation/devicetree/bindings/pinctrl/cirrus,madera.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/cirrus,madera.yaml
@@ -30,16 +30,6 @@ description: |
     Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
 
 properties:
-  pinctrl-0:
-    description:
-      A phandle to the node containing the subnodes containing default
-      configurations.
-
-  pinctrl-names:
-    description:
-      A pinctrl state named "default" must be defined.
-    const: default
-
   pin-settings:
     description:
       One subnode is required to contain the default settings. It
diff --git a/Documentation/devicetree/bindings/sound/samsung-i2s.yaml b/Documentation/devicetree/bindings/sound/samsung-i2s.yaml
index 2e3628ef48df..84c4d6cba521 100644
--- a/Documentation/devicetree/bindings/sound/samsung-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/samsung-i2s.yaml
@@ -110,12 +110,6 @@ properties:
       Internal DMA register base address of the audio
       subsystem (used in secondary sound source).
 
-  pinctrl-0:
-    description: Should specify pin control groups used for this controller.
-
-  pinctrl-names:
-    const: default
-
   power-domains:
     maxItems: 1
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
